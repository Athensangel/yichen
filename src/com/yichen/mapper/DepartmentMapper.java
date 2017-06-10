package com.yichen.mapper;

import java.util.List;

import com.yichen.model.DepartmentVo;
import com.yichen.model.DictVo;

/**
 * 部门Mapper
 * @author Administrator
 *
 */
public interface DepartmentMapper {

	List<DepartmentVo> queryDepartments();// 查询部门

	int insertDepartmentVo(DepartmentVo departmentVo);// 添加部门

	int updateDepartmentVo(DepartmentVo DepartmentVo);// 更新部门

	int delDepartmentVo(String id);// 删除部门

	DepartmentVo queryDepartmentById(DepartmentVo departmentVo);// 通过id查询部门
	
	int batchDel(List<String> list);//批量删除

	List<DictVo> queryChess(String id);//查询棋社棋种

}
