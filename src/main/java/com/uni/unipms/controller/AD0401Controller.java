package com.uni.unipms.controller;

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

import com.uni.unipms.model.In.AD040101IVO;
import com.uni.unipms.model.In.AD040102IVO;
import com.uni.unipms.model.In.CM001101IVO;
import com.uni.unipms.model.Out.AD040101OVO;
import com.uni.unipms.model.Out.CM001101OVO;
import com.uni.unipms.service.AD0401Service;
import com.uni.unipms.service.CM0011Service;

@Controller
@RequestMapping("/")
public class AD0401Controller {
	
	final static Logger logger = LoggerFactory.getLogger(AD0401Controller.class);
	
	@Autowired
	private AD0401Service ad0401Service;
	
	@Autowired
	private CM0011Service cm0011Service;
	
	@RequestMapping(value="/AD040101", method = RequestMethod.POST)
	@ResponseBody
	public Object AD040101 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD040101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM001101IVO cm001101ivo = new CM001101IVO();
		cm001101ivo.setsPRJT_ID("00000000");
		cm001101ivo.setsCODE_TYPE("PJST");
		
		List<CM001101OVO> prjtStage = cm0011Service.CM001101(cm001101ivo);
		model.addAttribute("prjtStage", prjtStage);
		
 		return model;
	}
	
	@RequestMapping(value="/AD040102", method = RequestMethod.POST)
	@ResponseBody
	public Object AD040102 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD040101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		vo.setsPRJT_ID("00000000");

		AD040101OVO outputPoolID = ad0401Service.AD040102(vo);
		model.addAttribute("outputPoolID", outputPoolID);
		
		return model;
	}

	@RequestMapping(value="/AD040111", method = RequestMethod.POST)
	@ResponseBody
	public Object AD040111 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD040101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		vo.setsPRJT_ID("00000000");

		List<AD040101OVO> outputInfo = ad0401Service.AD040111(vo);
		model.addAttribute("outputInfo", outputInfo);
		
		return model;
	}

	
	@RequestMapping(value="/AD040121", method = RequestMethod.POST)
	@ResponseBody
	public Object AD040121 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD040101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		vo.setsPRJT_ID("00000000");

		int result = ad0401Service.AD040121(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/AD040141", method = RequestMethod.POST)
	@ResponseBody
	public Object AD040141 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD040101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		vo.setsPRJT_ID("00000000");

		int result = ad0401Service.AD040141(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/AD040122", method = RequestMethod.POST)
	@ResponseBody
	public Object AD040122 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD040102IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		vo.setsPRJT_ID("00000000");

		int result = ad0401Service.AD040122(vo);
		model.addAttribute("result", result);
		
		return model;
	}

}