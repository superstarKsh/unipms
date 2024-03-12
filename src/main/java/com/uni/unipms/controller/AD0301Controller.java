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

import com.uni.unipms.model.In.AD030101IVO;
import com.uni.unipms.model.In.CM001101IVO;
import com.uni.unipms.model.Out.AD030101OVO;
import com.uni.unipms.model.Out.CM001101OVO;
import com.uni.unipms.service.AD0301Service;
import com.uni.unipms.service.CM0011Service;

@Controller
@RequestMapping("/")
public class AD0301Controller {
	
	final static Logger logger = LoggerFactory.getLogger(AD0301Controller.class);

	@Autowired
	private AD0301Service ad0301Service;
	
	@Autowired
	private CM0011Service cm0011Service;

	@RequestMapping(value="/AD030102", method = RequestMethod.POST)
	@ResponseBody
	public Object AD030102 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD030101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		AD030101OVO coopID = ad0301Service.AD030102(vo);
		model.addAttribute("coopID", coopID);
		
		CM001101IVO cm001101ivo = new CM001101IVO();
		cm001101ivo.setsCODE_TYPE("CPTP");
		List<CM001101OVO> coopType = cm0011Service.CM001101(cm001101ivo);
		model.addAttribute("coopType", coopType);

		return model;
	}

	@RequestMapping(value="/AD030111", method = RequestMethod.POST)
	@ResponseBody
	public Object AD030111 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD030101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<AD030101OVO> coopInfo = ad0301Service.AD030111(vo);
		model.addAttribute("coopInfo", coopInfo);

		return model;
	}  

	@RequestMapping(value="/AD030113", method = RequestMethod.POST)
	@ResponseBody
	public Object AD030113 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD030101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		AD030101OVO coopInfo = ad0301Service.AD030113(vo);
		model.addAttribute("coopInfo", coopInfo);

		return model;
	}

	@RequestMapping(value="/AD030121", method = RequestMethod.POST)
	@ResponseBody
	public Object AD030121 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD030101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = ad0301Service.AD030121(vo);
		model.addAttribute("result", result);

		return model;
	}
	

	@RequestMapping(value="/AD030141", method = RequestMethod.POST)
	@ResponseBody
	public Object AD030141 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD030101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = ad0301Service.AD030141(vo);
		model.addAttribute("result", result);

		return model;
	}
}