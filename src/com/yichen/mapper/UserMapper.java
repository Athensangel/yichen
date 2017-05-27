package com.yichen.mapper;

import java.util.List;

import com.yichen.model.Page;
import com.yichen.model.UserVo;
/**
 * 用户mapper
 * @author Administrator
 *
 */
public interface UserMapper {

	UserVo checkLogin(UserVo userVo);// 登录验证

	int signUesr(UserVo userVo);// 注册

	List<UserVo> queryAllUserVos(Page page);// 查询用户

	int insertUserVo(UserVo userVo);// 添加用户

	int updateUserVo(UserVo userVo);// 更新用户

	int delUserVo(String id);// 删除用户

	UserVo queryAllUserVoById(String id);// 通过id查询用户

	int findUserVoCounts();

	int checkLoginName(String loginName); //用户名校验

	int checkEmail(String email, String loginName);//邮箱校验

	int updatePassword(String password, String loginName);//更新密码

	int batchDel(List<String> list);//批量删除

}
