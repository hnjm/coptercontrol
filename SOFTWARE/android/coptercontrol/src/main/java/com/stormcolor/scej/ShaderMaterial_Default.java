package com.stormcolor.scej;

import android.opengl.GLES20;

public class ShaderMaterial_Default {

	public int mProgram;
	
	public int uProjectionMatrix;
	public int uModelMatrix_NodeTarget;	
	public int uModelMatrix_Position_Node;
	public int uModelMatrix_Rotation_Node;
	public int aPosition;
	public int aTextureCoord;
	public int aNormal;
	
	private int uProjectionMatrix_LightDirectional;
	private int uModelMatrix_LightDirectional;
	
	private int sAlbedo;
	private int sLightsDirectionalShadow;
	
	private int uColor;	
	private int uUseAlbedo;
	private int uFar;
	private int uUseLightDirectional;
	
	
	public int _albedo;
	public int _useAlbedo = 0;
	public float[] _color = new float[]{0.63671875f, 0.76953125f, 0.22265625f, 0.0f};
	
	private String vertexShaderCode =
    		"precision mediump float;"+
	
    		"uniform mat4 uProjectionMatrix;"+
            "uniform mat4 uModelMatrix_NodeTarget;"+
            "uniform mat4 uModelMatrix_Position_Node;"+
            "uniform mat4 uModelMatrix_Rotation_Node;"+                        
            "attribute vec3 aPosition;"+
            "attribute vec3 aTextureCoord;"+
            "attribute vec3 aNormal;"+
            
			"uniform mat4 uProjectionMatrix_LightDirectional;"+
			"uniform mat4 uModelMatrix_LightDirectional;"+
            
			
			"varying vec3 vTextureCoord;"+
			"varying vec3 vNormal;"+			
			"varying vec4 vPositionLightDirectional;"+
			"varying vec4 vPositionSLightDirectional;"+
			
            
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
            
			"	vTextureCoord = aTextureCoord;"+
			"	vNormal = (transpose(uModelMatrix_Rotation_Node) * vec4(aNormal, 1.0)).xyz;"+

			
            "	vec4 MVMatrixLightDirectional = uModelMatrix_LightDirectional * modelMatrix;"+
            "	vec4 MVPSMatrixLightDirectional = ScaleMatrix * uProjectionMatrix_LightDirectional * MVMatrixLightDirectional;\n"+
            
			"	vPositionLightDirectional = MVMatrixLightDirectional;"+
			"	vPositionSLightDirectional = MVPSMatrixLightDirectional;"+			

            "	gl_Position = MVPMatrix;\n"+
            "}";	
	
    private String fragmentShaderCode =
            "precision mediump float;"+
    
			"uniform mat4 uModelMatrix_LightDirectional;"+

			"uniform sampler2D sAlbedo;"+
			"uniform sampler2D sLightsDirectionalShadow;"+
			
            "uniform vec4 uColor;"+            
            "uniform int uUseAlbedo;"+
            "uniform float uFar;"+            
			"uniform int uUseLightDirectional;"+
                        			

			"varying vec3 vTextureCoord;"+
			"varying vec3 vNormal;"+			
			"varying vec4 vPositionLightDirectional;"+
			"varying vec4 vPositionSLightDirectional;"+

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

			new Utils().unpackGLSLFunctionString()+
			"float LinearDepthConstant = 1.0/uFar;"+

            "void main() {"+
            "	vec4 textureColor = texture2D(sAlbedo, vec2(vTextureCoord.s, vTextureCoord.t));"+
            
			"	vec4 finalColor = (uUseAlbedo == 1) ? textureColor : uColor;"+
			
			"	if(uUseLightDirectional == 1) {"+
			"		mat4 m = transpose(uModelMatrix_LightDirectional);"+
            "		vec3 lightVector = vec3(m[2][0], m[2][1], m[2][2]);"+
            "		float diffuse;"+
            "		if(gl_FrontFacing) {"+
            "			diffuse = max(dot(vNormal, lightVector), 0.0);"+
            "		} else {"+
            "   		diffuse = max(dot(-vNormal, lightVector), 0.0);"+
            "		}"+
            "		finalColor *= diffuse;"+
            
            
			"		float depthFromLight = length(vPositionLightDirectional) * LinearDepthConstant;"+
			
			"		vec3 pixelCoord = vPositionSLightDirectional.xyz / vPositionSLightDirectional.w;"+
			"		vec4 textureFBLightDepth = texture2D(sLightsDirectionalShadow, pixelCoord.xy);"+
			"		float depthFromTexture = unpack(textureFBLightDepth)+0.001;"+
			"		float light = depthFromLight > depthFromTexture ? 0.0 : 1.0;"+
			"		light *=  1.0-smoothstep(0.0, 0.9, length(pixelCoord.xy - vec2(0.5, 0.5)));"+
			"		light +=  smoothstep(0.0, 0.9, length(pixelCoord.xy - vec2(0.5, 0.5)));"+
			"		finalColor = vec4(finalColor.rgb*light, finalColor.a);"+
            "	}"+
            
            "	gl_FragColor = finalColor;"+
            //"	gl_FragColor = vec4(vTextureCoord.s, vTextureCoord.t,0.0,1.0);"+
            "}";
    
