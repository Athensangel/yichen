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
		return "login";
	}
	
	@RequestMapping("index")
	public String backLogin(){
		return "index";
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
		return "views/user/userList";
	}
	
	
}
