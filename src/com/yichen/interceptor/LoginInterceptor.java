package com.yichen.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;  
import org.springframework.web.servlet.ModelAndView;

import com.yichen.model.UserVo;
import com.yichen.service.UserServcie;  

/** 
 * 登录认证的拦截器 
 */  
public class LoginInterceptor implements HandlerInterceptor{  
	
	@Autowired
	private UserServcie userService;
  
    /** 
     * Handler执行完成之后调用这个方法 
     */  
    public void afterCompletion(HttpServletRequest request,  
            HttpServletResponse response, Object handler, Exception exc)  
            throws Exception {  
          
    }  
  
    /** 
     * Handler执行之后，ModelAndView返回之前调用这个方法 
     */  
    public void postHandle(HttpServletRequest request, HttpServletResponse response,  
            Object handler, ModelAndView modelAndView) throws Exception {  
    }  
  
    /** 
     * Handler执行之前调用这个方法 
     */  
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,  
            Object handler) throws Exception {  
        //获取请求的URL  
        String url = request.getRequestURI();  
        if(url.indexOf("back")>0){
        	String loginName = "";
    		String password = "";
    		//取出Cookie
    		Cookie [] c = request.getCookies();
    		if(c!= null){
    		for(int i=0;i<c.length;i++){
    		    if(c[i].getName().equals("rememberUser")){
    		        loginName=c[i].getValue().split("-")[0];
    		        password=c[i].getValue().split("-")[1];
    		    }
    		 }
    		UserVo uVo = new UserVo();
    		uVo.setLoginName(loginName);
    		uVo.setPassword(password);
    		UserVo resultUserVo = userService.checkLogin(uVo);
    		if(resultUserVo != null){
    			return true;
    		}else{
    			request.getRequestDispatcher("/WEB-INF/backstage/login.jsp").forward(request,response);
    	   		return false;
    		}
    		}else{
    			request.getRequestDispatcher("/WEB-INF/backstage/login.jsp").forward(request,response);
    	   		return false;
    		}
        }else{
       	   return true;
        }
    }  
  
}  

