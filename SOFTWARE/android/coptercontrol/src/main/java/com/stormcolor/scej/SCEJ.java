/*
 * Copyright (C) 2014 StormColor. Roberto Gonzalez Dominguez
 */
package com.stormcolor.scej;

import java.util.ArrayList;
import java.util.List;

import android.graphics.Bitmap;
import android.opengl.GLES20;

public class SCEJ {
	public List<Node> arrayNodes = new ArrayList<Node>();
	public List<NodeCamera> arrayNodeCameras = new ArrayList<NodeCamera>();
	public List<NodeLightDirectional> arrayNodeLightsDirectional = new ArrayList<NodeLightDirectional>();
	public int screenWidth;
	public int screenHeight;
	public int activeCamera = 0;
	
	public Physics physics;
	public ShaderMaterial_Default shaderMaterial;
	public ShaderMaterial_Depth shaderDepth = new ShaderMaterial_Depth();
	public boolean updateTextureLightDepth = true;
	
    public SCEJ() {
    	shaderMaterial = new ShaderMaterial_Default();
    	// for a type ARGB_4444 then (a << 24) | (r << 16) | (g << 8) | b
    	int[] arrayColor = new int[]{ 	((255 << 24) | (255 << 16) | (0 << 8) | 0), ((255 << 24) | (255 << 16) | (0 << 8) | 0),
    									((255 << 24) | (255 << 16) | (0 << 8) | 0), ((255 << 24) | (255 << 16) | (0 << 8) | 0)}; 
    	int w = 2;
    	int h = 2;
    	Bitmap bmp = Bitmap.createBitmap(arrayColor, w, h, Bitmap.Config.ARGB_4444);
		new Utils().loadSampler(bmp, shaderMaterial._albedo);
		shaderMaterial._useAlbedo = 0;
		
	    GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);		
	    //GLES20.glEnable(GLES20.GL_CULL_FACE);
	    GLES20.glClearDepthf(1.0f);
        GLES20.glEnable(GLES20.GL_DEPTH_TEST);
    	GLES20.glDepthFunc(GLES20.GL_LEQUAL);
    }    
    
    public void add(Node node) {
    	node.init(this);  
    	arrayNodes.add(node);
    }
    
    public void add(NodeCamera nodeCamera) {
    	nodeCamera.init(this);    	
    	arrayNodeCameras.add(nodeCamera);
    }
    
    public void add(NodeLightDirectional nodeLight) {
    	nodeLight.init(this);
    	arrayNodeLightsDirectional.add(nodeLight);
    }
    
    public void setPhysics(Physics physics) {
    	this.physics = physics;
    }
    
    public void update() {
    	// Physics
    	if(physics != null) {
    		physics.update();
    		for(Node node : arrayNodes) { 
            	if(node.body != null) node.body.update(node);
        	}
    	}
    	
    	// Camera
		NodeCamera nodeCamera = arrayNodeCameras.get(activeCamera);
		if(nodeCamera.cameraController != null) nodeCamera.cameraController.update();
		if(nodeCamera.performMatrix) {
			nodeCamera.performMatrix = false;
			nodeCamera.performMatrixNow();
		}
        
		// Directional light
		/*for(NodeLightDirectional nodeLightDirectional : arrayNodeLightsDirectional) { 
			//if(nodeLightDirectional.performMatrix) {
				nodeLightDirectional.performMatrix = false;
				nodeLightDirectional.performMatrixNow();
				
				// Directional light shadows
				//if(nodeLightDirectional.shadows) { 
					GLES20.glViewport(0, 0, nodeCamera.width, nodeCamera.height);
					GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER, 0);
		        	
		        	GLES20.glClear(GLES20.GL_COLOR_BUFFER_BIT | GLES20.GL_DEPTH_BUFFER_BIT);
		        	
					for(Node node : arrayNodes) {
			        	GLES20.glUseProgram(node.shaderDepth.mProgram);
			        	node.shaderDepth.preDraw(node, nodeLightDirectional);
			        	node.shaderDepth.draw(node, nodeLightDirectional);
			    	}
				//}
			//}
		}*/ 
		for(NodeLightDirectional nodeLightDirectional : arrayNodeLightsDirectional) { 
			if(nodeLightDirectional.performMatrix) {
				nodeLightDirectional.performMatrix = false;
				nodeLightDirectional.performMatrixNow();
			}
			// Directional light shadows
			if(nodeLightDirectional.shadows && updateTextureLightDepth) { 
				updateTextureLightDepth = false;
				GLES20.glViewport(0, 0, nodeLightDirectional.projection.width, nodeLightDirectional.projection.height);
	        	GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER, nodeLightDirectional.glScreenBuffers.fBufferId);
	        	GLES20.glFramebufferTexture2D(GLES20.GL_FRAMEBUFFER, GLES20.GL_COLOR_ATTACHMENT0, GLES20.GL_TEXTURE_2D, nodeLightDirectional.glScreenBuffers.textureFBId, 0);
	        	
	        	GLES20.glClear(GLES20.GL_COLOR_BUFFER_BIT | GLES20.GL_DEPTH_BUFFER_BIT);
	        	
				for(Node node : arrayNodes) {
					if(node.shadows) {
			        	GLES20.glUseProgram(node.shaderDepth.mProgram);
			        	node.shaderDepth.draw(node, nodeLightDirectional);
					}
		    	}
			}
		}
		
		// shaderMaterial
		GLES20.glViewport(0, 0, nodeCamera.projection.width, nodeCamera.projection.height);
		GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER, 0);
		
		GLES20.glClear(GLES20.GL_COLOR_BUFFER_BIT | GLES20.GL_DEPTH_BUFFER_BIT);
		
        for(Node node : arrayNodes) {
        	GLES20.glUseProgram(node.shaderMaterial.mProgram);
        	node.shaderMaterial.draw(node, nodeCamera);
    	}
    }    
    
    public void setViewportSize(int width, int height) {
    	screenWidth = width;
    	screenHeight = height;    	
    	
    	for(NodeCamera nodeCamera : arrayNodeCameras) {
    		nodeCamera.projection.width = screenWidth;
    		nodeCamera.projection.height = screenHeight;
    		nodeCamera.projection.updateProjectionMatrix();
    		nodeCamera.glScreenBuffers.updateGLScreenBuffers();
    	}
    }
      
}
