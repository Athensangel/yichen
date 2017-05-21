package com.yichen.model;

/**
 * 棋种
 * @author cc
 *
 */
public class ChessVo extends DbBaseVo<ChessVo> {
	
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
