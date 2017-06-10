package com.yichen.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yichen.model.DemeanourVo;
import com.yichen.model.Page;
/**
 * 活动风采Mapper
 * @author Administrator
 *
 */
public interface DemeanourMapper {
	
	List<DemeanourVo> querDemeanours(Page page);// 查询
	
	int queryDemeanourVoCounts(@Param("currentTime") String currentTime);//查询条数

}
