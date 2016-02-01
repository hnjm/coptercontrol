package com.stormcolor.scej;

import android.opengl.GLES20;

public class ShaderMaterial_Depth {	
	
	public int mProgram;
	
	public int uProjectionMatrix;
	public int uModelMatrix_NodeTarget;	
	public int uModelMatrix_Position_Node;
	public int uModelMatrix_Rotation_Node;
	public int aPosition;
	public int aTextureCoord;
		
	private int sAlbedo;
	
	private int uUseAlbedo;	
	private int uFar;
	
	private String vertexShaderCode =
    		"precision mediump float;"+
	
    		"uniform mat4 uProjectionMatrix;"+
            "uniform mat4 uModelMatrix_NodeTarget;"+    		
            "uniform mat4 uModelMatrix_Position_Node;"+
            "uniform mat4 uModelMatrix_Rotation_Node;"+                        
            "attribute vec3 aPosition;"+
            "attribute vec3 aTextureCoord;"+
            
            
			"varying vec4 vPosition;"+
			"varying vec3 vTextureCoord;"+
            
			"highp mat4 transpose(in highp mat4 inMatrix) {"+
			"	highp vec4 i0 = inMatrix[0];"+
			"	highp vec4 i1 = inMatrix[1];"+
			"	highp vec4 i2 = inMatrix[2];"+
			"	highp vec4 i3 = inMatrix[3];"+
				
			"	highp mat4 outMatrix = mat4("+
			"	                 vec4(i0.x, i1.x, i2.x, i3.x),"+
			"	                 vec4(i0.y, i1.y, i2.y, i3.y),"+
			"	                 vec4(i0.z, i1.z, i2.z, i3.z),"+
			"	                 vec4(i0.w, i1.w, i2.w, i3.w)"+
			"	                 );"+
			"	return outMatrix;"+
			"}"+
			
			"const mat4 ScaleMatrix = mat4(0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.5, 0.5, 0.5, 1.0);"+
			
            "void main() {"+
            "	vec4 modelMatrix = transpose(uModelMatrix_Position_Node) * transpose(uModelMatrix_Rotation_Node) * vec4(aPosition, 1.0);"+
            "	vec4 MVMatrix = uModelMatrix_NodeTarget * modelMatrix;"+
            "	vec4 MVPMatrix = uProjectionMatrix * MVMatrix;\n"+
            
			"	vPosition = MVMatrix;"+
			"	vTextureCoord = aTextureCoord;"+
			
            "	gl_Position = MVPMatrix;\n"+
            "}";
	
    private String fragmentShaderCode =
            "precision mediump float;"+
    
			"uniform sampler2D sAlbedo;"+
			
			"uniform int uUseAlbedo;"+			
            "uniform float uFar;"+
            
            
			"varying vec4 vPosition;"+
			"varying vec3 vTextureCoord;"+

			new Utils().packGLSLFunctionString()+
			"float LinearDepthConstant = 1.0/uFar;"+
			
            "void main() {"+
            "	vec4 textureColor = texture2D(sAlbedo, vec2(vTextureCoord.s, vTextureCoord.t));"+
            
			"	float depth = length(vPosition)*LinearDepthConstant;"+			
			"	if(uUseAlbedo == 1 && textureColor.a == 0.0) depth = 1.0;"+	
            
            "	gl_FragColor = pack(depth);"+ // vec4(depth, depth, depth ,1.0)
            "}";
    
	public ShaderMaterial_Depth() {
		mProgram = new Utils().LoadProgram(vertexShaderCode, fragmentShaderCode);
		
		uProjectionMatrix = GLES20.glGetUniformLocation(mProgram, "uProjectionMatrix");
		uModelMatrix_NodeTarget = GLES20.glGetUniformLocation(mProgram, "uModelMatrix_NodeTarget");		
        uModelMatrix_Position_Node = GLES20.glGetUniformLocation(mProgram, "uModelMatrix_Position_Node");
        uModelMatrix_Rotation_Node = GLES20.glGetUniformLocation(mProgram, "uModelMatrix_Rotation_Node");
		aPosition = GLES20.glGetAttribLocation(mProgram, "aPosition");  
		aTextureCoord = GLES20.glGetAttribLocation(mProgram, "aTextureCoord");
		               
        sAlbedo = GLES20.glGetUniformLocation(mProgram, "sAlbedo");
        
        uUseAlbedo = GLES20.glGetUniformLocation(mProgram, "uUseAlbedo");        
        uFar = GLES20.glGetUniformLocation(mProgram, "uFar");
	}
	
	public void draw(Node node, NodeTarget nodeTarget) {
    	GLES20.glUniformMatrix4fv(uProjectionMatrix, 1, false, nodeTarget.projection.mProjectionMatrix, 0);
		GLES20.glUniformMatrix4fv(uModelMatrix_NodeTarget, 1, false, nodeTarget.mModelMatrix, 0);        
		GLES20.glUniformMatrix4fv(uModelMatrix_Position_Node, 1, false, node.mModelMatrix_Position, 0);
		GLES20.glUniformMatrix4fv(uModelMatrix_Rotation_Node, 1, false, node.mModelMatrix_Rotation, 0);
		
		
		
		GLES20.glActiveTexture(GLES20.GL_TEXTURE0);
		GLES20.glBindTexture(GLES20.GL_TEXTURE_2D, node.shaderMaterial._albedo);
		GLES20.glUniform1i(sAlbedo, 0);
		
		
		
		if(node.shaderMaterial._useAlbedo == 1) GLES20.glUniform1i(uUseAlbedo, 1);
		else GLES20.glUniform1i(uUseAlbedo, 0);
			
		GLES20.glUniform1f(uFar, nodeTarget.projection.far);
		
		
		
		for(GLBuffer buffer : node.arrayGLBuffers) {
			GLES20.glEnableVertexAttribArray(aPosition);
			GLES20.glBindBuffer(GLES20.GL_ARRAY_BUFFER, buffer.vertexBufferId);
			GLES20.glVertexAttribPointer(aPosition, buffer.vertexItemSize, GLES20.GL_FLOAT, false, buffer.vertexItemSize*buffer.FLOAT_SIZE, 0);
			
			if(buffer.textureBuffer != null) {
				GLES20.glEnableVertexAttribArray(aTextureCoord);
				GLES20.glBindBuffer(GLES20.GL_ARRAY_BUFFER, buffer.textureBufferId);
				GLES20.glVertexAttribPointer(aTextureCoord, buffer.textureItemSize, GLES20.GL_FLOAT, false, buffer.textureItemSize*buffer.FLOAT_SIZE, 0);
			}
			
			if(buffer.indexBuffer != null) {
				GLES20.glBindBuffer(GLES20.GL_ELEMENT_ARRAY_BUFFER, buffer.indexBufferId); 
				GLES20.glDrawElements(buffer.drawElementsMode, buffer.indexNumItems, GLES20.GL_UNSIGNED_SHORT, 0);
				GLES20.glBindBuffer(GLES20.GL_ELEMENT_ARRAY_BUFFER, 0);
			} else {
				GLES20.glDrawArrays(buffer.drawElementsMode, 0, buffer.vertexNumItems);
			} 
			GLES20.glBindBuffer(GLES20.GL_ARRAY_BUFFER, 0); 
			
			GLES20.glDisableVertexAttribArray(aPosition);
			if(buffer.textureBuffer != null) GLES20.glDisableVertexAttribArray(aTextureCoord);
		}
    }
}
