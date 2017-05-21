package com.yichen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yichen.model.DepartmentVo;
import com.yichen.service.DepartmentService;
import com.yichen.utils.UUIDUtil;

@Controller
public class DepartmentController {

	@Autowired
	private DepartmentService departmentService;
	
	/**
	 * 查询部门信息
	 */
	@RequestMapping("back/department/list")
	public String backDepartment(ModelMap map){
		List<DepartmentVo> departmentVoList = departmentService.findDepartments();
		map.put("departmentVoList", departmentVoList);
		return "WEB-INF/backstage/views/department/departmentList";
	}
	
	/**
	 * 跳转到添加页
	 */
	@RequestMapping("back/department/add")
	public String backDepartmentAdd(){
		return "WEB-INF/backstage/views/department/departmentAdd";
	}
	
	/**
	 * 添加页
	 */
	@RequestMapping("back/department/save")
	public String backDpartmentSava(DepartmentVo departmentVo){
		departmentVo.setId(UUIDUtil.getUUID());
		departmentService.saveDepartmentVo(departmentVo);
		return "redirect:list";
	}
	
	/**
	 * 跳转到修改页
	 */
	@RequestMapping("back/department/up")
	public String jumpDepartmentUp(String id,ModelMap map){
		DepartmentVo departmentVo = departmentService.findDepartmentById(id);
		map.put("departmentVo", departmentVo);
		return "WEB-INF/backstage/views/department/departmentUp";
	}
	
	/**
	 * 修改
	 */
	@RequestMapping("back/department/modify")
	public String backDpartmentModify(DepartmentVo departmentVo){
		departmentService.modifyDepartmentVo(departmentVo);
		return "redirect:list";
	}
	
	/**
	 * 删除
	 */
	@RequestMapping("back/department/del")
	public String backDepartmentDel(String id){
		departmentService.deleteDepartmentVo(id);
		return "redirect:list";
	}
}
