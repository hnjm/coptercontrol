package com.stormcolor.scej;

import javax.vecmath.Vector3f;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.util.Log;

public class Utils {
	public Utils() {
		
	}
	
	/**
	 * @param Vector3f vec x,y,z
	 * @returns Vector3f vec radius, Zenith or Lat angle(π) and Azimuth or Lng angle(2π)
	 *  https://neutrium.net/mathematics/converting-between-spherical-and-cartesian-co-ordinate-systems/
	 **/
	public Vector3f cartesianToSpherical(Vector3f vec) {
		double r = Math.sqrt(vec.x*vec.x + vec.y*vec.y + vec.z*vec.z);
		
		float angleLat = radToDeg((float)Math.asin(vec.z/r));
		float angleLng = radToDeg((float)Math.atan2(vec.y,vec.x));
		
		return new Vector3f((float)r, (float)angleLat, (float)angleLng);
	}	
	
	/**
	 * @param Vector3f vec radius, Zenith or Lat angle(π) and Azimuth or Lng angle(2π)
	 * @returns Vector3f vec x,y,z
	 *  https://neutrium.net/mathematics/converting-between-spherical-and-cartesian-co-ordinate-systems/
	 **/
	public Vector3f sphericalToCartesian(Vector3f vec) {	
		float r = vec.x;
		float angleLat = degToRad(vec.y); 
		float angleLng = degToRad(vec.z);
		
		float x = r*(float)Math.cos(angleLat)*(float)Math.cos(angleLng);
		float y = r*(float)Math.cos(angleLat)*(float)Math.sin(angleLng);
		float z = r*(float)Math.sin(angleLat);
		
		return new Vector3f(x,y,z);
	}
	
	/**
	* Degrees to radians. Full circle = 360 degrees.
	* @returns float
	* @param float degrees
	*/
	public float degToRad(float deg) {
		return (deg*3.14159f)/180f;
	};

	/**
	* Radians to degrees
	* @returns float
	* @param float radians
	*/
	public float radToDeg(float rad) {
		return rad*(180f/3.14159f);
	};
	
	/**
	* Dot product vector4float
	*/
	public float dot4 (float[] vector4A, float[] vector4B) {
		return vector4A[0]*vector4B[0] + vector4A[1]*vector4B[1] + vector4A[2]*vector4B[2] + vector4A[3]*vector4B[3];
	};
	
	/**
	* Compute the fractional part of the argument. fract(pi)=0.14159265...
	*/
	public float fract(float number) {
		return number - (float)Math.floor(number);
	}
	
	/**
	* Pack 1float (0.0-1.0) to 4float rgba (0.0-1.0, 0.0-1.0, 0.0-1.0, 0.0-1.0)
	*/
	public float[] pack(float v) {
		float[] bias = new float[]{1f / 255f, 1f / 255f, 1f / 255f, 0f};

		float r = v;
		float g = fract(r * 255f);
		float b = fract(g * 255f);
		float a = fract(b * 255f);
		float[] colour = new float[]{r, g, b, a};
		
		float[] dd = new float[]{colour[1]*bias[0],colour[2]*bias[1],colour[3]*bias[2],colour[3]*bias[3]};
		
		return new float[]{ colour[0]-dd[0],colour[1]-dd[1],colour[2]-dd[2],colour[3]-dd[3] };
	};
	
	/**
	* Unpack 4float rgba (0.0-1.0, 0.0-1.0, 0.0-1.0, 0.0-1.0) to 1float (0.0-1.0)
	*/
	public float unpack(float[] colour) {
		float[] bitShifts = new float[]{1f, 1f/255f, 1f/(255f*255f), 1f/(255f*255f*255f)};
		return dot4(colour, bitShifts);
	};
	
	/**
	* Get pack GLSL function string
	* @returns String
	*/
	public String packGLSLFunctionString() {
		return "vec4 pack (float depth) {"+
					"const vec4 bias = vec4(1.0 / 255.0,"+
								"1.0 / 255.0,"+
								"1.0 / 255.0,"+
								"0.0);"+

					"float r = depth;"+
					"float g = fract(r * 255.0);"+
					"float b = fract(g * 255.0);"+
					"float a = fract(b * 255.0);"+
					"vec4 colour = vec4(r, g, b, a);"+
					
					"return colour - (colour.yzww * bias);"+
				"}";
	}
	/**
	* Get unpack GLSL function string
	* @returns String
	*/
	public String unpackGLSLFunctionString() {
		return "float unpack (vec4 colour) {"+
					"const vec4 bitShifts = vec4(1.0,"+
									"1.0 / 255.0,"+
									"1.0 / (255.0 * 255.0),"+
									"1.0 / (255.0 * 255.0 * 255.0));"+
					"return dot(colour, bitShifts);"+
				"}";
	}
	
	private String kLogTag = "GDC11";
    public int LoadShader(String source, int type){
    	int shader = GLES20.glCreateShader(type);
        if (shader == 0) return 0;

        GLES20.glShaderSource(shader, source);
        GLES20.glCompileShader(shader);
        int[] compiled = { 0 };
        GLES20.glGetShaderiv(shader, GLES20.GL_COMPILE_STATUS, compiled, 0);
        if (compiled[0] == 0) {
            Log.e(kLogTag, GLES20.glGetShaderInfoLog(shader));
        }
        return shader;
    }
    
    public int LoadProgram(String vertexShader, String fragmentShader) {
        int vs = LoadShader(vertexShader, GLES20.GL_VERTEX_SHADER);
        int fs = LoadShader(fragmentShader, GLES20.GL_FRAGMENT_SHADER);
        if (vs == 0 || fs == 0) return 0;

        int program = GLES20.glCreateProgram();
        GLES20.glAttachShader(program, vs);
        GLES20.glAttachShader(program, fs);
        GLES20.glLinkProgram(program);

        int[] linked = { 0 };
        GLES20.glGetProgramiv(program, GLES20.GL_LINK_STATUS, linked, 0);
        if (linked[0] == 0) {
            Log.e(kLogTag, GLES20.glGetProgramInfoLog(program));
            return 0;
        }
        return program;
    }
    
    public void loadSampler(Bitmap bmp, int textureBufferId) {
		GLES20.glActiveTexture(GLES20.GL_TEXTURE0);
        GLES20.glBindTexture(GLES20.GL_TEXTURE_2D, textureBufferId);
        GLES20.glTexParameteri(GLES20.GL_TEXTURE_2D, GLES20.GL_TEXTURE_MIN_FILTER, GLES20.GL_LINEAR);
        GLES20.glTexParameteri(GLES20.GL_TEXTURE_2D, GLES20.GL_TEXTURE_MAG_FILTER, GLES20.GL_LINEAR);
        GLUtils.texImage2D(GLES20.GL_TEXTURE_2D, 0, bmp, 0);
	}
}
