package com.stormcolor.scej;

import android.opengl.Matrix;

public class Projection {
	
	public NodeTarget nodeTarget;
	
	public int width = 512;	
	public int height = 512;
	
	public float[] mProjectionMatrix = new float[]{	1f,0f,0f,0f,
													0f,1f,0f,0f,
													0f,0f,1f,0f,
													0f,0f,0f,1f};
	public int proy = 1; // projection type 1=perspective 2=ortho
	public float fov = 45f;
	public float fovOrtho = 20f;
	
	public float near = 0.1f;
	public float far = 200f;
	
	public Projection() {

	}
	
	public void updateProjectionMatrix() {		
		float fovy = (proy == 1) ? fov : fovOrtho;
		float aspect = (float) width / height;
		
		if(proy == 1) Matrix.perspectiveM(mProjectionMatrix, 0, fovy, aspect, near, far);
		else Matrix.orthoM(mProjectionMatrix, 0, -aspect*fovy, aspect*fovy, -fovy, fovy, near, far);
	}
	
	public void setProjection(int projection) {
		this.proy = projection;
		updateProjectionMatrix();
	}
	
	public void setResolution(int width, int height) {
		this.width = width;
		this.height = height;
		updateProjectionMatrix();
		
		nodeTarget.glScreenBuffers.updateGLScreenBuffers();
	}
	
	public void setPerspectiveFov(float fov) {
		this.fov = fov;
		updateProjectionMatrix();
	}
	
	public void setOrthoZoom(float zoom) {
		this.fovOrtho = zoom;
		updateProjectionMatrix();
	}
	
	public void setNear(float near) {
		this.near = near;
		updateProjectionMatrix();
	}
	
	public void setFar(float far) {
		this.far = far;
		updateProjectionMatrix();
	}
}
