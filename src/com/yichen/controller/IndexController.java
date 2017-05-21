package com.yichen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yichen.model.MessageVo;
import com.yichen.model.Page;
import com.yichen.service.MessageService;

/**
 * 网站首页
 * @author Administrator
 *
 */
@Controller
public class IndexController {
	
	@Autowired
	private MessageService messageService;
	
	/**
	 * 简介
	 * @return
	 */
	@RequestMapping("main")
	public String main(ModelMap map){
		Page page = new Page(5, 1);
		page.setPageSize(5);
		page.setType("1");//消息
		List<MessageVo>  messageNews = messageService.findMessages(page);
		page.setType("2");//公告
		List<MessageVo>  messageNotice = messageService.findMessages(page);
		map.put("messageNews", messageNews);
		map.put("messageNotice", messageNotice);
		return "index";
	}
	
	/**
	 * 简介
	 * @return
	 */
	@RequestMapping("about")
	public String about(){
		return "about";
	}
	
}
