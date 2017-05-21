package com.yichen.mapper;

import java.util.List;

import com.yichen.model.MessageVo;
import com.yichen.model.Page;

/**
 * 咨询公告Mapper
 * @author Administrator
 *
 */
public interface MessageMapper {
	List<MessageVo> queryAllMessageVos(Page page);// 查询消息
	int queryMessageVoCounts();//查询条数

}
