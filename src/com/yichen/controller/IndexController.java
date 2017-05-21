package com.yichen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 网站首页
 * @author Administrator
 *
 */
@Controller
public class IndexController {
	
	/**
	 * 简介
	 * @return
	 */
	@RequestMapping("about")
	public String about(){
		return "about";
	}
	
}
