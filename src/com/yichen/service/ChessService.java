package com.yichen.service;

import java.util.List;

import com.yichen.model.ChessVo;

public interface ChessService {

	List<ChessVo> findChess();// 查询棋种

	int saveChess(ChessVo chessVo);// 添加棋种

	int modifyChess(ChessVo chessVo);// 更新棋种

	int deleteChess(String id);// 删除棋种

	ChessVo findChessById(String id);// 通过id查询棋种
}
