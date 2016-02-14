package com.stormcolor.scej;

import javax.vecmath.Vector3f;

public class ControllerFollowNode extends CameraController {
	
	private Node node;
	public float distance = 8f;
	public float elevation = 4f;
	
	public ControllerFollowNode(Node node) {
		this.node = node;
	}
	
	@Override
	public void update() {
		Vector3f nodePos = new Vector3f(node.mModelMatrix_Rotation[2], node.mModelMatrix_Rotation[6], node.mModelMatrix_Rotation[10]);
		Vector3f nodeForward = new Vector3f(node.mModelMatrix_Rotation[2], 0, node.mModelMatrix_Rotation[10]);
		nodeForward.scale(-distance);
		
		nodePos.add(nodeForward);
		nodePos.add(new Vector3f(0f, elevation, 0f));
		nodeCamera.position(nodePos);
		nodeCamera.positionTarget(node.position());
	}
}
