package com.yichen.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yichen.mapper.TeamMapper;
import com.yichen.model.TeamVo;
import com.yichen.service.TeamService;

@Service
public class TeamServiceImpl implements TeamService {

	@Resource
	private TeamMapper teamMapper;
	
	@Override
	public List<TeamVo> findTeams() {
		return teamMapper.querTeams();
	}

	@Override
	public int saveTeam(TeamVo teamVo) {
		return teamMapper.insertTeam(teamVo);
	}

	@Override
	public int modifyTeam(TeamVo teamVo) {
		return teamMapper.updateTeam(teamVo);
	}

	@Override
	public int deleteTeam(String id) {
		return teamMapper.delTeam(id);
	}

	@Override
	public TeamVo findTeamById(String id) {
		return teamMapper.queryTeamById(id);
	}

}
