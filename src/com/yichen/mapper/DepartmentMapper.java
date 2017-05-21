package com.yichen.mapper;

import java.util.List;

import com.yichen.model.DepartmentVo;

public interface DepartmentMapper {

	List<DepartmentVo> queryDepartments();// 查询部门

	int insertDepartmentVo(DepartmentVo departmentVo);// 添加部门

	int updateDepartmentVo(DepartmentVo DepartmentVo);// 更新部门

	int delDepartmentVo(String id);// 删除部门

	DepartmentVo queryDepartmentById(String id);// 通过id查询部门

}
