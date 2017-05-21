package com.yichen.mapper;

import java.util.List;

import com.yichen.model.ChessVo;

/**
 * ChessMapper
 * 
 * @author cc
 *
 */
public interface ChessMapper {
	
	List<ChessVo> querChess();// 查询棋种

	int insertChess(ChessVo chessVo);// 添加棋种

	int updateChess(ChessVo chessVo);// 更新棋种

	int delChess(String id);// 删除棋种

	ChessVo queryChessById(String id);// 通过id查询棋种

}
