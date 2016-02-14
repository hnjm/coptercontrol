package com.stormcolor.scej;

public class NodeLightDirectional extends NodeTarget {
	
	public boolean shadows = false;
	
	public NodeLightDirectional() {
		super();
		nodeTargetType = 1; // type NodeLightDirectional
		
		projection.proy = 2;		
		projection.updateProjectionMatrix();
		
		glScreenBuffers.updateGLScreenBuffers();
	}
	
	@Override
	public void init(SCEJ scej) {
		super.init(scej);
	}
		
}
