package com.stormcolor.coptercontrol;

import java.util.HashMap;
import java.util.Iterator;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import android.opengl.GLSurfaceView;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;

public class MainActivity extends Activity {

	CopterControl app;

	// USB
	public TextView text_usbInfo;
	private static final String ACTION_USB_PERMISSION =	"com.stormcolor.coptercontrol.USB_PERMISSION";
	private UsbDevice device;
	private UsbManager mUsbManager;
	private UsbInterface intf;
	private UsbDeviceConnection connection;
	private PendingIntent mUsbPermissionIntent = null;


	private final BroadcastReceiver mUsbReceiver = new BroadcastReceiver() {
		@Override
		public void onReceive(Context context, Intent intent) {
			String action = intent.getAction();

			if (ACTION_USB_PERMISSION.equals(action)) {
				// Permission requested
				synchronized (this) {
					device = (UsbDevice)intent.getParcelableExtra(UsbManager.EXTRA_DEVICE);
					if (intent.getBooleanExtra(UsbManager.EXTRA_PERMISSION_GRANTED, false)) {
						if(device != null) {
							initializeUSB();
						}
					} else {
						// User has denied permission
					}
				}
			}
		}
	};

	private final BroadcastReceiver mUsbDeviceReceiver = new BroadcastReceiver() {
		@Override
		public void onReceive(Context context, Intent intent) {
			String action = intent.getAction();

			if(UsbManager.ACTION_USB_DEVICE_ATTACHED.equals(action)) {
				device = (UsbDevice)intent.getParcelableExtra(UsbManager.EXTRA_DEVICE);

				if((device.getVendorId() == (int)0x04D8) && (device.getProductId() == (int)0x003F)) {

					mUsbManager.requestPermission(device, mUsbPermissionIntent);
				}
			} else if(UsbManager.ACTION_USB_DEVICE_DETACHED.equals(action)) {

			}
		}
	};

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		app = new CopterControl(this);
		app.setEGLContextClientVersion(2);
		app.setRenderer(app);
		app.setRenderMode(GLSurfaceView.RENDERMODE_WHEN_DIRTY);
		setContentView(app);

		LayoutInflater inflater = getLayoutInflater();
		getWindow().addContentView(inflater.inflate(R.layout.activity_main, null), new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

		/*TextView txtFileName = (TextView)findViewById(R.id.textView1);
		// To get names of all files inside the "Files" folder
        try {
            String[] files = assetManager.list("data");

            for(int i=0; i<files.length; i++) {
            	txtFileName.append("\n File :"+i+" Name => "+files[i]);
            }
        } catch (IOException e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
        }*/


		text_usbInfo = (TextView)findViewById(R.id.text_usbInfo);
		mUsbManager = (UsbManager) getSystemService(Context.USB_SERVICE);

		//register the broadcast receiver
		mUsbPermissionIntent = PendingIntent.getBroadcast(this, 0, new Intent(ACTION_USB_PERMISSION), 0);
		IntentFilter filter = new IntentFilter(ACTION_USB_PERMISSION);
		registerReceiver(mUsbReceiver, filter);

		registerReceiver(mUsbDeviceReceiver, new IntentFilter(UsbManager.ACTION_USB_DEVICE_ATTACHED));
		registerReceiver(mUsbDeviceReceiver, new IntentFilter(UsbManager.ACTION_USB_DEVICE_DETACHED));


		checkDeviceInfo();
	}

	private void checkDeviceInfo() {
		device = null;

		HashMap<String, UsbDevice> deviceList = mUsbManager.getDeviceList();
		Iterator<UsbDevice> deviceIterator = deviceList.values().iterator();
		while(deviceIterator.hasNext()) {
			UsbDevice dev = deviceIterator.next();

			if((dev.getVendorId() == (int)0x04D8) && (dev.getProductId() == (int)0x003F)) {
				device = dev;
			}
		}

		if(device != null){
			if(mUsbManager.hasPermission(device)){
				initializeUSB();
			}else{
				mUsbManager.requestPermission(device, mUsbPermissionIntent);
			}
		}
	}

	private void initializeUSB() {
		System.out.println(device.getDeviceName());
		System.out.println(device.getVendorId()); // 04d8 is hex. 1240 in decimal
		System.out.println(device.getProductId()); // 003f is hex. 63 in decimal
		text_usbInfo.setText(text_usbInfo.getText() + "\r\n" +
				"DeviceName: " + device.getDeviceName() + "\r\n" +
				"VendorId: " + device.getVendorId() + "\r\n" +
				"ProductId: "+device.getProductId());


		intf = device.getInterface(0);
		connection = mUsbManager.openDevice(device);
		if(connection == null)
			return;

		if(connection.claimInterface(intf, true) == true) {
			UsbEndpoint endpointOUT = null;
			UsbEndpoint endpointIN = null;

			for(int n=0; n < intf.getEndpointCount(); n++) {
				UsbEndpoint currentEndpoint = intf.getEndpoint(n);

				if(currentEndpoint.getDirection() == android.hardware.usb.UsbConstants.USB_DIR_OUT) {
					endpointOUT = currentEndpoint;
				} else {
					endpointIN = currentEndpoint;
				}
			}

			if((endpointOUT == null) || (endpointIN == null)) {
				System.out.println("No endpoint found");
				return;
			}

			app.setUsbConfig(connection, endpointOUT);
		} else {
			connection.close();
		}
	}

	@Override
	public void onResume() {
		super.onResume();		
		app.onResume();
		

		// Check to see if it was a USB device attach that caused the app to
    	// start or if the user opened the program manually.
    	Intent intent = getIntent();
        String action = intent.getAction();
	}

	@Override
	public void onPause() {
		/* unregister any receivers that we have */
    	unregisterReceiver(mUsbReceiver);
    	
		super.onPause();		
		app.onPause();
	}
}
