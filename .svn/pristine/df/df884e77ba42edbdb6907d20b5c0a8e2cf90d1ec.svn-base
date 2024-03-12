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
import com.uni.unipms.model.In.MG010101IVO;
import com.uni.unipms.model.In.MG010102IVO;
import com.uni.unipms.model.Out.MG010101OVO;
import com.uni.unipms.service.MG0101Service;

@Controller
@RequestMapping("/")
public class MG0101Controller {
	
	final static Logger logger = LoggerFactory.getLogger(MG0101Controller.class);
	
	@Autowired
	private MG0101Service mg0101Service;

	@RequestMapping(value="/MG010102", method = RequestMethod.POST)
	@ResponseBody
	public Object MG010102 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody MG010101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		MG010101OVO taskInfo = mg0101Service.MG010102(vo);
		model.addAttribute("taskInfo", taskInfo);
		
		return model;
	}
	
	@RequestMapping(value="/MG010111", method = RequestMethod.POST)
	@ResponseBody
	public Object MG010111 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody MG010101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<MG010101OVO> taskInfo = mg0101Service.MG010111(vo);
		model.addAttribute("taskInfo", taskInfo);
		
		return model;
	}
	
	@RequestMapping(value="/MG010121", method = RequestMethod.POST)
	@ResponseBody
	public Object MG010121 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody MG010101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = mg0101Service.MG010121(vo);
		result = mg0101Service.MG010132(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/MG010122", method = RequestMethod.POST)
	@ResponseBody
	public Object MG010122 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody MG010102IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		int result = mg0101Service.MG010122(vo);
		
		MG010101IVO mg010101ivo = new MG010101IVO();
		mg010101ivo.setsPRJT_ID(vo.getsPRJT_ID());
		result = mg0101Service.MG010132(mg010101ivo);
		
		model.addAttribute("result", result);
		return model;
	}
	
	@RequestMapping(value="/MG010122A", method = RequestMethod.POST)
	@ResponseBody
	public Object MG010122A (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody MG010102IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		int result = mg0101Service.MG010122A(vo);
		
		MG010101IVO mg010101ivo = new MG010101IVO();
		mg010101ivo.setsPRJT_ID(vo.getsPRJT_ID());
		result = mg0101Service.MG010132(mg010101ivo);
		
		model.addAttribute("result", result);
		
		return model;
	}

	@RequestMapping(value="/MG010141", method = RequestMethod.POST)
	@ResponseBody
	public Object MG010141 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody MG010101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		int result = mg0101Service.MG010141(vo);
		result = mg0101Service.MG010132(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/MG010153", method = RequestMethod.POST)
	@ResponseBody
	public Object MG010153 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody MG010101IVO vo) {

		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		List<MG010101OVO> mg010101ovo_excel = null;
		
		String rootPath = "";
	    String saveFile = "";
	    String fileName = vo.getsFILE_NM();
	    		
		rootPath = GetSharedCache.getCacheServiceInfo(ConstantMessage.FILE_BASE_PATH);
		saveFile = rootPath + File.separator + "/upload/file" + File.separator + fileName;

		CM004101IVO cm004101ivo = new CM004101IVO();
		cm004101ivo.setsSaveFileNm(saveFile);
		cm004101ivo.setsFileType(fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length()).toLowerCase());
		mg010101ovo_excel = mg0101Service.MG010152(cm004101ivo);

	    model.addAttribute("mg010101ovo_excel", mg010101ovo_excel);
		
		return model;
	}
}