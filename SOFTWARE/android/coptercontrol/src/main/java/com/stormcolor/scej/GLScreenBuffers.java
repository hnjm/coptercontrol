package com.stormcolor.scej;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.opengl.GLUtils;

public class GLScreenBuffers {
	
	public NodeTarget nodeTarget;
	
	private IntBuffer rBuffer;
	public int rBufferId;
	private IntBuffer fBuffer;
	public int fBufferId;
	public int textureFBId;
	
	public GLScreenBuffers() {
		
	}
	
	public void createGLScreenBuffers() {		
		// renderbuffer
		rBuffer = ByteBuffer.allocateDirect(4).asIntBuffer();
		GLES20.glGenRenderbuffers(1, rBuffer);
		rBufferId = rBuffer.get(0);
		
		updateGLScreenBuffers();
		
		// framebuffer
		fBuffer = ByteBuffer.allocateDirect(4).order(ByteOrder.nativeOrder()).asIntBuffer();
		GLES20.glGenFramebuffers(1, fBuffer);
		fBufferId = fBuffer.get(0);
		
		GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER, fBufferId);
		GLES20.glFramebufferRenderbuffer(GLES20.GL_FRAMEBUFFER, GLES20.GL_DEPTH_ATTACHMENT, GLES20.GL_RENDERBUFFER, rBufferId);
		GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER, 0);
				
		// framebuffer texture
		Bitmap bitmap = Bitmap.createBitmap(nodeTarget.projection.width, nodeTarget.projection.height, Bitmap.Config.ARGB_8888);
		int[] textureBuffer = new int[1];
        GLES20.glGenTextures(1, textureBuffer, 0);
        textureFBId = textureBuffer[0];
        
		GLES20.glBindTexture(GLES20.GL_TEXTURE_2D, textureFBId);
		GLES20.glTexParameteri(GLES20.GL_TEXTURE_2D, GLES20.GL_TEXTURE_MAG_FILTER, GLES20.GL_NEAREST);
        GLES20.glTexParameteri(GLES20.GL_TEXTURE_2D, GLES20.GL_TEXTURE_MIN_FILTER, GLES20.GL_NEAREST);
        GLES20.glTexParameteri(GLES20.GL_TEXTURE_2D, GLES20.GL_TEXTURE_WRAP_S, GLES20.GL_NEAREST);
        GLES20.glTexParameteri(GLES20.GL_TEXTURE_2D, GLES20.GL_TEXTURE_WRAP_T, GLES20.GL_NEAREST);            
        GLUtils.texImage2D(GLES20.GL_TEXTURE_2D, 0, GLES20.GL_RGBA, bitmap, GLES20.GL_UNSIGNED_BYTE, 0);
	}
	
	public void updateGLScreenBuffers() {		
		// renderbuffer
		GLES20.glBindRenderbuffer(GLES20.GL_RENDERBUFFER, rBufferId);
		GLES20.glRenderbufferStorage(GLES20.GL_RENDERBUFFER, GLES20.GL_DEPTH_COMPONENT16, nodeTarget.projection.width, nodeTarget.projection.height);
		GLES20.glBindRenderbuffer(GLES20.GL_RENDERBUFFER, 0);
		
		// framebuffer texture
		Bitmap bitmap = Bitmap.createBitmap(nodeTarget.projection.width, nodeTarget.projection.height, Bitmap.Config.ARGB_8888);
		GLES20.glBindTexture(GLES20.GL_TEXTURE_2D, textureFBId);
		GLUtils.texImage2D(GLES20.GL_TEXTURE_2D, 0, GLES20.GL_RGBA, bitmap, GLES20.GL_UNSIGNED_BYTE, 0);
	}
}
