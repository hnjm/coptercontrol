package com.stormcolor.scej;

import javax.vecmath.Vector3f;

import com.bulletphysics.collision.shapes.BoxShape;
import com.bulletphysics.collision.shapes.CollisionShape;
import com.bulletphysics.dynamics.RigidBody;
import com.bulletphysics.dynamics.RigidBodyConstructionInfo;
import com.bulletphysics.linearmath.DefaultMotionState;
import com.bulletphysics.linearmath.Transform;

public class Body_Box extends Body {

	private Vector3f dimensions;
	private float mass;
	private float friction;
	private float restitution;
	
	public Body_Box(Vector3f dimensions, float mass, float friction, float restitution) {
		this.dimensions = dimensions;
		this.mass = mass;
		this.friction = friction;
		this.restitution = restitution;		
	}
	
	@Override
	public void create() {
		CollisionShape shape = new BoxShape(dimensions);
		
		Transform transform = new Transform();
		transform.setIdentity();
		transform.origin.set(new Vector3f(node.mModelMatrix_Position[3], node.mModelMatrix_Position[7], node.mModelMatrix_Position[11]));
		

		boolean isDynamic = (mass != 0f);
		Vector3f localInertia = new Vector3f(0, 0, 0);
		if(isDynamic) {
			shape.calculateLocalInertia(mass, localInertia);
		}
		
		// using motionstate is recommended, it provides interpolation
		// capabilities, and only synchronizes 'active' objects
		DefaultMotionState myMotionState = new DefaultMotionState(transform);
		RigidBodyConstructionInfo rbInfo = new RigidBodyConstructionInfo(mass, myMotionState, shape, localInertia);
		rigidBody = new RigidBody(rbInfo);
	}
	
}