	public ShaderMaterial_Default() {
		mProgram = new Utils().LoadProgram(vertexShaderCode, fragmentShaderCode);
		
		uProjectionMatrix = GLES20.glGetUniformLocation(mProgram, "uProjectionMatrix");
		uModelMatrix_NodeTarget = GLES20.glGetUniformLocation(mProgram, "uModelMatrix_NodeTarget");		
        uModelMatrix_Position_Node = GLES20.glGetUniformLocation(mProgram, "uModelMatrix_Position_Node");
        uModelMatrix_Rotation_Node = GLES20.glGetUniformLocation(mProgram, "uModelMatrix_Rotation_Node");
		aPosition = GLES20.glGetAttribLocation(mProgram, "aPosition");        
		aTextureCoord = GLES20.glGetAttribLocation(mProgram, "aTextureCoord");
		aNormal = GLES20.glGetAttribLocation(mProgram, "aNormal");
				               
		uProjectionMatrix_LightDirectional = GLES20.glGetUniformLocation(mProgram, "uProjectionMatrix_LightDirectional");
        uModelMatrix_LightDirectional = GLES20.glGetUniformLocation(mProgram, "uModelMatrix_LightDirectional");  
        
        sAlbedo = GLES20.glGetUniformLocation(mProgram, "sAlbedo");
        sLightsDirectionalShadow = GLES20.glGetUniformLocation(mProgram, "sLightsDirectionalShadow");
        
        uColor = GLES20.glGetUniformLocation(mProgram, "uColor");
        uUseAlbedo = GLES20.glGetUniformLocation(mProgram, "uUseAlbedo");        
        uFar = GLES20.glGetUniformLocation(mProgram, "uFar");
        uUseLightDirectional = GLES20.glGetUniformLocation(mProgram, "uUseLightDirectional");
        
        
        int[] textureBuffer = new int[1];
        GLES20.glGenTextures(1, textureBuffer, 0);
        _albedo = textureBuffer[0];
	}
	
	public void draw(Node node, NodeTarget nodeTarget) {
    	GLES20.glUniformMatrix4fv(uProjectionMatrix, 1, false, nodeTarget.projection.mProjectionMatrix, 0);
		GLES20.glUniformMatrix4fv(uModelMatrix_NodeTarget, 1, false, nodeTarget.mModelMatrix, 0);        
		GLES20.glUniformMatrix4fv(uModelMatrix_Position_Node, 1, false, node.mModelMatrix_Position, 0);
		GLES20.glUniformMatrix4fv(uModelMatrix_Rotation_Node, 1, false, node.mModelMatrix_Rotation, 0);
		
		
		
		GLES20.glUniformMatrix4fv(uProjectionMatrix_LightDirectional, 1, false, node.scej.arrayNodeLightsDirectional.get(0).projection.mProjectionMatrix, 0);
		GLES20.glUniformMatrix4fv(uModelMatrix_LightDirectional, 1, false, node.scej.arrayNodeLightsDirectional.get(0).mModelMatrix, 0);
		
		
		
		GLES20.glActiveTexture(GLES20.GL_TEXTURE0);
		GLES20.glBindTexture(GLES20.GL_TEXTURE_2D, _albedo);
		GLES20.glUniform1i(sAlbedo, 0);
		
		GLES20.glActiveTexture(GLES20.GL_TEXTURE1);
		GLES20.glBindTexture(GLES20.GL_TEXTURE_2D, node.scej.arrayNodeLightsDirectional.get(0).glScreenBuffers.textureFBId);
		GLES20.glUniform1i(sLightsDirectionalShadow, 1);
		
		
		
		GLES20.glUniform4fv(uColor, 1, _color, 0);
		
		if(_useAlbedo == 1) GLES20.glUniform1i(uUseAlbedo, 1);
		else GLES20.glUniform1i(uUseAlbedo, 0);
			
		if(node.scej.arrayNodeLightsDirectional.size() > 0) {
			GLES20.glUniform1f(uFar, node.scej.arrayNodeLightsDirectional.get(0).projection.far);	
			GLES20.glUniform1i(uUseLightDirectional, 1);
		} else {
			GLES20.glUniform1i(uUseLightDirectional, 0);
		}
		
		
		
		for(GLBuffer buffer : node.arrayGLBuffers) {
			GLES20.glEnableVertexAttribArray(aPosition);
			GLES20.glBindBuffer(GLES20.GL_ARRAY_BUFFER, buffer.vertexBufferId);
			GLES20.glVertexAttribPointer(aPosition, buffer.vertexItemSize, GLES20.GL_FLOAT, false, buffer.vertexItemSize*buffer.FLOAT_SIZE, 0);
				
			if(buffer.textureBuffer != null) {
				GLES20.glEnableVertexAttribArray(aTextureCoord);
				GLES20.glBindBuffer(GLES20.GL_ARRAY_BUFFER, buffer.textureBufferId);
				GLES20.glVertexAttribPointer(aTextureCoord, buffer.textureItemSize, GLES20.GL_FLOAT, false, buffer.textureItemSize*buffer.FLOAT_SIZE, 0);
			}
			
			if(buffer.normalBuffer != null) {
				GLES20.glEnableVertexAttribArray(aNormal);
				GLES20.glBindBuffer(GLES20.GL_ARRAY_BUFFER, buffer.normalBufferId);
				GLES20.glVertexAttribPointer(aNormal, buffer.normalItemSize, GLES20.GL_FLOAT, false, buffer.normalItemSize*buffer.FLOAT_SIZE, 0);
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
			if(buffer.normalBuffer != null) GLES20.glDisableVertexAttribArray(aNormal);
		}
    }
}
