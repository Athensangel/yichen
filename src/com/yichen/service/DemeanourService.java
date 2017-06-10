package com.yichen.service;

import java.util.List;

import com.yichen.model.DemeanourVo;
import com.yichen.model.Page;

/**
 * 活动风采Service
 * @author Administrator
 *
 */
public interface DemeanourService {
	
	List<DemeanourVo> findDemeanours(Page page);// 查询

	int findDemeanourVoCounts(String currentTime);

}
