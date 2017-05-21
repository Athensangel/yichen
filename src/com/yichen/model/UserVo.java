package com.yichen.model;


/**
 * 用户Vo
 * 
 */
public class UserVo extends DbBaseVo<UserVo>{

	private String loginName;// 登录名
	private String password;// 密码
	private String name;// 姓名
	private String email;// 邮箱
	private String tel;// 电话
	private String sex;// 性别（0：女，1：男）
	private String headphoto;// 头像地址
	private String remark;// 备注
	private String state;// 状态（0：禁用，1：启用）
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getHeadphoto() {
		return headphoto;
	}
	public void setHeadphoto(String headphoto) {
		this.headphoto = headphoto;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
}
