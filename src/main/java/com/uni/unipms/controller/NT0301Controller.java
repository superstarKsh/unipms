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
import com.uni.unipms.model.In.NT030101IVO;
import com.uni.unipms.model.Out.CM001101OVO;
import com.uni.unipms.model.Out.NT030101OVO;
import com.uni.unipms.service.CM0011Service;
import com.uni.unipms.service.NT0301Service;

@Controller
@RequestMapping("/")
public class NT0301Controller {
	final static Logger logger = LoggerFactory.getLogger(NT0301Controller.class);
	
	@Autowired
	private NT0301Service NT0301Service;
	
	@Autowired
	private CM0011Service cm0011Service;
	
	@RequestMapping(value="/NT030101", method = RequestMethod.POST)
	@ResponseBody
	public Object NT030102 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody NT030101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM001101IVO codeVO = new CM001101IVO();
		codeVO.setsPRJT_ID(vo.getsPRJT_ID());
		codeVO.setsCODE_TYPE("DPLT");

		List<CM001101OVO> diaryDisplay = cm0011Service.CM001101(codeVO);
		model.addAttribute("diaryDisplay", diaryDisplay);
		
		return model;
	}
	
	@RequestMapping(value="/NT030111", method = RequestMethod.POST)
	@ResponseBody
	public Object NT030111 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody NT030101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<NT030101OVO> diaryInfo = NT0301Service.NT030111(vo);
		model.addAttribute("diaryInfo", diaryInfo);
		
		return model;
	}
	
	@RequestMapping(value="/NT030113", method = RequestMethod.POST)
	@ResponseBody
	public Object NT030113 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody NT030101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
				
		NT030101OVO diaryInfo = NT0301Service.NT030113(vo);
		model.addAttribute("diaryInfo", diaryInfo);
		
		return model;
	}
	
	@RequestMapping(value="/NT030121", method = RequestMethod.POST)
	@ResponseBody
	public Object NT030121 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody NT030101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = NT0301Service.NT030121(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/NT030141", method = RequestMethod.POST)
	@ResponseBody
	public Object NT030141 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody NT030101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		int result = NT0301Service.NT030141(vo);
		model.addAttribute("result", result);
		
		return model;
	}
}