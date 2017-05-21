package com.yichen.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yichen.mapper.DepartmentMapper;
import com.yichen.model.DepartmentVo;
import com.yichen.service.DepartmentService;

@Service
public class DepartmentServiceImpl implements DepartmentService {
	
	@Resource
	private DepartmentMapper departmentMapper;
	
	@Override
	public List<DepartmentVo> findDepartments() {
		return departmentMapper.queryDepartments();
	}

	@Override
	public int saveDepartmentVo(DepartmentVo departmentVo) {
		return departmentMapper.insertDepartmentVo(departmentVo);
	}

	@Override
	public int modifyDepartmentVo(DepartmentVo DepartmentVo) {
		return departmentMapper.updateDepartmentVo(DepartmentVo);
	}

	@Override
	public int deleteDepartmentVo(String id) {
		return departmentMapper.delDepartmentVo(id);
	}

	@Override
	public DepartmentVo findDepartmentById(DepartmentVo departmentVo) {
		return departmentMapper.queryDepartmentById(departmentVo);
	}

}
