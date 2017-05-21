package com.yichen.model;

/**
 *  资讯公告Vo
 * @author Administrator
 *
 */
public class MessageVo extends DbBaseVo<MessageVo>{
	private String title; //标题
	private String type;//类型(1，动态，2公告）
	private String content;//内容
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
