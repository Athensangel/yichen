package com.yichen.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yichen.mapper.ChessMapper;
import com.yichen.model.ChessVo;
import com.yichen.service.ChessService;

@Service
public class ChessServiceImpl implements ChessService{
	
	@Resource
	private ChessMapper chessMapper;

	@Override
	public List<ChessVo> findChess() {
		return chessMapper.querChess();
	}

	@Override
	public int saveChess(ChessVo chessVo) {
		return chessMapper.insertChess(chessVo);
	}

	@Override
	public int modifyChess(ChessVo chessVo) {
		return chessMapper.updateChess(chessVo);
	}

	@Override
	public int deleteChess(String id) {
		return chessMapper.delChess(id);
	}

	@Override
	public ChessVo findChessById(String id) {
		return chessMapper.queryChessById(id);
	}
}
