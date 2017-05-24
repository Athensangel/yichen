package com.yichen.service;

import java.util.List;
import com.yichen.model.MessageVo;
import com.yichen.model.Page;

/**
 *  资讯公告Service
 * @author Administrator
 *
 */
public interface MessageService {
	List<MessageVo> findMessages(Page page);// 查询消息

	int findMessageVoCounts();// 查询条数

	MessageVo findMessageById(String id);// 详细

	int savetMessage(MessageVo messageVo);// 添加用户

	int modifyMessage(MessageVo messageVo);// 更新用户

	int deleteMessage(String id);// 删除用户
}
