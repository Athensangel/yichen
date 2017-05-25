package com.yichen.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yichen.mapper.UserMapper;
import com.yichen.model.Page;
import com.yichen.model.UserVo;
import com.yichen.service.UserServcie;

/**
 * 用户service实现
 * @author Administrator
 *
 */
@Service
public class UserServcieImpl implements UserServcie{
	
	@Resource
	private UserMapper userMapper;

	@Override
	public List<UserVo> findAllUserVos(Page page) {
		return userMapper.queryAllUserVos(page);
	}

	@Override
	public int saveUserVo(UserVo userVo) {
		return userMapper.insertUserVo(userVo);
	}

	@Override
	public int modifyUserVo(UserVo userVo) {
		return userMapper.updateUserVo(userVo);
	}

	@Override
	public int deleteUserVo(String id) {
		return userMapper.delUserVo(id);
	}

	@Override
	public UserVo findAllUserVoById(String id) {
		return userMapper.queryAllUserVoById(id);
	}

	@Override
	public int registerUesr(UserVo userVo) {
		return userMapper.signUesr(userVo);
	}

	@Override
	public UserVo checkLogin(UserVo userVo) {
		return userMapper.checkLogin(userVo);
	}

	@Override
	public int findUserVoCounts() {
		return userMapper.findUserVoCounts();
	}

	@Override
	public int checkLoginName(String loginName) {
		return userMapper.checkLoginName(loginName);
	}

	@Override
	public int checkEmail(String email, String  loginName) {
		return userMapper.checkEmail(email,loginName);
	}

	@Override
	public int updatePassword(String password, String loginName) {
		return userMapper.updatePassword(password,loginName);
	}

}
