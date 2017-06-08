package com.yichen.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yichen.mapper.DepartmentMapper;
import com.yichen.model.DepartmentVo;
import com.yichen.model.DictVo;
import com.yichen.service.DepartmentService;

@Service
public class DepartmentServiceImpl implements DepartmentService {
	
	@Resource
	private DepartmentMapper departmentMapper;
	
	@Override
	public List<DepartmentVo> findDepartments() {
		List<DepartmentVo> departmentVoList = departmentMapper.queryDepartments();
		for (DepartmentVo departmentVo : departmentVoList) {
			List<DictVo> dictVoList = departmentMapper.queryChess(departmentVo.getId());
			departmentVo.setDictVoList(dictVoList);
		}
		return departmentVoList;
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

	@Override
	public int batchDel(List<String> list) {
		return departmentMapper.batchDel(list);
	}

}
