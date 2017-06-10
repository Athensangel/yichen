package com.yichen.service;

import java.util.List;

import com.yichen.model.Page;
import com.yichen.model.PersonVo;

/**
 * 人物风采Service
 * @author Administrator
 *
 */
public interface PersonService {
	List<PersonVo> findPersons(Page page);// 查询

	int savePerson(PersonVo personVo);// 添加

	int modifyPerson(PersonVo personVo);// 更新

	int deletePerson(String id);// 删除

	PersonVo findPersonById(String id);// 通过id查询

	int findPersonVoCounts();//查询条数
	
	int batchDel(List<String> list); //批量删除

}
