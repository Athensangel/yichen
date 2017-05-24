package com.yichen.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yichen.model.MessageVo;
import com.yichen.model.Page;
import com.yichen.service.MessageService;
import com.yichen.utils.UUIDUtil;

/**
 * 资讯公告
 * @author Administrator
 *
 */
@Controller
public class MessageController {
	
	@Autowired
	private MessageService messageService;
	
	/**
	 * 列表
	 * @param map
	 * @param pageNow
	 * @return
	 */
	@RequestMapping("news/{pageNow}")
	public String newsIndex(ModelMap map,@PathVariable Integer pageNow){
		int totalCount = messageService.findMessageVoCounts();//查询条数
		Page page = new Page(totalCount, pageNow);
		List<MessageVo> messageVoList = messageService.findMessages(page);//分页查询
		map.put("page", page);
		map.put("messageVoList", messageVoList);
		return "news";
	}
	
	/**
	 * 详细
	 * @param map
	 * @param id
	 * @return
	 */
	@RequestMapping("newsDetail")
	public String newsDetail(ModelMap map,String id){
		MessageVo messageVo = messageService.findMessageById(id);//分页查询
		map.put("messageVo", messageVo);
		return "newsDetail";
	}
	
	/**
	 * 查询
	 * @param map
	 * @param pageNow
	 * @return
	 */
	@RequestMapping("back/message/list/{pageNow}")
	public String backIndex(ModelMap map,@PathVariable Integer pageNow){
		int totalCount = messageService.findMessageVoCounts();//查询条数
		Page page = new Page(totalCount, pageNow);
		page.setPageSize(5);
		List<MessageVo> messageVoList = messageService.findMessages(page);//分页查询
		map.put("page", page);
		map.put("messageVoList", messageVoList);
		return "WEB-INF/backstage/views/message/messageList";
	}
	/**
	 * 跳转到添加
	 * @return
	 */
	@RequestMapping("back/message/add")
	public String backMessageAdd(){
		return "WEB-INF/backstage/views/message/messageAdd";
	}
	
	/**
	 * 添加
	 * @return
	 */
	@RequestMapping("back/message/save")
	public String backmessageSave(MessageVo messageVo){
		messageVo.setId(UUIDUtil.getUUID());
		messageService.savetMessage(messageVo);
		return "redirect:list/1";
	}
	
	/**
	 * 跳转到 修改
	 * @return
	 */
	@RequestMapping("back/message/up")
	public String backmessageUp(String id,ModelMap map){
		MessageVo messageVo = messageService.findMessageById(id);
		map.put("messageVo", messageVo);
		return "WEB-INF/backstage/views/message/messageUp";
	}
	
	/**
	 * 修改
	 * @return
	 */
	@RequestMapping("back/message/modify")
	public String backmessageModify(MessageVo messageVo){
		messageService.modifyMessage(messageVo);
		return "redirect:list/1";
	}
		
	/**
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping("back/message/del")
	public String backmessageDel(String id){
		messageService.deleteMessage(id);
		return "redirect:list/1";
	}

}
