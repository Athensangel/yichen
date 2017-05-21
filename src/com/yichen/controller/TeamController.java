package com.yichen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yichen.model.TeamVo;
import com.yichen.service.TeamService;
import com.yichen.utils.UUIDUtil;

@Controller
public class TeamController {

	@Autowired
	private TeamService teamService;
	
	/**
	 * 查询部门信息
	 */
	@RequestMapping("back/team/list")
	public String backTeam(ModelMap map){
		List<TeamVo> teamVoList = teamService.findTeams();
		map.put("teamVoList", teamVoList);
		return "WEB-INF/backstage/views/team/teamList";
	}
	
	/**
	 * 跳转到添加页
	 */
	@RequestMapping("back/team/add")
	public String backTeamAdd(){
		return "WEB-INF/backstage/views/team/teamAdd";
	}
	
	/**
	 * 添加页
	 */
	@RequestMapping("back/team/save")
	public String backTeamSava(TeamVo teamVo){
		teamVo.setId(UUIDUtil.getUUID());
		teamService.saveTeam(teamVo);
		return "redirect:list";
	}
	
	/**
	 * 跳转到修改页
	 */
	@RequestMapping("back/team/up")
	public String jumpTeamUp(String id,ModelMap map){
		TeamVo teamVo = teamService.findTeamById(id);
		map.put("teamVo", teamVo);
		return "WEB-INF/backstage/views/team/teamUp";
	}
	
	/**
	 * 修改
	 */
	@RequestMapping("back/team/modify")
	public String backDpartmentModify(TeamVo teamVo){
		teamService.modifyTeam(teamVo);
		return "redirect:list";
	}
	
	/**
	 * 删除
	 */
	@RequestMapping("back/team/del")
	public String backTeamDel(String id){
		teamService.deleteTeam(id);
		return "redirect:list";
	}
}
