package com.stormcolor.scej;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.vecmath.Vector3f;

import android.content.Context;
import android.content.res.AssetManager;

public class Mesh {
	
	public List<float[]> vertexArray;	
	public List<float[]> normalArray;	
	public List<float[]> textureArray;	
	public List<char[]> textureUnitArray;
	public List<char[]> indexArray;
	
	private String[] objIndex; // for store new indexes
	private int indexMax = 0; 
	
	/**
	* Load a box on node
	* @private 
	* @type Void
	*/
	public Mesh loadBox(Vector3f vecDim) {
		vertexArray = new ArrayList<float[]>();
		normalArray = new ArrayList<float[]>();
		textureArray = new ArrayList<float[]>();
		textureUnitArray = new ArrayList<char[]>();
		indexArray = new ArrayList<char[]>();
		
		float[] d = new float[]{0.5f, 0.5f, 0.5f};
		if(vecDim != null) {
			vecDim.scale(0.5f);
			d = new float[]{(float) vecDim.x, (float) vecDim.y, (float) vecDim.z};
		}
		vertexArray.add(new float[]{-1.0f*d[0], -1.0f*d[1],  1.0f*d[2],// Front face
				               		1.0f*d[0], -1.0f*d[1],  1.0f*d[2],
				                     1.0f*d[0],  1.0f*d[1],  1.0f*d[2],
				                    -1.0f*d[0],  1.0f*d[1],  1.0f*d[2],
				                    // Back face
				                    -1.0f*d[0], -1.0f*d[1], -1.0f*d[2],
				                    -1.0f*d[0],  1.0f*d[1], -1.0f*d[2],
				                     1.0f*d[0],  1.0f*d[1], -1.0f*d[2],
				                     1.0f*d[0], -1.0f*d[1], -1.0f*d[2],
				                    // Top face
				                    -1.0f*d[0],  1.0f*d[1], -1.0f*d[2],
				                    -1.0f*d[0],  1.0f*d[1],  1.0f*d[2],
				                     1.0f*d[0],  1.0f*d[1],  1.0f*d[2],
				                     1.0f*d[0],  1.0f*d[1], -1.0f*d[2],
				                    // Bottom face
				                    -1.0f*d[0], -1.0f*d[1], -1.0f*d[2],
				                     1.0f*d[0], -1.0f*d[1], -1.0f*d[2],
				                     1.0f*d[0], -1.0f*d[1],  1.0f*d[2],
				                    -1.0f*d[0], -1.0f*d[1],  1.0f*d[2],
				                    // Right face
				                     1.0f*d[0], -1.0f*d[1], -1.0f*d[2],
				                     1.0f*d[0],  1.0f*d[1], -1.0f*d[2],
				                     1.0f*d[0],  1.0f*d[1],  1.0f*d[2],
				                     1.0f*d[0], -1.0f*d[1],  1.0f*d[2],
				                    // Left face
				                    -1.0f*d[0], -1.0f*d[1], -1.0f*d[2],
				                    -1.0f*d[0], -1.0f*d[1],  1.0f*d[2],
				                    -1.0f*d[0],  1.0f*d[1],  1.0f*d[2],
				                    -1.0f*d[0],  1.0f*d[1], -1.0f*d[2]});	
		normalArray.add(new float[]{0.0f,  0.0f,  1.0f,// Front face
				                    0.0f,  0.0f,  1.0f,
				                    0.0f,  0.0f,  1.0f,
				                    0.0f,  0.0f,  1.0f,
				                   // Back face
				                    0.0f,  0.0f, -1.0f,
				                    0.0f,  0.0f, -1.0f,
				                    0.0f,  0.0f, -1.0f,
				                    0.0f,  0.0f, -1.0f,
				                   // Top face
				                    0.0f,  1.0f,  0.0f,
				                    0.0f,  1.0f,  0.0f,
				                    0.0f,  1.0f,  0.0f,
				                    0.0f,  1.0f,  0.0f,
				                   // Bottom face
				                    0.0f, -1.0f,  0.0f,
				                    0.0f, -1.0f,  0.0f,
				                    0.0f, -1.0f,  0.0f,
				                    0.0f, -1.0f,  0.0f,
				                   // Right face
				                    1.0f,  0.0f,  0.0f,
				                    1.0f,  0.0f,  0.0f,
				                    1.0f,  0.0f,  0.0f,
				                    1.0f,  0.0f,  0.0f,
				                   // Left face
				                   -1.0f,  0.0f,  0.0f,
				                   -1.0f,  0.0f,  0.0f,
				                   -1.0f,  0.0f,  0.0f,
				                   -1.0f,  0.0f,  0.0f});	
		textureArray.add(new float[]{0.0f, 0.0f, 0.0f,// Front face
				                     1.0f, 0.0f, 0.0f,
				                     1.0f, 1.0f, 0.0f,
				                     0.0f, 1.0f, 0.0f,
				                     // Back face
				                     1.0f, 0.0f, 0.0f,
				                     1.0f, 1.0f, 0.0f,
				                     0.0f, 1.0f, 0.0f,
				                     0.0f, 0.0f, 0.0f,
				                     // Top face
				                     0.0f, 1.0f, 0.0f,
				                     0.0f, 0.0f, 0.0f,
				                     1.0f, 0.0f, 0.0f,
				                     1.0f, 1.0f, 0.0f,
				                     // Bottom face
				                     1.0f, 1.0f, 0.0f,
				                     0.0f, 1.0f, 0.0f,
				                     0.0f, 0.0f, 0.0f,
				                     1.0f, 0.0f, 0.0f,
				                     // Right face
				                     1.0f, 0.0f, 0.0f,
				                     1.0f, 1.0f, 0.0f,
				                     0.0f, 1.0f, 0.0f,
				                     0.0f, 0.0f, 0.0f,
				                     // Left face
				                     0.0f, 0.0f, 0.0f,
				                     1.0f, 0.0f, 0.0f,
				                     1.0f, 1.0f, 0.0f,
				                     0.0f, 1.0f, 0.0f});
		textureUnitArray.add(new char[]{0,0,0,0,// Front face
										 // Back face
										 0,0,0,0,
										 // Top face
										 0,0,0,0,
										 // Bottom face
										 0,0,0,0,
										 // Right face
										 0,0,0,0,
										 // Left face
										 0,0,0,0});
		indexArray.add(new char[]{0, 1, 2,      0, 2, 3,    // Front face
				                   4, 5, 6,      4, 6, 7,    // Back face
				                   8, 9, 10,     8, 10, 11,  // Top face
				                   12, 13, 14,   12, 14, 15, // Bottom face
				                   16, 17, 18,   16, 18, 19, // Right face
				                   20, 21, 22,   20, 22, 23});  // Left face
		
		return this;
	}
	
