package com.yichen.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.yichen.model.Page;
import com.yichen.model.PersonVo;
import com.yichen.service.PersonService;
import com.yichen.utils.AjaxResponseVo;
import com.yichen.utils.ResponseCode;
import com.yichen.utils.UUIDUtil;

@Controller
public class PersonController {
	
	@Autowired
	private PersonService personService;
	
	/**
	 * 查询
	 */
	@RequestMapping("back/person/list/{pageNow}")
	public String backPerson(ModelMap map,PersonVo personVo,@PathVariable Integer pageNow){
		int totalCount = personService.findPersonVoCounts();//查询条数
		Page page = new Page(totalCount, pageNow);
		List<PersonVo> personVoList = personService.findPersons(page);
		map.put("personVoList", personVoList);
		map.put("page", page);
		return "WEB-INF/backstage/views/person/personList";
	}
	
	/**
	 * 添加
	 */
	@RequestMapping({ "/back/person/add" })
	public String  backPersonAdd() {
		return "WEB-INF/backstage/views/person/personAdd";
	}
	
	/**
	 * 保存
	 */
	@RequestMapping(value="/back/person/save" ,method=RequestMethod.POST)
	public String  backPersonSave(@RequestParam(value = "myfile", required = false) MultipartFile file,PersonVo personVo,HttpServletRequest request) {
		 SimpleDateFormat dateformat = new SimpleDateFormat("yyyy/MM/dd");     
	        /**构建图片保存的目录**/    
	        String logoPathDir = "/uploads/"+ dateformat.format(new Date());     
	        /**得到图片保存目录的真实路径**/    
	        String logoRealPathDir = request.getSession().getServletContext().getRealPath(logoPathDir);     
	        /**根据真实路径创建目录**/    
	        File logoSaveFile = new File(logoRealPathDir);     
	        if(!logoSaveFile.exists())     
	            logoSaveFile.mkdirs();           
	        /**页面控件的文件流**/    
	        if (file.getSize()!=0) {   
	        /**获取文件的后缀**/    
	        String suffix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));     
	        /**使用UUID生成文件名称**/    
	        String logImageName = UUID.randomUUID().toString()+ suffix;//构建文件名称     
	        /**拼成完整的文件保存路径加文件**/    
	        String fileName = logoRealPathDir + File.separator   + logImageName;                
	        File files = new File(fileName);          
	        try {     
	        	file.transferTo(files);     
	            String fileTemp=logoPathDir+"/"+logImageName;
	            personVo.setImagePath(fileTemp);
	            personVo.setId(UUIDUtil.getUUID());
	            personVo.setAddUserId((String)request.getSession().getAttribute("id"));
	            personService.savePerson(personVo);
	        } catch (IllegalStateException e) {     
	            e.printStackTrace();     
	        } catch (IOException e) {            
	            e.printStackTrace();     
	        }    
	        }else{
	        	personVo.setId(UUIDUtil.getUUID());
	            personVo.setAddUserId((String)request.getSession().getAttribute("id"));
	            personService.savePerson(personVo);
	        }
		return "redirect:/back/person/list/1";
	}
	
	/**
	 * 修改
	 */
	@RequestMapping({ "/back/person/up" })
	public String  backPersonUp(String id,ModelMap map) {
		PersonVo  personVo  = personService.findPersonById(id);
		map.put("personVo", personVo);
		return "WEB-INF/backstage/views/person/personUp";
	}
	
	/**
	 * 修改
	 */
	@RequestMapping(value="/back/person/modify" ,method=RequestMethod.POST)
	public String  backPersonModify(@RequestParam(value = "myfile", required = false) MultipartFile file,PersonVo personVo,HttpServletRequest request) {
		 SimpleDateFormat dateformat = new SimpleDateFormat("yyyy/MM/dd");     
	        /**构建图片保存的目录**/    
	        String logoPathDir = "/uploads/"+ dateformat.format(new Date());     
	        /**得到图片保存目录的真实路径**/    
	        String logoRealPathDir = request.getSession().getServletContext().getRealPath(logoPathDir);     
	        /**根据真实路径创建目录**/    
	        File logoSaveFile = new File(logoRealPathDir);     
	        if(!logoSaveFile.exists())     
	            logoSaveFile.mkdirs();           
	        /**页面控件的文件流**/    
	        if (file.getSize()!=0) {   
	        /**获取文件的后缀**/    
	        String suffix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));     
	        /**使用UUID生成文件名称**/    
	        String logImageName = UUID.randomUUID().toString()+ suffix;//构建文件名称     
	        /**拼成完整的文件保存路径加文件**/    
	        String fileName = logoRealPathDir + File.separator   + logImageName;                
	        File files = new File(fileName);          
	        try {     
	        	file.transferTo(files);     
	            String fileTemp=logoPathDir+"/"+logImageName;
	            personVo.setImagePath(fileTemp);
	            personVo.setAddUserId((String)request.getSession().getAttribute("id"));
	            personService.modifyPerson(personVo);
	        } catch (IllegalStateException e) {     
	            e.printStackTrace();     
	        } catch (IOException e) {            
	            e.printStackTrace();     
	        }    
	        }else{
	        	 personVo.setAddUserId((String)request.getSession().getAttribute("id"));
		         personService.modifyPerson(personVo);
	        }   
		return "redirect:/back/person/list/1";
	}
	
	/**
	 * 删除
	 */
	@RequestMapping("back/person/del")
	public String backPersonDel(String id){
		personService.deletePerson(id);
		return "redirect:/back/person/list/1";
	}

	/**
	 *  批量删除
	 */
	@RequestMapping("/back/person/batchDel")
	@ResponseBody
	public AjaxResponseVo backBatchDel(String ids){
		List<String> idsTemp = Arrays.asList(ids.split(","));  
		int result = personService.batchDel(idsTemp);
		return result > 0 ? AjaxResponseVo.of(ResponseCode.DEL_SUCCESS):AjaxResponseVo.of(ResponseCode.DEL_FAIL);
	}
}
