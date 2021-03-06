package com.yichen.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yichen.model.DemeanourVo;
import com.yichen.model.DepartmentVo;
import com.yichen.model.DictVo;
import com.yichen.model.MessageVo;
import com.yichen.model.Page;
import com.yichen.model.PersonVo;
import com.yichen.service.DemeanourService;
import com.yichen.service.DepartmentService;
import com.yichen.service.DictService;
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
	
	@Autowired
	private DictService dictService ;
	
	@Autowired
	private DepartmentService departmentService;
	
	@Autowired
	private DemeanourService demeanourService;

	/**
	 * 首页
	 * @param map
	 * @return
	 */
	@RequestMapping("main")
	public String main(ModelMap map,HttpSession session) {
		Page page = new Page(5, 1);
		page.setPageSize(5);
		page.setType("1");// 消息
		List<MessageVo> messageNews = messageService.findMessages(page);
		page.setType("2");// 公告
		List<MessageVo> messageNotice = messageService.findMessages(page);
		List<DepartmentVo> departmentVoList = departmentService.findDepartments();
		map.put("messageNews", messageNews);
		map.put("messageNotice", messageNotice);
		map.put("departmentVoList", departmentVoList);
		session.setAttribute("departmentVoList", departmentVoList);
		return "index";
	}

	/**
	 * 简介
	 * @return
	 */
	@RequestMapping("about")
	public String about() {
		return "about";
	}

	/**
	 * 人物风采
	 * @param map
	 * @param personVo
	 * @param pageNow
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
	
	/**
	 * 人物风采-详情
	 * @param map
	 * @param id
	 * @return
	 */
	@RequestMapping("person/detail")
	public String personDetail(ModelMap map,String id) {
		PersonVo personVo =personService.findPersonById(id);
		map.put("personVo", personVo);
		return "personDetail";
	}
	
	/**
	 * 文化建设/内涵
	 * @return
	 */
	@RequestMapping("culture/connote")
	public String culture() {
		return "connote";
	}
	
	/**
	 * 文化建设/活动
	 * @return
	 */
	@RequestMapping("culture/activity")
	public String activity() {
		return "activity";
	}
	
	/**
	 * 制度建设
	 * @return
	 */
	@RequestMapping("regime")
	public String regime() {
		return "regime";
	}
	
	/**
	 * 棋社棋类
	 * @return
	 */
	@RequestMapping("chessType/{value}")
	public String chessType(@PathVariable String value,ModelMap map) {
		DictVo dictVo = dictService.findDictByType("chessType", value);
		map.put("dictVo", dictVo);
		return "chessIntroduce";
	}
	
	/**
	 * 活动风采
	 * @return
	 */
	@RequestMapping("demeanour")
	public String demeanour(ModelMap map,DemeanourVo demeanourVo) {
		int totalCount = demeanourService.findDemeanourVoCounts(demeanourVo.getCurrentTime());//查询条数
		if(demeanourVo.getPageNow() == null){
			demeanourVo.setPageNow(1);
		}
		Page page = new Page(totalCount, demeanourVo.getPageNow());
		page.setPageSize(12);
		page.setCurrentTime(demeanourVo.getCurrentTime());
		List<DemeanourVo> demeanourVoList = demeanourService.findDemeanours(page);
		map.put("demeanourVoList", demeanourVoList);
		map.put("page", page);
		return "demeanour";
	}
}