	public Mesh loadFBX(Context context, String file) {
		vertexArray = new ArrayList<float[]>();
		normalArray = new ArrayList<float[]>();
		textureArray = new ArrayList<float[]>();
		textureUnitArray = new ArrayList<char[]>();
		indexArray = new ArrayList<char[]>();
		
		AssetManager assetManager = context.getAssets();
		
		List<FBX_Geometry> arrayFBX_Geometry = new ArrayList<FBX_Geometry>();
		List<FBX_Model> arrayFBX_Model = new ArrayList<FBX_Model>();
		List<FBX_Material> arrayFBX_Material = new ArrayList<FBX_Material>();
		List<FBX_Texture> arrayFBX_Texture = new ArrayList<FBX_Texture>();
		
		char openB = new String("{").charAt(0);
        char closeB = new String("}").charAt(0);
        
        InputStream input;
        try {
        	input = assetManager.open(file);
            int size = input.available();
            byte[] buffer = new byte[size];
            input.read(buffer);
            input.close();
            String text = new String(buffer);
             
            // READ FBX_OBJECTS
            int start = text.lastIndexOf("Objects:");
            while(true) {
            	if(text.charAt(start) == openB) break;
            	else start++;
            }
                          
            int opBr = 1;
            int end = start;
            while(true) {
            	end++;
            	if(text.charAt(end) == openB) {
            		opBr++;
            	} else if(text.charAt(end) == closeB) {
            		opBr--;
            		if(opBr == 0) break;
            	}
            }
            
            String value = text.substring(start, end+1); // the content of Objects:{..} whith brackets
            //System.out.println(value);
            
            Map<String, String> list = getFirstLevelHashMap(value);            
            Iterator<Map.Entry<String,String>> itr1 = list.entrySet().iterator();
            while(itr1.hasNext()) {
            	Map.Entry<String,String> entry = itr1.next();
                if(entry.getKey().trim().matches("^Geometry")) {
                	FBX_Geometry geometry = new FBX_Geometry();
                	arrayFBX_Geometry.add(geometry);
                	
                	geometry.id = Integer.parseInt(entry.getValue().split(",")[0].trim());
                	geometry.name = entry.getValue().split(",")[1].split("\"")[1].trim();
                	                	
                	Map<String, String> list2 = getFirstLevelHashMap(entry.getValue());
                	Iterator<Map.Entry<String,String>> itr2 = list2.entrySet().iterator();
                    while(itr2.hasNext()) {
                        Map.Entry<String,String> entry2 = itr2.next();
                        if(entry2.getKey().trim().matches("^Properties70")) {
                        	FBX_GeometryProperties geometryProp = new FBX_GeometryProperties();
                        	geometry.geometryProperties = geometryProp;
                        	
                        	String val = entry2.getValue().split("\\}")[0].split("\\{")[1];
                        	geometry.geometryProperties.Color = new float[]{Float.parseFloat(val.split(",")[4].trim()), Float.parseFloat(val.split(",")[5].trim()), Float.parseFloat(val.split(",")[6].trim())};
                        }
                        if(entry2.getKey().trim().matches("^Vertices")) {
                        	String val = entry2.getValue().split("\\}")[0].split("\\{")[1];
                        	String[] explV = val.split(":")[1].split(",");
                        	float[] v = new float[explV.length];
                        	for(int n=0; n < explV.length; n++)
                        		v[n] = Float.parseFloat(explV[n].trim());
                        	geometry.Vertices = v;
                        }
                        if(entry2.getKey().trim().matches("^PolygonVertexIndex")) {
                        	String val = entry2.getValue().split("\\}")[0].split("\\{")[1];
                        	String[] explV = val.split(":")[1].split(",");
                        	char[] v = new char[explV.length];
                        	for(int n=0; n < explV.length; n++) {
                        		int i = Integer.parseInt(explV[n].trim());
                        		if(i < 0)
                        			v[n] = (char)((i*-1.0f)-1.0f);
                        		else
                        			v[n] = (char)i;
                        	}
                        	geometry.PolygonVertexIndex = v;
                        }
                        if(entry2.getKey().trim().matches("^LayerElementNormal")) {
                        	geometry.LayerElementNormal = new FBX_LayerElementNormal();
                        	
                        	Map<String, String> list3 = getFirstLevelHashMap(entry2.getValue());
                        	Iterator<Map.Entry<String,String>> itr3 = list3.entrySet().iterator();
                            while(itr3.hasNext()) {
                            	Map.Entry<String,String> entry3 = itr3.next();
                            	if(entry3.getKey().trim().matches("^MappingInformationType")) {
                            		geometry.LayerElementNormal.MappingInformationType = entry3.getValue().split("\"")[1];
                            	}
                            	if(entry3.getKey().trim().matches("^ReferenceInformationType")) {
                            		geometry.LayerElementNormal.ReferenceInformationType = entry3.getValue().split("\"")[1];
                            	}
                            	if(entry3.getKey().trim().matches("^Normals")) {
                            		String val = entry3.getValue().split("\\}")[0].split("\\{")[1];
                            		String[] explV = val.split(":")[1].split(",");
                            		float[] v = new float[explV.length];
                                	for(int n=0; n < explV.length; n++)
                                		v[n] = Float.parseFloat(explV[n].trim());
                                	geometry.LayerElementNormal.Normals = v;
                            	}
                            }
                        	
                        }
                        if(entry2.getKey().trim().matches("^LayerElementUV")) {
                        	geometry.LayerElementUV = new FBX_LayerElementUV();
                        	
                        	Map<String, String> list3 = getFirstLevelHashMap(entry2.getValue());
                        	Iterator<Map.Entry<String,String>> itr3 = list3.entrySet().iterator();
                            while(itr3.hasNext()) {
                            	Map.Entry<String,String> entry3 = itr3.next();
                            	if(entry3.getKey().trim().matches("^MappingInformationType")) {
                            		geometry.LayerElementUV.MappingInformationType = entry3.getValue().split("\"")[1];
                            	}
                            	if(entry3.getKey().trim().matches("^ReferenceInformationType")) {
                            		geometry.LayerElementUV.ReferenceInformationType = entry3.getValue().split("\"")[1];
                            	}
                            	if(entry3.getKey().trim().matches("^UV")) {
                            		String val = entry3.getValue().split("\\}")[0].split("\\{")[1];
                            		String[] explV = val.split(":")[1].split(",");
                            		float[] v = new float[explV.length];
                                	for(int n=0; n < explV.length; n++)
                                		v[n] = Float.parseFloat(explV[n].trim());
                                	geometry.LayerElementUV.UV = v;
                            	}
                            	if(entry3.getKey().trim().matches("^UVIndex")) {
                            		String val = entry3.getValue().split("\\}")[0].split("\\{")[1];
                            		String[] explV = val.split(":")[1].split(",");
                            		int[] v = new int[explV.length];
                                	for(int n=0; n < explV.length; n++)
                                		v[n] = Integer.parseInt(explV[n].trim());
                                	geometry.LayerElementUV.UVIndex = v;
                            	}
                            }                        	
                        }
                    }
                }// end Geometry
                if(entry.getKey().trim().matches("^Model")) {
                	FBX_Model model = new FBX_Model();
                	arrayFBX_Model.add(model);
                	
                	model.id = Integer.parseInt(entry.getValue().split(",")[0].trim());
                	model.name = entry.getValue().split(",")[1].split("\"")[1].trim();
                	
                	Map<String, String> list2 = getFirstLevelHashMap(entry.getValue());
                	Iterator<Map.Entry<String,String>> itr2 = list2.entrySet().iterator();
                    while(itr2.hasNext()) {
                    	Map.Entry<String,String> entry2 = itr2.next();
                        if(entry2.getKey().trim().matches("^Properties70")) {
                        	FBX_ModelProperties modelProp = new FBX_ModelProperties();
                        	model.modelProperties = modelProp;
                        	
                        	Map<String, String> list3 = getFirstLevelHashMap(entry2.getValue());
                        	Iterator<Map.Entry<String,String>> itr3 = list3.entrySet().iterator();
                            while(itr3.hasNext()) {
                            	Map.Entry<String,String> entry3 = itr3.next();
                            	if(entry3.getValue().matches(".*\"PreRotation\".*")) {
                            		model.modelProperties.PreRotation = new float[]{Float.parseFloat(entry3.getValue().split(",")[4].trim()),
                            														Float.parseFloat(entry3.getValue().split(",")[5].trim()),
                            														Float.parseFloat(entry3.getValue().split(",")[6].trim())};
                            	}
                            	if(entry3.getValue().matches(".*\"Lcl Translation\".*")) {
                            		model.modelProperties.LclTranslation = new float[]{	Float.parseFloat(entry3.getValue().split(",")[4].trim()),
                            															Float.parseFloat(entry3.getValue().split(",")[5].trim()),
                            															Float.parseFloat(entry3.getValue().split(",")[6].trim())};
                            	}
                            }
                        }
                    }
                }// end Model
                if(entry.getKey().trim().matches("^Texture")) {
                	FBX_Texture texture = new FBX_Texture();
                	arrayFBX_Texture.add(texture);
                	
                	texture.id = Integer.parseInt(entry.getValue().split(",")[0].trim());
                	texture.name = entry.getValue().split(",")[1].split("\"")[1].trim();
                	
                	Map<String, String> list2 = getFirstLevelHashMap(entry.getValue());
                	Iterator<Map.Entry<String,String>> itr2 = list2.entrySet().iterator();
                    while(itr2.hasNext()) {
                    	Map.Entry<String,String> entry2 = itr2.next();
                    	if(entry2.getKey().trim().matches("^FileName")) {
                    		texture.FileName = entry2.getValue().split("\"")[1];
                    	}
                    }
                }// end Texture
                if(entry.getKey().trim().matches("^Material")) {
                	FBX_Material material = new FBX_Material();
                	arrayFBX_Material.add(material);
                	
                	material.id = Integer.parseInt(entry.getValue().split(",")[0].trim());
                	material.name = entry.getValue().split(",")[1].split("\"")[1].trim();
                	
                	Map<String, String> list2 = getFirstLevelHashMap(entry.getValue());
                	Iterator<Map.Entry<String,String>> itr2 = list2.entrySet().iterator();
                    while(itr2.hasNext()) {
                    	Map.Entry<String,String> entry2 = itr2.next();
                    	if(entry2.getKey().trim().matches("^Properties70")) {
                    		FBX_MaterialProperties materialProp = new FBX_MaterialProperties();
                    		material.materialProperties = materialProp;
                    		
                    		Map<String, String> list3 = getFirstLevelHashMap(entry2.getValue());
                        	Iterator<Map.Entry<String,String>> itr3 = list3.entrySet().iterator();
                            while(itr3.hasNext()) {
                            	Map.Entry<String,String> entry3 = itr3.next();                            	
                            	if(entry3.getValue().matches(".*\"DiffuseColor\".*")) {
                            		material.materialProperties.DiffuseColor = new float[]{	Float.parseFloat(entry3.getValue().split(",")[4].trim()),
                            																Float.parseFloat(entry3.getValue().split(",")[5].trim()),
                            																Float.parseFloat(entry3.getValue().split(",")[6].trim())};
                            	}
                            	if(entry3.getValue().matches(".*\"SpecularFactor\".*")) {
                            		material.materialProperties.SpecularFactor = Float.parseFloat(entry3.getValue().split(",")[4].trim());
                            	}
                            	if(entry3.getValue().matches(".*\"ShininessExponent\".*")) {
                            		material.materialProperties.ShininessExponent = Float.parseFloat(entry3.getValue().split(",")[4].trim());
                            	}
                            	if(entry3.getValue().matches(".*\"Emissive\".*")) {
                            		material.materialProperties.Emissive = new float[]{	Float.parseFloat(entry3.getValue().split(",")[4].trim()),
                            															Float.parseFloat(entry3.getValue().split(",")[5].trim()),
                            															Float.parseFloat(entry3.getValue().split(",")[6].trim())};
                            	}
                            }
                    	}
                    }
                }// end Material
                
               //System.out.println("KEY"+entry.getKey()+"\r\n VALUE"+entry.getValue()+"\r\n\r\n\r\n\r\n ");
            }
            
            
            // READ FBX_CONNECTIONS
            start = text.lastIndexOf("Connections:");
            while(true) {
            	if(text.charAt(start) == openB) break;
            	else start++;
            }
                          
            opBr = 1;
            end = start;
            while(true) {
            	end++;
            	if(text.charAt(end) == openB) {
            		opBr++;
            	} else if(text.charAt(end) == closeB) {
            		opBr--;
            		if(opBr == 0) break;
            	}
            }
            
            value = text.substring(start, end+1); // the content of Objects:{..} whith brackets
            //System.out.println(value);
            
            String[] explV = value.split("\\}")[0].split("\\{")[1].split(";");
            for(int n=0; n < explV.length; n++) {
            	if(!explV[n].matches("^(\\s|\\t)+")) {
	            	//System.out.println(explV[n]+"<\r\n");
	            	String typeA = explV[n].split(",")[0].split(":")[0].trim();
	            	String typeB = explV[n].split(",")[1].split(":")[0].trim();
	            	int idA = Integer.parseInt(explV[n].split(",")[2].trim());
	            	int idB = Integer.parseInt(explV[n].split(",")[3].trim());
	            	
	            	int nb, nc;
	            	if(typeB.equals("Model") && typeA.equals("Geometry")) {
		            	for(nb=0; nb < arrayFBX_Geometry.size(); nb++) {
		            		if(arrayFBX_Geometry.get(nb).id == idA) {
		            			List<Float> item;
		            			float[] arr;
		            			/*
		            			item = new ArrayList<Float>();
	            				for(nc=0; nc < arrayFBX_Geometry.get(nb).PolygonVertexIndex.length; nc++) {
	            					int id = arrayFBX_Geometry.get(nb).PolygonVertexIndex[nc];
	            					System.out.println(id+"\r\n");
	            					item.add(arrayFBX_Geometry.get(nb).Vertices[id*3]);
	            					item.add(arrayFBX_Geometry.get(nb).Vertices[(id*3)+1]);
	            					item.add(arrayFBX_Geometry.get(nb).Vertices[(id*3)+2]);
	            				}
	            				
	            				arr = new float[item.size()];
	            				for(nc=0; nc < arr.length; nc++)
	            					arr[nc] = item.get(nc);
	            				
	            				vertexArray.add(arr);*/
		            			
		            			// vertexs
		            			vertexArray.add(arrayFBX_Geometry.get(nb).Vertices);
		            			
		            			// normals
		            			if(arrayFBX_Geometry.get(nb).LayerElementNormal.ReferenceInformationType.equals("IndexToDirect")) {
		            				
		            			} else {
			            			arr = new float[arrayFBX_Geometry.get(nb).PolygonVertexIndex.length*3];
			            			for(nc=0; nc < arrayFBX_Geometry.get(nb).PolygonVertexIndex.length; nc++) {
			            				int id = arrayFBX_Geometry.get(nb).PolygonVertexIndex[nc];
			            				
			            				arr[(id*3)] = arrayFBX_Geometry.get(nb).LayerElementNormal.Normals[(nc*3)];
			            				arr[(id*3)+1] = arrayFBX_Geometry.get(nb).LayerElementNormal.Normals[(nc*3)+1];
			            				arr[(id*3)+2] = arrayFBX_Geometry.get(nb).LayerElementNormal.Normals[(nc*3)+2];
			            			}
			            			normalArray.add(arr);
		            			}
		            			
		            			// textures
		            			if(arrayFBX_Geometry.get(nb).LayerElementUV.ReferenceInformationType.equals("IndexToDirect")) {
		            				arr = new float[arrayFBX_Geometry.get(nb).PolygonVertexIndex.length*3];
			            			for(nc=0; nc < arrayFBX_Geometry.get(nb).PolygonVertexIndex.length; nc++) {
			            				int id = arrayFBX_Geometry.get(nb).PolygonVertexIndex[nc];
			            				int idLayer = arrayFBX_Geometry.get(nb).LayerElementUV.UVIndex[nc];
			            				
			            				arr[(id*3)] = arrayFBX_Geometry.get(nb).LayerElementUV.UV[(idLayer*2)];
			            				arr[(id*3)+1] = arrayFBX_Geometry.get(nb).LayerElementUV.UV[(idLayer*2)+1];
			            				arr[(id*3)+2] = 0.0f; 
			            			}
			            			textureArray.add(arr);		            				
		            			} else {
			            			arr = new float[arrayFBX_Geometry.get(nb).PolygonVertexIndex.length*3];
			            			for(nc=0; nc < arrayFBX_Geometry.get(nb).PolygonVertexIndex.length; nc++) {
			            				int id = arrayFBX_Geometry.get(nb).PolygonVertexIndex[nc];
			            				
			            				arr[(id*3)] = arrayFBX_Geometry.get(nb).LayerElementUV.UV[(nc*2)];
			            				arr[(id*3)+1] = arrayFBX_Geometry.get(nb).LayerElementUV.UV[(nc*2)+1];
			            				arr[(id*3)+2] = 0.0f;
			            			}
			            			textureArray.add(arr);
		            			}
		            			
		            			// indices
		            			indexArray.add(arrayFBX_Geometry.get(nb).PolygonVertexIndex);
		            		}
		            	}
	            	}
	            	if(typeB == "Model" && typeA == "Material") {
		            	for(nb=0; nb < arrayFBX_Material.size(); nb++) {
		            		if(arrayFBX_Material.get(nb).id == idA) {
		            			
		            		}
		            	}
	            	}
            	}
            }
            
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
		return this;
	}
	
	public Map<String, String> getFirstLevelHashMap(String text) {
		char dots = new String(":").charAt(0);
		char openB = new String("{").charAt(0);
		char closeB = new String("}").charAt(0);
		char cr = new String("\r").charAt(0);
		char lf = new String("\n").charAt(0);
		
		int startKey = 0;
		int endKeyStartValue;
		int endValue;
		
		while(true) {  			
        	if(text.charAt(startKey) == openB) break;
        	startKey++;
        }
		startKey++;
		
		int acum = 2;
		Map<String, String> json = new HashMap<String, String>();		
		while(true) {	
			endKeyStartValue = startKey+1;
	        while(true) {	        	
	        	if(endKeyStartValue >= text.length()) break;
	        	
	        	if(text.charAt(endKeyStartValue) == dots) {
	        		break;
	        	}
	        	endKeyStartValue++;
	        }
	        
	        int br = 0;
	        endValue = endKeyStartValue+1;
	        while(true) {	        	
	        	if(endValue >= text.length()) break;
	        		        		
	        	if(text.charAt(endValue) == openB) {
	        		br++;
	        	}
	        	if(text.charAt(endValue) == closeB) {
	        		br--;
	        		if(br == 0) break;
	        	}
	        	if(text.charAt(endValue) == cr) {
	        		if(br == 0) break;
	        	}
	        	endValue++;
	        }
	        
	        if(endKeyStartValue >= text.length()) break;
	        if(endValue >= text.length()) break;
	        
	        String k = text.substring(startKey, endKeyStartValue).trim();
	        String v = text.substring(endKeyStartValue+1, endValue+1).trim();
	        //System.out.println("\r\n-------------------\r\n"+k+"\r\n "+v);
	        if(json.containsKey(k)) {	        	
	        	json.put(k+acum, v);
	        	acum++;
	        } else {
	        	json.put(k, v);
	        }
	        
	        startKey = endValue+1;
	        
	        if(startKey >= text.length()) break;
		}
		
		return json;
	}
	
}
