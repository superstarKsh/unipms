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

import com.uni.unipms.model.In.CM001101IVO;
import com.uni.unipms.model.In.DV060101IVO;
import com.uni.unipms.model.Out.CM001101OVO;
import com.uni.unipms.model.Out.DV060101OVO;
import com.uni.unipms.model.Out.DV060102OVO;
import com.uni.unipms.service.CM0011Service;
import com.uni.unipms.service.DV0601Service;

@Controller
@RequestMapping("/")
public class DV0601Controller {
	
	final static Logger logger = LoggerFactory.getLogger(DV0601Controller.class);
	
	@Autowired
	private DV0601Service dv0601Service;
	
	@Autowired
	private CM0011Service cm0011Service;
	
	@RequestMapping(value="/DV060101", method = RequestMethod.POST)
	@ResponseBody
	public Object DV060101 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody DV060101IVO vo) {
		
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
	
	@RequestMapping(value="/DV060111", method = RequestMethod.POST)
	@ResponseBody
	public Object DV060111 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody DV060101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		List<DV060101OVO> outputInfo = dv0601Service.DV060111(vo);
		model.addAttribute("outputInfo", outputInfo);
		
		return model;
	}
	
	@RequestMapping(value="/DV060112", method = RequestMethod.POST)
	@ResponseBody
	public Object DV060112 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody DV060101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  login Start");
		logger.debug("**************************************************");
		
		logger.debug("**  input : " + vo.toString());
		
		List<DV060102OVO> outputVerInfo = dv0601Service.DV060112(vo);
		model.addAttribute("outputVerInfo", outputVerInfo);
		
		DV060102OVO outputVerIDInfo = dv0601Service.DV060102(vo);
		model.addAttribute("outputVerIDInfo", outputVerIDInfo);
		
		return model;
	}
	
	@RequestMapping(value="/DV060121", method = RequestMethod.POST)
	@ResponseBody
	public Object DV060121 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody DV060101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		int result = dv0601Service.DV060121(vo);
		model.addAttribute("result", result);

		return model;
	}
	
	@RequestMapping(value="/DV060121A", method = RequestMethod.POST)
	@ResponseBody
	public Object DV060121A (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody DV060101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		int result = dv0601Service.DV060121A(vo);
		model.addAttribute("result", result);
		
		return model;
	}
}