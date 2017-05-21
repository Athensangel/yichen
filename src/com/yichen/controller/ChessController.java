package com.yichen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yichen.model.ChessVo;
import com.yichen.service.ChessService;
import com.yichen.utils.UUIDUtil;

@Controller
public class ChessController {

	@Autowired
	private ChessService chessService;
	
	/**
	 * 查询部门信息
	 */
	@RequestMapping("back/chess/list")
	public String backchess(ModelMap map){
		List<ChessVo> chessVoList = chessService.findChess();
		map.put("chessVoList", chessVoList);
		return "WEB-INF/backstage/views/chess/chessList";
	}
	
	/**
	 * 跳转到添加页
	 */
	@RequestMapping("back/chess/add")
	public String backchessAdd(){
		return "WEB-INF/backstage/views/chess/chessAdd";
	}
	
	/**
	 * 添加页
	 */
	@RequestMapping("back/chess/save")
	public String backchessSava(ChessVo chessVo){
		chessVo.setId(UUIDUtil.getUUID());
		chessService.saveChess(chessVo);
		return "redirect:list";
	}
	
	/**
	 * 跳转到修改页
	 */
	@RequestMapping("back/chess/up")
	public String jumpchessUp(String id,ModelMap map){
		ChessVo chessVo = chessService.findChessById(id);
		map.put("chessVo", chessVo);
		return "WEB-INF/backstage/views/chess/chessUp";
	}
	
	/**
	 * 修改
	 */
	@RequestMapping("back/chess/modify")
	public String backDpartmentModify(ChessVo chessVo){
		chessService.modifyChess(chessVo);
		return "redirect:list";
	}
	
	/**
	 * 删除
	 */
	@RequestMapping("back/chess/del")
	public String backchessDel(String id){
		chessService.deleteChess(id);
		return "redirect:list";
	}
}
