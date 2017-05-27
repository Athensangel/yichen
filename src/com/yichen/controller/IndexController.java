package com.yichen.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yichen.model.MessageVo;
import com.yichen.model.Page;
import com.yichen.model.PersonVo;
import com.yichen.service.MessageService;
import com.yichen.service.PersonService;

/**
 * 网站首页
 * 
 * @author Administrator
 *
 */
@Controller
public class IndexController {

	@Autowired
	private MessageService messageService;
	
	@Autowired
	private PersonService personService ;

	/**
	 * 简介
	 * 
	 * @return
	 */
	@RequestMapping("main")
	public String main(ModelMap map) {
		Page page = new Page(5, 1);
		page.setPageSize(5);
		page.setType("1");// 消息
		List<MessageVo> messageNews = messageService.findMessages(page);
		page.setType("2");// 公告
		List<MessageVo> messageNotice = messageService.findMessages(page);
		map.put("messageNews", messageNews);
		map.put("messageNotice", messageNotice);
		return "index";
	}

	/**
	 * 简介
	 * 
	 * @return
	 */
	@RequestMapping("about")
	public String about() {
		return "about";
	}

	/**
	 * 人物风采
	 * @return
	 */
	@RequestMapping("person/{pageNow}")
	public String person(ModelMap map,PersonVo personVo,@PathVariable Integer pageNow) {
		int totalCount = personService.findPersonVoCounts();//查询条数
		Page page = new Page(totalCount, pageNow);
		List<PersonVo> personVoList = personService.findPersons(page);
		map.put("personVoList", personVoList);
		map.put("page", page);
		return "person";
	}
	
}
