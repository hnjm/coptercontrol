package com.stormcolor.scej;

import java.util.ArrayList;
import java.util.List;

import javax.vecmath.Vector3f;

public class Node {
	
	public SCEJ scej;
	
	public List<GLBuffer> arrayGLBuffers;
	public ShaderMaterial_Default shaderMaterial;
	public ShaderMaterial_Depth shaderDepth;	
	public Body body;
	
	public boolean shadows = false;
	public boolean dynamicShadows = false;
	
	public float[] mModelMatrix_Position = new float[]{	1f,0f,0f,0f,
														0f,1f,0f,0f,
														0f,0f,1f,0f,
														0f,0f,0f,1f};
	public float[] mModelMatrix_Rotation = new float[]{	1f,0f,0f,0f,
														0f,1f,0f,0f,
														0f,0f,1f,0f,
														0f,0f,0f,1f};
	public float rotX = 0f;
	public float rotY = 0f;
	public float rotZ = 0f;
	
	public Node() {
		arrayGLBuffers = new ArrayList<GLBuffer>();
	}
	
	public void init(SCEJ scej) {
		this.scej = scej;
		shaderMaterial = this.scej.shaderMaterial;
		shaderDepth = this.scej.shaderDepth;
	}
	
	public void setRotationMatrix(float[] m) {
		mModelMatrix_Rotation = m;
		
		if(dynamicShadows) scej.updateTextureLightDepth = true;
	}
	
	public void position(Vector3f position) {
		mModelMatrix_Position[3] = position.x;
		mModelMatrix_Position[7] = position.y;
		mModelMatrix_Position[11] = position.z;
		
		if(dynamicShadows) scej.updateTextureLightDepth = true;
	}
	
	public Vector3f position() {
		return new Vector3f(mModelMatrix_Position[3], mModelMatrix_Position[7], mModelMatrix_Position[11]);
	}
	
	public void addBuffer(GLBuffer buffer) {
		arrayGLBuffers.add(buffer);
	}
	
	public void setShaderMaterial(ShaderMaterial_Default shaderMaterial) {
		this.shaderMaterial = shaderMaterial;
	}
	
	public void setBody(Body body) {				
		if(scej.physics != null) {
			body.node = this;
			body.create();
			this.body = body;
			scej.physics.world.addRigidBody(body.rigidBody);			
		}
	}
}
