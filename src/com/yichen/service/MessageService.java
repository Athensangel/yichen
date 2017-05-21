package com.yichen.service;

import java.util.List;

import com.yichen.model.MessageVo;
import com.yichen.model.Page;

/**
 * 咨询公告Service
 * @author Administrator
 *
 */
public interface MessageService {
	List<MessageVo> findAllMessageVos(Page page);// 查询消息
	int findMessageVoCounts();//查询条数
}
