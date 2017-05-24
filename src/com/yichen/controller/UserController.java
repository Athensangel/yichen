package com.yichen.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	private String message;
	
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	/**
	 * 登录
	 * @return
	 */
	@RequestMapping("yc_2017")
	public String backLoginIndex(){
		return "WEB-INF/backstage/login";
	}
	
	/**
	 * 首页
	 * @return
	 */
	@RequestMapping("backIndex")
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
	 * @param userVo
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
	 * @param id
	 * @param map
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
	 * @param userVo
	 * @return
	 */
	@RequestMapping("back/user/modify")
	public String backUserModify(UserVo userVo){
		userService.modifyUserVo(userVo);
		return "redirect:list/1";
	}
	
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@RequestMapping("back/user/del")
	public String backUserDel(String id){
		userService.deleteUserVo(id);
		return "redirect:list/1";
	}
	
	/**
	 * 登录验证
	 * @param userVo
	 * @return
	 */
	@RequestMapping("/user/checkLogin")
	public String backCheckLogin(UserVo userVo,RedirectAttributes attr,HttpSession session){
		UserVo currentUserVo = userService.checkLogin(userVo);
		if(currentUserVo != null){
			session.setAttribute("currentUserVo", currentUserVo);
			session.setAttribute("loginName", currentUserVo.getLoginName());
			return "redirect:/backIndex"; //用户名密码正确
		}else{
			 message="登录失败:用户名?密码错误?用户未激活?";
			 attr.addFlashAttribute("message", message);
			return "redirect:/yc_2017";//用户名密码错误
		}
	}
	
	/**
	 * main
	 * @return
	 */
	@RequestMapping("back/user/main")
	public String backUserMain(){
		return "WEB-INF/backstage/main";
	}
	
	/**
	 * 登录
	 * @return
	 */
	@RequestMapping("/login")
	public String login(){
		return "WEB-INF/front/login/login";
	}
	
	/**
	 * 登录验证
	 * @return
	 */
	@RequestMapping("/loginValidate")
	public String loginValidate(UserVo userVo,RedirectAttributes attr,HttpSession session){
		UserVo currentUserVo = userService.checkLogin(userVo);
		if(currentUserVo != null){
			session.setAttribute("currentUserVo", currentUserVo);
			session.setAttribute("loginName", currentUserVo.getLoginName());
			return "redirect:/main"; //用户名密码正确
		}else{
			 message="登录失败:用户名?密码错误?用户未激活?";
			 attr.addFlashAttribute("message", message);
			return "redirect:/login";//用户名密码错误
		}
	}
	
	/**
	 * 注册
	 * @return
	 */
	@RequestMapping("/loginRegister")
	public String loginRegister(UserVo userVo){
		  userVo.setId(UUIDUtil.getUUID());
		  userService.saveUserVo(userVo) ;
		return "redirect:login";
	}
	
	/**
	 * 用户名校验
	 * @return
	 */
	@RequestMapping("/checkLoginName")
	@ResponseBody
	public int checkLoginName(String loginName){
		  int result = userService.checkLoginName(loginName);
		  return result ;
		}
	
	/**
	 * 退出登录
	 * @return
	 */
	@RequestMapping("/loginExt")
	public String loginExt(HttpSession session){
		session.invalidate();
		return "redirect:login";
	}
	
}
