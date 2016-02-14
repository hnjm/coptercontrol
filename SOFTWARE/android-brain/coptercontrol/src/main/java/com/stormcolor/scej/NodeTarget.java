package com.stormcolor.scej;

import javax.vecmath.Vector3f;

import android.opengl.Matrix;

public class NodeTarget {
	
	public SCEJ scej;
	
	public int nodeTargetType;
	
	public Projection projection = new Projection();
	public GLScreenBuffers glScreenBuffers = new GLScreenBuffers();
	
	public float[] mModelMatrix = new float[]{	1f,0f,0f,0f,
												0f,1f,0f,0f,
												0f,0f,1f,0f,
												0f,0f,0f,1f};
	private Vector3f position = new Vector3f(0f, 1f, -1f);
	private Vector3f positionTarget = new Vector3f(0f, 1f, 0f);
	public boolean performMatrix = true;
	
	public NodeTarget() {
		projection.nodeTarget = this;
		
		glScreenBuffers.nodeTarget = this;
		glScreenBuffers.createGLScreenBuffers();
	}
	
	public void init(SCEJ scej) {
		this.scej = scej;
		performMatrixNow();
	}	
	
	public void position(Vector3f position) {
		this.position = position;
		performMatrix = true;
		if(nodeTargetType == 1) scej.updateTextureLightDepth = true;
	}
	
	public Vector3f position() {
		return position;
	}
	
	public void positionTarget(Vector3f positionTarget) {
		this.positionTarget = positionTarget;
		performMatrix = true;
		if(nodeTargetType == 1) scej.updateTextureLightDepth = true;
	}
	
	public Vector3f positionTarget() {
		return positionTarget;
	}
	
	public void performMatrixNow() {
		Matrix.setLookAtM(mModelMatrix, 0,
				position.x, position.y, position.z,
				positionTarget.x, positionTarget.y, positionTarget.z,
    			0f, 1f, 0f);
	}
	
	public void rotateY(float angle) {
		Vector3f dir = new Vector3f(positionTarget);
		dir.sub(position);
		
		Vector3f sphericalCoords = new Utils().cartesianToSpherical(dir);
		float lng = sphericalCoords.z+angle; 
		Vector3f cartesianCoords = new Utils().sphericalToCartesian(new Vector3f(sphericalCoords.x, sphericalCoords.y, lng));
		
		Vector3f v = new Vector3f(position);
		v.add(cartesianCoords);
		positionTarget(v);
	}
	
	public void rotateX(float angle) {
		Vector3f dir = new Vector3f(positionTarget);
		dir.sub(position);
		
		Vector3f sphericalCoords = new Utils().cartesianToSpherical(dir);
		float lat = sphericalCoords.y+angle; 
		Vector3f cartesianCoords = new Utils().sphericalToCartesian(new Vector3f(sphericalCoords.x, lat, sphericalCoords.z));
		
		Vector3f v = new Vector3f(position);
		v.add(cartesianCoords);
		positionTarget(v);
	}
}
