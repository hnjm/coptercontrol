package com.stormcolor.coptercontrol;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;

import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import javax.vecmath.Vector3f;

import java.nio.charset.StandardCharsets;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbManager;
import android.hardware.usb.UsbEndpoint;
import android.opengl.GLSurfaceView;
import android.os.Parcelable;
import android.view.MotionEvent;
import android.widget.TextView;

import com.stormcolor.scej.Body;
import com.stormcolor.scej.Body_Box;
import com.stormcolor.scej.Body_Sphere;
import com.stormcolor.scej.ControllerFollowNode;
import com.stormcolor.scej.GLBuffer;
import com.stormcolor.scej.Mesh;
import com.stormcolor.scej.Node;
import com.stormcolor.scej.NodeCamera;
import com.stormcolor.scej.NodeLightDirectional;
import com.stormcolor.scej.Physics;
import com.stormcolor.scej.SCEJ;
import com.stormcolor.scej.ShaderMaterial_Default;
import com.stormcolor.scej.Utils;

public class CopterControl extends GLSurfaceView implements GLSurfaceView.Renderer, SensorEventListener {
	private TextView text_rotInfo;


	private SensorManager mSensorManager;	
	
	private final float TOUCH_SCALE_FACTOR = 180.0f / 320;
    private float mPreviousX;
    private float mPreviousY;
    
    
	private Context context;
	private GLSurfaceView sv;
    
    public SCEJ scej;  
	private Node nodeA;
	private Node nodeT;


	private byte[] TxData = new byte[64];
	int result = 0;
	
	private UsbEndpoint _endpointOUT = null;
	private UsbDeviceConnection _connection;

    public CopterControl(Context context) {
    	super(context);
    	this.context = context;

    	mSensorManager = (SensorManager)context.getSystemService(Context.SENSOR_SERVICE);
    }
    
