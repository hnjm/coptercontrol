package com.stormcolor.scej;

public class NodeCamera extends NodeTarget {
	
	public CameraController cameraController;
	 
	public NodeCamera() {
		super();	
		nodeTargetType = 0; // type NodeCamera
		
		projection.updateProjectionMatrix();
		
		glScreenBuffers.updateGLScreenBuffers();
	}
	
	@Override
	public void init(SCEJ scej) {
		super.init(scej);
	}
	
	public void setController(CameraController cameraController) {
		this.cameraController = cameraController;
		cameraController.nodeCamera = this;
	}
}
