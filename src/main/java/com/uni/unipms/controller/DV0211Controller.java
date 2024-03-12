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
import com.uni.unipms.model.In.CM001101IVO;
import com.uni.unipms.model.In.CM004101IVO;
import com.uni.unipms.model.In.DV021101IVO;
import com.uni.unipms.model.Out.CM001101OVO;
import com.uni.unipms.model.Out.DV021101OVO;
import com.uni.unipms.service.CM0011Service;
import com.uni.unipms.service.DV0211Service;

@Controller
@RequestMapping("/")
public class DV0211Controller {
	
	final static Logger logger = LoggerFactory.getLogger(DV0211Controller.class);
	
	@Autowired
	private DV0211Service dv0211Service;
	
	@Autowired
	private CM0011Service cm0011Service;
	
	@RequestMapping(value="/DV021101", method = RequestMethod.POST)
	@ResponseBody
	public Object DV021101 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody DV021101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		CM001101IVO cm001101ivo = new CM001101IVO();
		cm001101ivo.setsPRJT_ID(vo.getsPRJT_ID());
		cm001101ivo.setsCODE_TYPE("PJST");

		List<CM001101OVO> prjtStage = cm0011Service.CM001101(cm001101ivo);
		model.addAttribute("prjtStage", prjtStage);

		return model;
	}
	
	@RequestMapping(value="/DV021111", method = RequestMethod.POST)
	@ResponseBody
	public Object DV021111 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody DV021101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		List<DV021101OVO> taskInfo = dv0211Service.DV021111(vo);
		model.addAttribute("taskInfo", taskInfo);

		return model;
	}
	
	@RequestMapping(value="/DV021122", method = RequestMethod.POST)
	@ResponseBody
	public Object DV021122 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV021101IVO vo) {
			
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		int result = dv0211Service.DV021122(vo);
		model.addAttribute("result", result);

		return model;
	}
		
	@RequestMapping(value="/DV021153", method = RequestMethod.POST)
	@ResponseBody
	public Object DV021153 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody DV021101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		String rootPath = "";
		String saveFile = "";
		String fileName = vo.getsFILE_NM();
		List<DV021101OVO> taskInfo = null;
		
		try {
			rootPath = GetSharedCache.getCacheServiceInfo(ConstantMessage.FILE_BASE_PATH);
			saveFile = rootPath + File.separator + "upload/file" + File.separator + fileName;
			
			CM004101IVO cm004101ivo = new CM004101IVO();
			cm004101ivo.setsSaveFileNm(saveFile);
			cm004101ivo.setsFileType(fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length()).toLowerCase());
	
			// 하나만 처리됨
			taskInfo = dv0211Service.DV021152(cm004101ivo);

		} catch (Exception e) {
			e.printStackTrace();
		}
	    
	    model.addAttribute("taskInfo", taskInfo);
		
	    logger.debug("**************************************************");
	    logger.debug("**  login End");
	    logger.debug("**************************************************");
	    
		return model;
	}
	
}