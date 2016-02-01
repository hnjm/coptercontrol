package com.stormcolor.scej;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.FloatBuffer;

import android.opengl.GLES20;

public class GLBuffer {
	public float[] vertexArray;
	public int vertexItemSize;
	public int vertexNumItems;
	public FloatBuffer vertexBuffer;
	public int vertexBufferId;
	
	public float[] normalArray;
	public int normalItemSize;
	public int normalNumItems;
	public FloatBuffer normalBuffer;
	public int normalBufferId;
	
	public float[] textureArray;
	public int textureItemSize;
	public int textureNumItems;
	public FloatBuffer textureBuffer;	
	public int textureBufferId;
	
		public char[] textureUnitArray;
		public int textureUnitItemSize;
		public int textureUnitNumItems;
		public CharBuffer textureUnitBuffer;	
		public int textureUnitBufferId;
		
	public char[] indexArray;
	public int indexItemSize;
	public int indexNumItems;	
	public CharBuffer indexBuffer;
	public int indexBufferId;
	
		
	public int drawElementsMode = 4;
	
	public final int FLOAT_SIZE = 4;
	public final int FIXED_SIZE = 4;
	public final int CHAR_SIZE = 2;
	
	public GLBuffer(float[] vertexArray, float[] normalArray, float[] textureArray, char[] textureUnitArray, char[] indexArray) {
		int capacity;
		if(vertexArray != null) {			
			this.vertexArray = vertexArray;
			vertexItemSize = 3;
			vertexNumItems = vertexArray.length/3;
	        capacity = FLOAT_SIZE * vertexArray.length;
	        
	        vertexBuffer = ByteBuffer.allocateDirect(capacity)
	        		.order(ByteOrder.nativeOrder()).asFloatBuffer();      
	        vertexBuffer.put(vertexArray);
	        vertexBuffer.position(0);
	        
	        int[] buffer = new int[1];
	        GLES20.glGenBuffers(1, buffer, 0);
	        vertexBufferId = buffer[0];
	        GLES20.glBindBuffer(GLES20.GL_ARRAY_BUFFER, vertexBufferId);
	        GLES20.glBufferData(GLES20.GL_ARRAY_BUFFER, capacity, vertexBuffer, GLES20.GL_STATIC_DRAW);
		}
		if(normalArray != null) {			
			this.normalArray = normalArray;
			normalItemSize = 3;
			normalNumItems = normalArray.length/3;
	        capacity = FLOAT_SIZE * normalArray.length;
	        
	        normalBuffer = ByteBuffer.allocateDirect(capacity)
	        		.order(ByteOrder.nativeOrder()).asFloatBuffer();   
	        normalBuffer.put(normalArray);
	        normalBuffer.position(0);
	        
	        int[] buffer = new int[1];
	        GLES20.glGenBuffers(1, buffer, 0);
	        normalBufferId = buffer[0];
	        GLES20.glBindBuffer(GLES20.GL_ARRAY_BUFFER, normalBufferId);
	        GLES20.glBufferData(GLES20.GL_ARRAY_BUFFER, capacity, normalBuffer, GLES20.GL_STATIC_DRAW);
		}
		if(textureArray != null) {			
			this.textureArray = textureArray;
			textureItemSize = 3;
			textureNumItems = textureArray.length/3;
	        capacity = FLOAT_SIZE * textureArray.length;
	        
	        textureBuffer = ByteBuffer.allocateDirect(capacity)
	        		.order(ByteOrder.nativeOrder()).asFloatBuffer();    
	        textureBuffer.put(textureArray);
	        textureBuffer.position(0);
	        
	        int[] buffer = new int[1];
	        GLES20.glGenBuffers(1, buffer, 0);
	        textureBufferId = buffer[0];
	        GLES20.glBindBuffer(GLES20.GL_ARRAY_BUFFER, textureBufferId);
	        GLES20.glBufferData(GLES20.GL_ARRAY_BUFFER, capacity, textureBuffer, GLES20.GL_STATIC_DRAW);
		}
		if(textureUnitArray != null) {			
			this.textureUnitArray = textureUnitArray;
			textureUnitItemSize = 1;
			textureUnitNumItems = textureUnitArray.length;
	        capacity = CHAR_SIZE * textureUnitArray.length;
	        
	        textureUnitBuffer = ByteBuffer.allocateDirect(capacity)
	        		.order(ByteOrder.nativeOrder()).asCharBuffer();      
	        textureUnitBuffer.put(textureUnitArray);
	        textureUnitBuffer.position(0);
	        
	        int[] buffer = new int[1];
	        GLES20.glGenBuffers(1, buffer, 0);
	        textureUnitBufferId = buffer[0];
	        GLES20.glBindBuffer(GLES20.GL_ARRAY_BUFFER, textureUnitBufferId);
	        GLES20.glBufferData(GLES20.GL_ARRAY_BUFFER, capacity, textureUnitBuffer, GLES20.GL_STATIC_DRAW);
		}
		GLES20.glBindBuffer(GLES20.GL_ARRAY_BUFFER, 0);	// Unbind the array buffer. 
		
		if(indexArray != null) {			
			this.indexArray = indexArray;
			indexItemSize = 1;
			indexNumItems = indexArray.length;
	        capacity = CHAR_SIZE * indexArray.length;
	        
	        indexBuffer = ByteBuffer.allocateDirect(capacity)
	        		.order(ByteOrder.nativeOrder()).asCharBuffer();      
	        indexBuffer.put(indexArray);
	        indexBuffer.position(0);
	        
	        int[] buffer = new int[1];
	        GLES20.glGenBuffers(1, buffer, 0);
	        indexBufferId = buffer[0];
	        GLES20.glBindBuffer(GLES20.GL_ELEMENT_ARRAY_BUFFER, indexBufferId);
	        GLES20.glBufferData(GLES20.GL_ELEMENT_ARRAY_BUFFER, capacity, indexBuffer, GLES20.GL_STATIC_DRAW);	        
	        GLES20.glBindBuffer(GLES20.GL_ELEMENT_ARRAY_BUFFER, 0);	// Unbind the element array buffer.
		}
	}
}
