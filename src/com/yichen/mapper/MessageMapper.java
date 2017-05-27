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

	int queryMessageVoCounts();// 查询条数

	MessageVo queryMessageById(String id);// 详细

	int insertMessage(MessageVo messageVo);// 添加用户

	int updateMessage(MessageVo messageVo);// 更新用户

	int delMessage(String id);// 删除用户
	
	int batchDel(List<String> list);//批量删除
}
