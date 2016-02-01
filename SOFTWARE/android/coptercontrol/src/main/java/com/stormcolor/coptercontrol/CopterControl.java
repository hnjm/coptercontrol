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

	private SensorManager mSensorManager;	
	
	private final float TOUCH_SCALE_FACTOR = 180.0f / 320;
    private float mPreviousX;
    private float mPreviousY;
    
    
	private Context context;
	private GLSurfaceView sv;
    
    
    public SCEJ scej;  
	private Node nodeA;


	private byte[] TxData = new byte[1];
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
		nodeLightDirectional.projection.setOrthoZoom(5f);
		nodeLightDirectional.projection.setResolution(512, 512);
		nodeLightDirectional.position(new Vector3f(-50f, 100f, -50f));
		nodeLightDirectional.positionTarget(new Vector3f(0f, 0f, 0f));
		
				
		
		// Scene
		ShaderMaterial_Default shaderNode1 = new ShaderMaterial_Default();
		shaderNode1._color = new float[]{0f,1f,0f,0f};
		new Utils().loadSampler(bmp, shaderNode1._albedo);
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
		
		ControllerFollowNode camController = new ControllerFollowNode(nodeA);
		camController.distance = 15;
		camController.elevation = 5;
		nodeCamera.setController(camController);
		
		
		
		Mesh meshFBX = new Mesh().loadFBX(context, "data/2.FBX");
		GLBuffer bObjectFBX = new GLBuffer(meshFBX.vertexArray.get(0), meshFBX.normalArray.get(0), meshFBX.textureArray.get(0), null, meshFBX.indexArray.get(0));
		
		Node nodeT = new Node();
		scej.add(nodeT);
		nodeT.addBuffer(bObjectFBX); 	
		new Utils().loadSampler(getBitmapFromAssets("data/UV.jpg"), nodeT.shaderMaterial._albedo);
		nodeT.shaderMaterial._useAlbedo = 1;
		nodeT.shadows = true;
		nodeT.dynamicShadows = true;
		nodeT.position(new Vector3f(0f,2.1f,0f));	
		//nodeT.setBody(bodyb);
		
		bmp.recycle();
	}

	@Override
	public void onDrawFrame(GL10 gl) {
		requestRender();
		scej.update();

		if(TxData.length > 1) {
			System.out.println("- "+byteArrayToHex(TxData));

			if(_endpointOUT != null) {
				result = _connection.bulkTransfer(_endpointOUT, TxData, TxData.length, 100);
			} else {
				System.out.println("No endpoint");
			}

			TxData = new byte[1];
		}
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
		TxData = new byte[64];
		TxData[0] = (byte) 128;					//The first byte is the "Report ID" and does not get sent over the USB bus.  Always set = 0.
		for(int i=1;i<64;i++) {
			TxData[i] = (byte) 255;
		}

		System.out.println(byteArrayToHex(TxData));
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
        		if(nodeA != null) {
        			float[] m = new float[16];
        			SensorManager.getRotationMatrixFromVector(m, new float[]{event.values[0]*-1f, event.values[2], event.values[1]});
        			nodeA.setRotationMatrix(m);
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
