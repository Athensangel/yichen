package com.yichen.interceptor;

import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
  
import org.springframework.web.servlet.HandlerInterceptor;  
import org.springframework.web.servlet.ModelAndView;  

/** 
 * 登录认证的拦截器 
 */  
public class LoginInterceptor implements HandlerInterceptor{  
  
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
       	 //说明处在编辑的页面
       	 HttpSession session = request.getSession();
       	 String loginName = (String) session.getAttribute("loginName");
       	 if(loginName != null){
       		 //登陆成功的用户
       		 return true;
       	 }else{
       		//没有登陆，转向登陆界面
   	         request.getRequestDispatcher("/WEB-INF/backstage/login.jsp").forward(request,response);
   		   return false;
       	 }
        }else{
       	   return true;
        }
    }  
  
}  

