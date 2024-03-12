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

import com.uni.unipms.model.In.NT010101IVO;
import com.uni.unipms.model.Out.NT010101OVO;
import com.uni.unipms.service.NT0101Service;

@Controller
@RequestMapping("/")
public class NT0101Controller {
	final static Logger logger = LoggerFactory.getLogger(NT0101Controller.class);
	
	@Autowired
	private NT0101Service nt0101Service;
	
	@RequestMapping(value="/NT010111", method = RequestMethod.POST)
	@ResponseBody
	public Object NT010111 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody NT010101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<NT010101OVO> noticeInfoList = nt0101Service.NT010111(vo);
		model.addAttribute("noticeInfo", noticeInfoList);
		
		return model;
	}
	
	@RequestMapping(value="/NT010113", method = RequestMethod.POST)
	@ResponseBody
	public Object NT010113 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody NT010101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		NT010101OVO noticeInfo = nt0101Service.NT010113(vo);
		model.addAttribute("noticeInfo", noticeInfo);
		
		return model;
	}
	
	@RequestMapping(value="/NT010121", method = RequestMethod.POST)
	@ResponseBody
	public Object NT010121 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody NT010101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result  = nt0101Service.NT010121(vo);
		model.addAttribute("result", result);

		return model;
	}
	
	@RequestMapping(value="/NT010141", method = RequestMethod.POST)
	@ResponseBody
	public Object NT010103 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody NT010101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result  = nt0101Service.NT010141(vo);
		model.addAttribute("result", result);
		
		return model;
	}
}