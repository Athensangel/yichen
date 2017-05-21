package com.yichen.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yichen.mapper.MessageMapper;
import com.yichen.model.MessageVo;
import com.yichen.model.Page;
import com.yichen.service.MessageService;

/**
 *  资讯公告Service实现
 * @author Administrator
 *
 */
@Service
public class MessageServiceImpl implements MessageService {

	@Resource
	private MessageMapper messageMapper;
	
	@Override
	public List<MessageVo> findMessages(Page page) {
		return messageMapper.queryMessages(page);
	}

	@Override
	public int findMessageVoCounts() {
		return messageMapper.queryMessageVoCounts();
	}

	@Override
	public MessageVo findMessageById(String id) {
		return messageMapper.queryMessageById(id);
	}

	@Override
	public int savetMessage(MessageVo messageVo) {
		return messageMapper.insertMessage(messageVo);
	}

	@Override
	public int modifyMessage(MessageVo messageVo) {
		return messageMapper.updateMessage(messageVo);
	}

	@Override
	public int deleteMessage(String id) {
		return messageMapper.delMessage(id);
	}

}
