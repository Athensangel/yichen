package com.yichen.mapper;

import java.util.List;

import com.yichen.model.MessageVo;
import com.yichen.model.Page;

/**
 *  资讯公告Mapper
 * @author Administrator
 *
 */
public interface MessageMapper {
	List<MessageVo> queryMessages(Page page);// 查询消息
	int queryMessageVoCounts();//查询条数
	MessageVo queryMessageById(String id);//详细

}
