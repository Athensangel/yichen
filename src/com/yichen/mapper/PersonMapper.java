package com.yichen.mapper;

import java.util.List;

import com.yichen.model.Page;
import com.yichen.model.PersonVo;

public interface PersonMapper {
	List<PersonVo> querPersons(Page page);// 查询

	int insertPerson(PersonVo personVo);// 添加

	int updatePerson(PersonVo personVo);// 更新

	int delPerson(String id);// 删除

	PersonVo queryPersonById(String id);// 通过id查询

	int queryPersonVoCounts();//查询条数
	
	int batchDel(List<String> list);//批量删除
}
