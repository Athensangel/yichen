package com.yichen.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yichen.model.DepartmentVo;
import com.yichen.service.DepartmentService;
import com.yichen.utils.AjaxResponseVo;
import com.yichen.utils.ResponseCode;
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
	public String jumpDepartmentUp(DepartmentVo departmentVo,ModelMap map){
		DepartmentVo currentDepartmentVo = departmentService.findDepartmentById(departmentVo);
		map.put("departmentVo", currentDepartmentVo);
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
	
	/**
	 * 部门列表
	 */
	@RequestMapping("department")
	public String department(ModelMap map){
		List<DepartmentVo> departmentVoList = departmentService.findDepartments();//查询
		map.put("departmentVoList", departmentVoList);
		return "department";
	}
	
	/**
	 * 部门详情
	 */
	@RequestMapping("departmentDetail")
	public String departmentDetail(ModelMap map,DepartmentVo departmentVo){
		DepartmentVo currentDepartmentVo = departmentService.findDepartmentById(departmentVo);
		map.put("currentDepartmentVo", currentDepartmentVo);
		return "departmentDetail";
	}
	
	/**
	 *  批量删除
	 */
	@RequestMapping("/back/department/batchDel")
	@ResponseBody
	public AjaxResponseVo backBatchDel(String ids){
		List<String> idsTemp = Arrays.asList(ids.split(","));  
		int result = departmentService.batchDel(idsTemp);
		return result > 0 ? AjaxResponseVo.of(ResponseCode.DEL_SUCCESS):AjaxResponseVo.of(ResponseCode.DEL_FAIL);
	}
}
