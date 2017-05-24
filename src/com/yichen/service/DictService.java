package com.yichen.service;

import java.util.List;

import com.yichen.model.DictVo;

/**
 * DictService业务层
 * @author cc
 *
 */

public interface DictService {
	
	List<DictVo> findDicts(DictVo dictVo);// 查询字典

	int saveDict(DictVo dDictVo);// 添加字典

	int modifyDict(DictVo dictVo);// 更新字典

	int deleteDict(String id);// 删除字典

	DictVo findDictById(String id);// 通过id查询字典

}
