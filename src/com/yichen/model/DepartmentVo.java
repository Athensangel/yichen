package com.yichen.model;

/**
 * 部门实体类
 */
public class DepartmentVo extends DbBaseVo<DepartmentVo>{

	private String name;// 部门名称
	private String type;// 部门类型
	private String introducte; //简介
	private String imagePath; //图片路径
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getIntroducte() {
		return introducte;
	}
	public void setIntroducte(String introducte) {
		this.introducte = introducte;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
}
