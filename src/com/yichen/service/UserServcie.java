package com.yichen.service;

import java.util.List;

import com.yichen.model.Page;
import com.yichen.model.UserVo;

/**
 * 用户service
 * @author Administrator
 *
 */
public interface UserServcie {
	
	UserVo checkLogin(UserVo userVo);//登录验证
	
	int registerUesr(UserVo userVo);//注册

	List<UserVo> findAllUserVos(Page page);// 查询用户

	int saveUserVo(UserVo userVo);// 添加用户

	int modifyUserVo(UserVo userVo);// 更新用户

	int deleteUserVo(String id);// 删除用户

	UserVo findAllUserVoById(String id);// 通过id查询用户
	
	int findUserVoCounts();//查询用户总数

	int checkLoginName(String loginName);//用户名校验

	int checkEmail(String email, String  loginName);//邮箱校验

	int updatePassword(String password, String loginName);//更新密码

	int batchDel(List<String> list); //批量删除
	

}
