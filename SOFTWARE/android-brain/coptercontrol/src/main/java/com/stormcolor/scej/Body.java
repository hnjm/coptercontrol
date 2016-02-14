package com.stormcolor.scej;

import javax.vecmath.Matrix4f;

import com.bulletphysics.dynamics.RigidBody;
import com.bulletphysics.linearmath.Transform;

public class Body {
	
	public Node node;
	public RigidBody rigidBody;
	
	public void create() {		
	}
	
	public void update(Node node) {
		if(rigidBody != null && rigidBody.getMotionState() != null) {
			Transform trans = new Transform();
			rigidBody.getMotionState().getWorldTransform(trans);
			
			Matrix4f m = new Matrix4f();
			trans.getMatrix(m);
			node.mModelMatrix_Position[3] = m.m03;
			node.mModelMatrix_Position[7] = m.m13;
			node.mModelMatrix_Position[11] = m.m23;
			
			
			node.mModelMatrix_Rotation[0] = m.m00;
			node.mModelMatrix_Rotation[1] = m.m01;
			node.mModelMatrix_Rotation[2] = m.m02;
			
			node.mModelMatrix_Rotation[4] = m.m10;
			node.mModelMatrix_Rotation[5] = m.m11;
			node.mModelMatrix_Rotation[6] = m.m12;
			
			node.mModelMatrix_Rotation[8] = m.m20;
			node.mModelMatrix_Rotation[9] = m.m21;
			node.mModelMatrix_Rotation[10] = m.m22;
			
			if(node.dynamicShadows) node.scej.updateTextureLightDepth = true;
			//System.out.printf("world pos = %f,%f,%f\n", trans.origin.x,	trans.origin.y, trans.origin.z);
		}
	}
}
