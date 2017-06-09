package com.yichen.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yichen.mapper.DemeanourMapper;
import com.yichen.model.DemeanourVo;
import com.yichen.model.Page;
import com.yichen.service.DemeanourService;

@Service
public class DemeanourServiceImpl implements DemeanourService {
	
	@Autowired
	private DemeanourMapper demeanourMapper;

	@Override
	public List<DemeanourVo> findDemeanours(Page page) {
		return demeanourMapper.querDemeanours(page);
	}

	@Override
	public int findDemeanourVoCounts(String currentTime) {
		return demeanourMapper.queryDemeanourVoCounts(currentTime);
	}

}
