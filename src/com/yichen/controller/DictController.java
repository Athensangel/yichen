package com.yichen.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yichen.model.DictVo;
import com.yichen.service.DictService;
import com.yichen.utils.AjaxResponseVo;
import com.yichen.utils.ResponseCode;
import com.yichen.utils.UUIDUtil;

@Controller
public class DictController {
		@Autowired
		private DictService dictService;
		
		/**
		 * 查询字典信息
		 */
		@RequestMapping("back/dict/list")
		public String backdict(ModelMap map,DictVo dictVo){
			List<DictVo> dictVoList = dictService.findDicts(dictVo);
			map.put("dictVoList", dictVoList);
			return "WEB-INF/backstage/views/dict/dictList";
		}
		
		/**
		 * 跳转到添加页
		 */
		@RequestMapping("back/dict/add")
		public String backdictAdd(){
			return "WEB-INF/backstage/views/dict/dictAdd";
		}
		
		/**
		 * 添加页
		 */
		@RequestMapping("back/dict/save")
		public String backdictSava(DictVo dictVo){
			dictVo.setId(UUIDUtil.getUUID());
			dictService.saveDict(dictVo);
			return "redirect:list";
		}
		
		/**
		 * 跳转到修改页
		 */
		@RequestMapping("back/dict/up")
		public String jumpdictUp(String id,ModelMap map){
			DictVo dictVo = dictService.findDictById(id);
			map.put("dictVo", dictVo);
			return "WEB-INF/backstage/views/dict/dictUp";
		}
		
		/**
		 * 修改
		 */
		@RequestMapping("back/dict/modify")
		public String backDpartmentModify(DictVo dictVo){
			dictService.modifyDict(dictVo);
			return "redirect:list";
		}
		
		/**
		 * 删除
		 */
		@RequestMapping("back/dict/del")
		public String backdictDel(String id){
			dictService.deleteDict(id);
			return "redirect:list";
		}
		
		/**
		 *  批量删除
		 */
		@RequestMapping("/back/dict/batchDel")
		@ResponseBody
		public AjaxResponseVo backBatchDel(String ids){
			List<String> idsTemp = Arrays.asList(ids.split(","));  
			int result = dictService.batchDel(idsTemp);
			return result > 0 ? AjaxResponseVo.of(ResponseCode.DEL_SUCCESS):AjaxResponseVo.of(ResponseCode.DEL_FAIL);
		}
	}
