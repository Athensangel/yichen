package com.yichen.mapper;

import java.util.List;

import com.yichen.model.MessageVo;
import com.yichen.model.Page;
import com.yichen.model.UserVo;

/**
 *  资讯公告Mapper
 * @author Administrator
 *
 */
public interface MessageMapper {
	List<MessageVo> queryMessages(Page page);// 查询消息
	int queryMessageVoCounts();//查询条数
	MessageVo queryMessageById(String id);//详细
	
	public int insertMessage(MessageVo messageVo);// 添加用户

	public int updateMessage(MessageVo messageVo);// 更新用户

	public int delMessage(String id);// 删除用户
}
