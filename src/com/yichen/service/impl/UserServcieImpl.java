package com.yichen.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yichen.mapper.UserMapper;
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
	public List<UserVo> findAllUserVos() {
		return userMapper.queryAllUserVos();
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
	public UserVo checkLogin(String loginName, String password) {
		return userMapper.checkLogin(loginName, password);
	}

	@Override
	public int findUserVoCounts() {
		return userMapper.findUserVoCounts();
	}

}
