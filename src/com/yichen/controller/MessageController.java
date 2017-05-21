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
	
}