    public Bitmap getBitmapFromAssets(String file) {
        AssetManager assetManager = context.getAssets();

        Bitmap bitmap = null;
        InputStream input;
        try {
        	input = assetManager.open(file);
        	bitmap = BitmapFactory.decodeStream(input);
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        return bitmap;
    }
    
	public void onSurfaceCreated(GL10 unused, EGLConfig config) {
		scej = new SCEJ();
		
		int id = context.getResources().getIdentifier("drawable/ic_launcher", null, context.getPackageName());		
		final BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = false;   // No pre-scaling
		Bitmap bmp = BitmapFactory.decodeResource(context.getResources(), id, options);

		// Physics
		Physics physics = new Physics();
		physics.world.setGravity(new Vector3f(0f, -10f, 0f));
		//scej.setPhysics(physics);
		
		
		// Camera
		NodeCamera nodeCamera = new NodeCamera();
		scej.add(nodeCamera);
		nodeCamera.position(new Vector3f(0f, 5f, -15f));
		nodeCamera.positionTarget(new Vector3f(0f, 0f, 0f));
		
	    		
		
		// Light
		NodeLightDirectional nodeLightDirectional = new NodeLightDirectional();
		scej.add(nodeLightDirectional);
		nodeLightDirectional.shadows = true;
		nodeLightDirectional.projection.setOrthoZoom(15f);
		nodeLightDirectional.projection.setResolution(512, 512);
		nodeLightDirectional.position(new Vector3f(-50f, 100f, -50f));
		nodeLightDirectional.positionTarget(new Vector3f(0f, 0f, 0f));
		
				
		
		// Scene
		ShaderMaterial_Default shaderNode1 = new ShaderMaterial_Default();
		shaderNode1._color = new float[]{0f,1f,0f,0f};
		new Utils().loadSampler(getBitmapFromAssets("data/compass.png"), shaderNode1._albedo);
		shaderNode1._useAlbedo = 1;
		
		Mesh meshGround = new Mesh().loadBox(new Vector3f(100f, 1f, 100f));
		GLBuffer bObjectGround = new GLBuffer(meshGround.vertexArray.get(0), meshGround.normalArray.get(0), meshGround.textureArray.get(0), null, meshGround.indexArray.get(0));
		
		Body body = new Body_Box(new Vector3f(100f, 1f, 100f) , 0.0f, 0.5f, 0.5f);
		
		Node node = new Node();
		scej.add(node);
		node.addBuffer(bObjectGround);
		node.setShaderMaterial(shaderNode1);	
		node.shadows = true;
		node.position(new Vector3f(0f,-1f,0f));		
		node.setBody(body);
		
		
		ShaderMaterial_Default shaderNode2 = new ShaderMaterial_Default();
		shaderNode2._color = new float[]{1f,0f,0f,0f};
		new Utils().loadSampler(bmp, shaderNode2._albedo);
		shaderNode2._useAlbedo = 0;
		
		Mesh mesh = new Mesh().loadBox(null);
		GLBuffer bObject = new GLBuffer(mesh.vertexArray.get(0), mesh.normalArray.get(0), mesh.textureArray.get(0), null, mesh.indexArray.get(0));
		
		Body bodyb = new Body_Sphere(1.0f, 1.0f, 0.5f, 0.5f);
		
		nodeA = new Node();
		scej.add(nodeA);
		nodeA.addBuffer(bObject); 		
		nodeA.setShaderMaterial(shaderNode2);	
		nodeA.shadows = true;
		nodeA.dynamicShadows = true;
		nodeA.position(new Vector3f(0f,0.5f,0f));		
		nodeA.setBody(bodyb);
		

		
		
		
		Mesh meshFBX = new Mesh().loadFBX(context, "data/drone.FBX");
		GLBuffer bObjectFBX = new GLBuffer(meshFBX.vertexArray.get(0), meshFBX.normalArray.get(0), meshFBX.textureArray.get(0), null, meshFBX.indexArray.get(0));
		
		nodeT = new Node();
		scej.add(nodeT);
		nodeT.addBuffer(bObjectFBX); 	
		new Utils().loadSampler(getBitmapFromAssets("data/UV.jpg"), nodeT.shaderMaterial._albedo);
		nodeT.shaderMaterial._useAlbedo = 1;
		nodeT.shaderMaterial.scale = 1.0f;
		nodeT.shaderDepth.scale = 1.0f;
		nodeT.shadows = true;
		nodeT.dynamicShadows = true;
		nodeT.position(new Vector3f(0f,6.5f,0f));
		//nodeT.setBody(bodyb);

		ControllerFollowNode camController = new ControllerFollowNode(nodeT);
		camController.distance = 25;
		camController.elevation = 20;
		nodeCamera.setController(camController);

		bmp.recycle();
	}

	@Override
	public void onDrawFrame(GL10 gl) {
		requestRender();

		// SCEJ tick
		scej.update();
	}

	public void setRotInfo(TextView textView) {
		text_rotInfo = textView;
	}

	public void setUsbConfig(UsbDeviceConnection connection, UsbEndpoint endpointOUT) {
		_connection = connection;
		_endpointOUT = endpointOUT;
	}

	private static String byteArrayToHex(byte[] a) {
		StringBuilder sb = new StringBuilder(a.length * 2);
		for(byte b: a)
			sb.append(String.format("%02x", b & 0xff));
		return sb.toString();
	}

	public void setLed() {
		TxData[0] = (byte) 128; // 0x80 (128) toggle led
		for(int i=1;i<64;i++)
			TxData[i] = (byte) 255;

		if(_endpointOUT != null)
			result = _connection.bulkTransfer(_endpointOUT, TxData, TxData.length, 100);

		//System.out.println(byteArrayToHex(TxData));
	}

	public void sendRotation(Double front, Double back, Double left, Double right) {
		TxData[0] = ((Integer) 84).byteValue(); // 0x54 (84) pwm
		TxData[1] = front.byteValue();
		TxData[2] = back.byteValue();
		TxData[3] = left.byteValue();
		TxData[4] = right.byteValue();
		for(int i=5;i<64;i++)
			TxData[i] = (byte) 255;

		if(_endpointOUT != null)
			result = _connection.bulkTransfer(_endpointOUT, TxData, TxData.length, 100);

		//System.out.println(byteArrayToHex(TxData));
	}

	@Override
	public void onSurfaceChanged(GL10 gl, int width, int height) {
		scej.setViewportSize(width, height);        
	}	
	
	public void onResume() {
		mSensorManager.registerListener(this,
                mSensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER),
                SensorManager.SENSOR_DELAY_NORMAL);
		
		mSensorManager.registerListener(this,
                mSensorManager.getDefaultSensor(Sensor.TYPE_LINEAR_ACCELERATION),
                SensorManager.SENSOR_DELAY_NORMAL);
 
        mSensorManager.registerListener(this,
                mSensorManager.getDefaultSensor(Sensor.TYPE_ROTATION_VECTOR),
                SensorManager.SENSOR_DELAY_FASTEST);
                 
        mSensorManager.registerListener(this,
                mSensorManager.getDefaultSensor(Sensor.TYPE_GRAVITY),
                SensorManager.SENSOR_DELAY_NORMAL); 
	}
	
