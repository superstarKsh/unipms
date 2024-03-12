package com.uni.unipms.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.uni.unipms.common.Cache.GetSharedCache;
import com.uni.unipms.common.Message.ConstantMessage;
import com.uni.unipms.model.In.CM004101IVO;
import com.uni.unipms.model.In.TS010101IVO;
import com.uni.unipms.model.In.TS010201IVO;
import com.uni.unipms.model.In.TS010202IVO;
import com.uni.unipms.model.Out.TS010101OVO;
import com.uni.unipms.model.Out.TS010201OVO;
import com.uni.unipms.service.TS0101Service;
import com.uni.unipms.service.TS0102Service;

@Controller
@RequestMapping("/")
public class TS0102Controller {
	
	final static Logger logger = LoggerFactory.getLogger(TS0102Controller.class);
	
	@Autowired
	private TS0102Service ts0102Service;
	
	@Autowired
	private TS0101Service ts0101Service;
	
	@RequestMapping(value="/TS010202", method = RequestMethod.POST)
	@ResponseBody
	public Object TS010202 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody TS010201IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		TS010201OVO prjtTestDetailInfo = ts0102Service.TS010202(vo);
		model.addAttribute("prjtTestDetailInfo", prjtTestDetailInfo);
		
		return model;
	}
	
	@RequestMapping(value="/TS010211", method = RequestMethod.POST)
	@ResponseBody
	public Object TS010211 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody TS010201IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		TS010101IVO ts010101ivo = new TS010101IVO();
		ts010101ivo.setsPRJT_ID(vo.getsPRJT_ID());
		
		List<TS010101OVO> prjtTestScnrInfo = ts0101Service.TS010111(ts010101ivo);
		model.addAttribute("prjtTestScnrInfo", prjtTestScnrInfo);
		
		return model;
	}
	
	@RequestMapping(value="/TS010212", method = RequestMethod.POST)
	@ResponseBody
	public Object TS010212 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody TS010201IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<TS010201OVO> prjtTestDetailInfo = ts0102Service.TS010212(vo);
		model.addAttribute("prjtTestDetailInfo", prjtTestDetailInfo);
		
		return model;
	}
	
	@RequestMapping(value="/TS010221", method = RequestMethod.POST)
	@ResponseBody
	public Object TS010221 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody TS010201IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = ts0102Service.TS010221(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/TS010222", method = RequestMethod.POST)
	@ResponseBody
	public Object TS010222 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody TS010202IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = ts0102Service.TS010222(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/TS010241", method = RequestMethod.POST)
	@ResponseBody
	public Object TS010241 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody TS010201IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = ts0102Service.TS010241(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/TS010253", method = RequestMethod.POST)
	@ResponseBody
	public Object TS010253 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody TS010201IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<TS010201OVO> prjtTestDetailInfo = null;
		
		String rootPath = "";
		String saveFile = "";
		String fileName = vo.getsFILE_NM();
		
		try {
    		rootPath = GetSharedCache.getCacheServiceInfo(ConstantMessage.FILE_BASE_PATH);
    		saveFile = rootPath + File.separator + "upload/file" + File.separator + fileName;
    		
    		CM004101IVO cm004101ivo = new CM004101IVO();
			cm004101ivo.setsSaveFileNm(saveFile);
			cm004101ivo.setsFileType(fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length()).toLowerCase());
			
    		// 하나만 처리됨
    		prjtTestDetailInfo = ts0102Service.TS010252(cm004101ivo);

		} catch (Exception e) {
			//e.printStackTrace();
		}
		
		model.addAttribute("prjtTestDetailInfo", prjtTestDetailInfo);
	    
		return model;
	}
}