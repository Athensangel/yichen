package com.yichen.service;

import java.util.List;

import com.yichen.model.DepartmentVo;

/**
 * 部门Service
 * @author cc
 *
 */
public interface DepartmentService {

	List<DepartmentVo> findDepartments();// 查询部门

	int saveDepartmentVo(DepartmentVo departmentVo);// 添加部门

	int modifyDepartmentVo(DepartmentVo DepartmentVo);// 更新部门

	int deleteDepartmentVo(String id);// 删除部门

	DepartmentVo findDepartmentById(String id);// 通过id查询部门

}
