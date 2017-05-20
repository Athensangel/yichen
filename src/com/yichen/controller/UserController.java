package com.yichen.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.yichen.model.Page;
import com.yichen.model.UserVo;
import com.yichen.service.UserServcie;
import com.yichen.utils.UUIDUtil;

/**
 *用户Controller
 * @author Administrator
 *
 */
@Controller
public class UserController {
	
	@Autowired
	private UserServcie userService;
	
	@RequestMapping("jumpLogin")
	public String jumpLogin(){
		return "WEB-INF/views/login/login";
	}
	
	@RequestMapping(value="/signUser",method=RequestMethod.POST)
	public ModelAndView signUser(UserVo userVo){
		userVo.setId(UUIDUtil.getUUID());
		ModelAndView view = new ModelAndView();
		view.setView(new RedirectView("jumpLogin"));
		userService.registerUesr(userVo);
		return view;
	}
	
	@RequestMapping("yc_2017")
	public String backLoginIndex(){
		return "WEB-INF/backstage/login";
	}
	
	@RequestMapping("index")
	public String backLogin(){
		return "WEB-INF/backstage/index";
	}
	
	/**
	 * 用户列表分页
	 * @param map
	 * @param pageNow
	 * @return
	 */
	@RequestMapping("back/user/list/{pageNow}")
	public String backIndex(ModelMap map,@PathVariable Integer pageNow){
		int totalCount = userService.findUserVoCounts();//查询条数
		Page page = new Page(totalCount, pageNow);
		List<UserVo> userVoList = userService.findAllUserVos(page);//分页查询
		map.put("page", page);
		map.put("userVoList", userVoList);
		return "WEB-INF/backstage/views/user/userList";
	}
	
	/**
	 * 跳转到添加
	 * @return
	 */
	@RequestMapping("back/user/add")
	public String backUserAdd(){
		return "WEB-INF/backstage/views/user/userAdd";
	}
	
	/**
	 * 添加
	 * @return
	 */
	@RequestMapping("back/user/save")
	public String backUserSave(UserVo userVo){
		userVo.setId(UUIDUtil.getUUID());
		userService.saveUserVo(userVo);
		return "redirect:list/1";
	}
	
	/**
	 * 跳转到 修改
	 * @return
	 */
	@RequestMapping("back/user/up")
	public String backUserUp(String id,ModelMap map){
		UserVo userVo = userService.findAllUserVoById(id);
		map.put("userVo", userVo);
		return "WEB-INF/backstage/views/user/userUp";
	}
	
	/**
	 * 修改
	 * @return
	 */
	@RequestMapping("back/user/modify")
	public String backUserModify(UserVo userVo){
		userService.modifyUserVo(userVo);
		return "redirect:list/1";
	}
	
	/**
	 * 删除
	 * @param cc
	 * @return
	 */
	@RequestMapping("back/user/del")
	public String backUserDel(String id){
		userService.deleteUserVo(id);
		return "redirect:list/1";
	}
}
