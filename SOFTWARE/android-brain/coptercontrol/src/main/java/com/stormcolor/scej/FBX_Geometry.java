package com.stormcolor.scej;

public class FBX_Geometry {
	
	public int id;
	public String name;
	
	public FBX_GeometryProperties geometryProperties;
	public float[] Vertices;
	public char[] PolygonVertexIndex;
	public FBX_LayerElementNormal LayerElementNormal;
	public FBX_LayerElementUV LayerElementUV;
	public FBX_LayerElementVisibility LayerElementVisibility;
	
	public FBX_Geometry() {
		
	}
}
