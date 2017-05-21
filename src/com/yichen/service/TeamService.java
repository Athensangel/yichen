package com.yichen.service;

import java.util.List;

import com.yichen.model.TeamVo;

/**
 * TeamService
 * 
 * @author cc
 */
public interface TeamService {

	List<TeamVo> findTeams();// 查询棋队

	int saveTeam(TeamVo teamVo);// 添加棋队

	int modifyTeam(TeamVo teamVo);// 更新棋队

	int deleteTeam(String id);// 删除棋队

	TeamVo findTeamById(String id);// 通过id查询棋队
}
