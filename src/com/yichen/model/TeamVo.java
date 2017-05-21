package com.yichen.model;

/**
 * 旗队实体类
 * @author cc
 *
 */
public class TeamVo extends DbBaseVo<TeamVo> {
	
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "TeamVo [name=" + name + "]";
	}
}
