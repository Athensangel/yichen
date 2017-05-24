package com.yichen.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yichen.mapper.DictMapper;
import com.yichen.model.DictVo;
import com.yichen.service.DictService;

@Service
public class DictServiceImpl implements DictService {
	
	@Resource
	private DictMapper dictMapper;

	@Override
	public List<DictVo> findDicts() {
		return dictMapper.querDicts();
	}

	@Override
	public int saveDict(DictVo dictVo) {
		return dictMapper.insertDict(dictVo);
	}

	@Override
	public int modifyDict(DictVo dictVo) {
		return dictMapper.updateDict(dictVo);
	}

	@Override
	public int deleteDict(String id) {
		return dictMapper.delDict(id);
	}

	@Override
	public DictVo findDictById(String id) {
		return dictMapper.queryDictById(id);
	}

}
