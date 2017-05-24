package com.yichen.model;

/**
 * 部门实体类
 */
public class DepartmentVo extends DbBaseVo<DepartmentVo>{

	private String name;// 部门名称
	private String type;// 部门类型
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
	@Override
	public String toString() {
		return "DepartmentVo [name=" + name + ", type=" + type + "]";
	}
}
