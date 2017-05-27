package com.yichen.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yichen.model.DictVo;
import com.yichen.model.Page;
import com.yichen.model.UserVo;
import com.yichen.service.DictService;
import com.yichen.service.UserServcie;
import com.yichen.utils.SendMailUtil;
import com.yichen.utils.StringRandomUtils;
import com.yichen.utils.UUIDUtil;
import com.yichen.utils.VerifyCodeUtils;

/**
 *用户Controller
 * @author Administrator
 *
 */
@Controller
public class UserController {
	
	@Autowired
	private DictService dictService;
	
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
			session.setAttribute("id", currentUserVo.getId());
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
	public String loginRegister(UserVo userVo, RedirectAttributes attr) {
		int result = checkLoginName(userVo.getLoginName());
		if (result > 0) {
			 message = "注册失败:用户名已存在!";
			 attr.addFlashAttribute("message", message);
			return "redirect:login";
		} else {
			userVo.setId(UUIDUtil.getUUID());
			userService.saveUserVo(userVo);
			return "redirect:login";
		}
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
		return "index";
	}
	
	/**
	 * 跳转棋手注册
	 * @return
	 */
	@RequestMapping("/chessReg")
	public String chessReg(ModelMap map,DictVo dictVo){
		dictVo.setType("chessType");
		List<DictVo> dvList = dictService.findDicts(dictVo);
		map.put("dvList", dvList);
		return "WEB-INF/front/chess/register";
	}
	
	/**
	 * 棋手注册
	 */
	@RequestMapping("/loginPlayer")
	public String loginPlayer(UserVo userVo, RedirectAttributes attr){
		int result = checkLoginName(userVo.getLoginName());
		if (result > 0) {
			 message = "注册失败:用户名已存在!";
			 attr.addFlashAttribute("message", message);
			 return "redirect:chessReg";
		}else{
			userVo.setId(UUIDUtil.getUUID());
			userService.saveUserVo(userVo);
		}
		return "redirect:login";
	}
	
	/**
	 * 忘记密码
	 * @return
	 */
	@RequestMapping("/forgetPassword")
	public String forgetPassword(){
		return "WEB-INF/front/login/forget";
	}
	
	@RequestMapping("/createVerifyCode")
	 public void createVerifyCode(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
	        response.setHeader("Pragma", "No-cache");  
	        response.setHeader("Cache-Control", "no-cache");  
	        response.setDateHeader("Expires", 0);  
	        response.setContentType("image/jpeg");  
	          
	        //生成随机字串  
	        String verifyCode = VerifyCodeUtils.generateVerifyCode(4);  
	        //存入会话session  
	        HttpSession session = request.getSession(true);  
	        session.setAttribute("verifyCode", verifyCode.toLowerCase());  
	        //生成图片  
	        int w = 100, h = 30;  
	        VerifyCodeUtils.outputImage(w, h, response.getOutputStream(), verifyCode);  
	  
	    }  
	
	/**
	 * 忘记密码验证登录名
	 * @return
	 */
	@RequestMapping("/fpVerify")
	public String fpVerify(String loginName,String verifyCode,RedirectAttributes attr,HttpSession session){
		if(verifyCode.equals(session.getAttribute("verifyCode"))){
			int result = userService.checkLoginName(loginName);
			if(result >0){
				session.setAttribute("forgetLoginName", loginName);
				return "WEB-INF/front/login/forget2";
			}else{
				 message="用户名不存在";
				 attr.addFlashAttribute("message1", message);
				 return "redirect:/forgetPassword";//用户名不存在
			}
		}else{
			message="验证码错误";
			 attr.addFlashAttribute("message2", message);
			 return "redirect:/forgetPassword";//验证码错误
		}
		
	}
	
	/**
	 * 邮箱验证
	 * @return
	 */
	@RequestMapping("/emailVerify")
	public String emailVerify(String email,String emailCode,HttpSession session,ModelMap map){
		int result = userService.checkEmail(email,(String)session.getAttribute("forgetLoginName"));
		if(result > 0){
			if(emailCode .equals((String)session.getAttribute("forgetEmailCode"))){}
			return "WEB-INF/front/login/forget3";
		}else{
			 message="邮箱不存在";
			 map.put("message3", message);
			 return "WEB-INF/front/login/forget2";
		}
	}
	
	/**
	 * 获取邮箱验证码
	 * @return
	 */
	@RequestMapping("/getEmailCode")
	public String getEmailCode(String email,HttpSession session,ModelMap map){
		String emailCode =StringRandomUtils.getStringRandom(6);
		session.setAttribute("forgetEmailCode", emailCode);
		SendMailUtil.sendCommonMail(email, "弈辰棋社密码找回邮件，您找回密码的验证码为", emailCode);
		map.put("email", email);
	  return "WEB-INF/front/login/forget2";
	}
	
	/**
	 *  更新密码
	 */
	@RequestMapping("/updatePassword")
	public String updatePassword(String password,HttpSession session){
		userService.updatePassword(password,(String)session.getAttribute("forgetLoginName"));
		return "WEB-INF/front/login/forget4";
	}
}
