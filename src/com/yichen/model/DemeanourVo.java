package com.yichen.model;

/**
 * 活动风采
 * @author Administrator
 *
 */
public class DemeanourVo extends DbBaseVo<DemeanourVo>{
	private String title;
	private String content;
	private String imagePath; //图片路径
	private Integer dataCategory;
	private Integer pageNow;
	private String currentTime;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public Integer getDataCategory() {
		return dataCategory;
	}
	public void setDataCategory(Integer dataCategory) {
		this.dataCategory = dataCategory;
	}
	public Integer getPageNow() {
		return pageNow;
	}
	public void setPageNow(Integer pageNow) {
		this.pageNow = pageNow;
	}
	public String getCurrentTime() {
		return currentTime;
	}
	public void setCurrentTime(String currentTime) {
		this.currentTime = currentTime;
	}
	
}
