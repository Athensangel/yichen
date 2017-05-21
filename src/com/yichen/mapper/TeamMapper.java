package com.yichen.mapper;

import java.util.List;

import com.yichen.model.TeamVo;

/**
 * 
 * TeamMapper
 * @author cc
 *
 */
public interface TeamMapper {
	
	List<TeamVo> querTeams();// 查询棋队

	int insertTeam(TeamVo teamVo);// 添加棋队

	int updateTeam(TeamVo teamVo);// 更新棋队

	int delTeam(String id);// 删除棋队

	TeamVo queryTeamById(String id);// 通过id查询棋队

}
