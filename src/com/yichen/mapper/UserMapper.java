package com.yichen.mapper;

import java.util.List;

import com.yichen.model.UserVo;
/**
 * 用户mapper
 * @author Administrator
 *
 */
public interface UserMapper {
	
	public UserVo checkLogin(String loginName,String password);//登录验证
	
	public int signUesr(UserVo userVo);//注册
	
	public List<UserVo> queryAllUserVos();// 查询用户

	public int insertUserVo(UserVo userVo);// 添加用户

	public int updateUserVo(UserVo userVo);// 更新用户

	public int delUserVo(String id);// 删除用户

	public UserVo queryAllUserVoById(String id);// 通过id查询用户

	public int findUserVoCounts();

}