	public void onPause() {
		mSensorManager.unregisterListener(this,
                mSensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER));
		mSensorManager.unregisterListener(this,
                mSensorManager.getDefaultSensor(Sensor.TYPE_LINEAR_ACCELERATION));
		mSensorManager.unregisterListener(this,
                mSensorManager.getDefaultSensor(Sensor.TYPE_ROTATION_VECTOR));
		mSensorManager.unregisterListener(this,
                mSensorManager.getDefaultSensor(Sensor.TYPE_GRAVITY));
	}
	
	@Override
    public boolean onTouchEvent(MotionEvent e) {
    	// MotionEvent reports input details from the touch screen
        // and other input controls. In this case, you are only
        // interested in events where the touch position changed.

		setLed();

        float x = e.getX();
        float y = e.getY();

        switch (e.getAction()) {
            case MotionEvent.ACTION_MOVE:

                float dx = x - mPreviousX;
                float dy = y - mPreviousY;

                // reverse direction of rotation above the mid-line
                if (y > getHeight() / 2) {
                    dx = dx * -1 ;
                }

                // reverse direction of rotation to left of the mid-line
                if (x < getWidth() / 2) {
                    dy = dy * -1 ;
                }

                //scej.arrayNodeCameras.get(0).rotateX(dx * TOUCH_SCALE_FACTOR);  // = 180.0f / 320
                //scej.arrayNodeCameras.get(0).rotateY(dy * TOUCH_SCALE_FACTOR);  // = 180.0f / 320 
                //requestRender();
        }

        mPreviousX = x;
        mPreviousY = y;
        return true;
    }
	
	@Override
	public void onSensorChanged(SensorEvent event) {
        synchronized(this) { 
        	if(event.sensor.getType() == Sensor.TYPE_ACCELEROMETER) {                
                //if(nodeA != null && nodeA.body != null) 
                	//nodeA.body.rigidBody.applyCentralForce(new Vector3f(event.values[0]*-1.f, event.values[2]*-1f, event.values[1]));
        	}
        	if(event.sensor.getType() == Sensor.TYPE_LINEAR_ACCELERATION) {                
                
        	}
        	if(event.sensor.getType() == Sensor.TYPE_ROTATION_VECTOR) {                
        		if(nodeT != null) {
        			float[] m = new float[16];
        			SensorManager.getRotationMatrixFromVector(m, new float[]{event.values[0] * -1f, event.values[2], event.values[1]});


					// SCEJ sets
        			nodeT.setRotationMatrix(m);


					// UI sets
					// FRONT (0.0 | 0.5...) - BACK (0.0 | -0.5...) // only 90º
					String FB = "X (F-B): " + new Float(event.values[1]).toString() + "\r\n";
					// LEFT (0.0 | 0.5...) - RIGHT (0.0 | -0.5...) // only 90º
					String LR = "Z (L-R): " + new Float(event.values[0]).toString() + "\r\n";
					text_rotInfo.setText(FB+LR);


					// USB sets
					// 0.0 in -90º; 0.5 in 0º; 1.0 in 90º
					Double numX, front, back, numZ, left, right;

					numX = Math.min(0.5, Math.max(0.0, Math.abs(event.values[1])))+0.5; // 0.0 to 1.0
					if(event.values[1] < 0.0) // front
						numX *= -1.0;

					numZ = Math.min(0.5, Math.max(0.0, Math.abs(event.values[0])))+0.5; // 0.0 to 1.0
					if(event.values[0] >= 0.0) // left
						numZ *= -1.0;

					front = (1.0-numX)*255.0;
					back = (numX)*255.0;
					left = (1.0-numZ)*255.0;
					right = (numZ)*255.0;


					sendRotation(front, back, left, right);
        		}
        	}
        	if(event.sensor.getType() == Sensor.TYPE_GRAVITY) {
        		// event.values[0], event.values[1], event.values[2];
        	}
        }
	}

	@Override
	public void onAccuracyChanged(Sensor sensor, int accuracy) {
		// TODO Auto-generated method stub
		
	}
	
	
}
