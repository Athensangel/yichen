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
	private String birthday;// 生日
	private String chessTitle;//棋手称号
	private String company;//单位
	private String registeredIdentity;// 注册身份
	private String identity;// 身份证
	private String grade;// 等级
	private Integer gradeScore;//等级分数
	private String isChess;//是否棋手（0，否，1，是）
	private String chessType;//1围棋,2国际象棋,3象棋,4五子棋,5跳棋
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getChessTitle() {
		return chessTitle;
	}
	public void setChessTitle(String chessTitle) {
		this.chessTitle = chessTitle;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getRegisteredIdentity() {
		return registeredIdentity;
	}
	public void setRegisteredIdentity(String registeredIdentity) {
		this.registeredIdentity = registeredIdentity;
	}
	public String getIdentity() {
		return identity;
	}
	public void setIdentity(String identity) {
		this.identity = identity;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public Integer getGradeScore() {
		return gradeScore;
	}
	public void setGradeScore(Integer gradeScore) {
		this.gradeScore = gradeScore;
	}
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
	public String getIsChess() {
		return isChess;
	}
	public void setIsChess(String isChess) {
		this.isChess = isChess;
	}
	public String getChessType() {
		return chessType;
	}
	public void setChessType(String chessType) {
		this.chessType = chessType;
	}
}
