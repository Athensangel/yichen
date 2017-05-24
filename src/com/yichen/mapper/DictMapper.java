package com.yichen.mapper;

import java.util.List;

import com.yichen.model.DictVo;


public interface DictMapper {

	List<DictVo> querDicts();// 查询棋队

	int insertDict(DictVo DictVo);// 添加棋队

	int updateDict(DictVo DictVo);// 更新棋队

	int delDict(String id);// 删除棋队

	DictVo queryDictById(String id);// 通过id查询棋队
}
