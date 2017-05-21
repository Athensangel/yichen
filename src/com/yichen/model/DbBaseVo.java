package com.yichen.model;

import java.util.Date;
import com.yichen.utils.UUIDUtil;

/**
 * 基础实体类
 * 
 */
public abstract class DbBaseVo<T>{
	/* 主键 */
	private String id;
	/* 删除标识 */
	private String delFlag;
	/* 新增时间 ,插入时，此字段设为 now() **/
	private Date addTime;
	/* 新增用户Id */
	private String addUserId;
	/* 更新时间 ,插入、更新时，此字段设为 now() */
	private Date updTime;
	/* 更新用户Id */
	private String updUserId;
	/* 排他字段 */
	private int exclusiveKey;

	/**
	 * 新增前，共通字段 设置
	 * 
	 * @param userId 用户Id
	 */
	public void preInsert(String userId) {
		this.id = UUIDUtil.getUUID();
		this.addUserId = userId;
		this.updUserId = userId;
	}

	/**
	 * 修改前，共通字段 设置
	 *
	 * @param userId 用户Id
	 */
	public void preUpdate(String userId) {
		if (id == null) {
			throw new IllegalStateException("preUpdate调用时，id不能为空.");
		}
		this.updUserId = userId;
	}

	public String getDelFlag() {
		return delFlag;
	}

	public void setDelFlag(String delFlag) {
		this.delFlag = delFlag;
	}

	public Date getAddTime() {
		return addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}

	public String getAddUserId() {
		return addUserId;
	}

	public void setAddUserId(String addUserId) {
		this.addUserId = addUserId;
	}

	public Date getUpdTime() {
		return updTime;
	}

	public void setUpdTime(Date updTime) {
		this.updTime = updTime;
	}

	public String getUpdUserId() {
		return updUserId;
	}

	public void setUpdUserId(String updUserId) {
		this.updUserId = updUserId;
	}

	public int getExclusiveKey() {
		return exclusiveKey;
	}

	public void setExclusiveKey(int exclusiveKey) {
		this.exclusiveKey = exclusiveKey;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
