package com.yichen.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yichen.mapper.MessageMapper;
import com.yichen.model.MessageVo;
import com.yichen.model.Page;
import com.yichen.service.MessageService;

/**
 * 咨询公告Service实现
 * @author Administrator
 *
 */
@Service
public class MessageServiceImpl implements MessageService {

	@Resource
	private MessageMapper messageMapper;
	
	@Override
	public List<MessageVo> findAllMessageVos(Page page) {
		return messageMapper.queryAllMessageVos(page);
	}

	@Override
	public int findMessageVoCounts() {
		return messageMapper.queryMessageVoCounts();
	}

}
