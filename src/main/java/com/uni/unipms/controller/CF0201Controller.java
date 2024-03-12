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

import com.uni.unipms.model.In.CF020101IVO;
import com.uni.unipms.model.Out.CF020101OVO;
import com.uni.unipms.service.CF0201Service;

@Controller
@RequestMapping("/")
public class CF0201Controller {
	final static Logger logger = LoggerFactory.getLogger(CF0201Controller.class);
	
	@Autowired
	private CF0201Service cf0201Service;
	
	@RequestMapping(value="/CF020111", method = RequestMethod.POST)
	@ResponseBody
	public Object CF020111 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody CF020101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<CF020101OVO> procdInfoList = cf0201Service.CF020111(vo);		
		model.addAttribute("procdInfo", procdInfoList);

		return model;
	}
	
	@RequestMapping(value="/CF020113", method = RequestMethod.POST)
	@ResponseBody
	public Object CF020113 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody CF020101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");		
		
		CF020101OVO procdInfo = cf0201Service.CF020113(vo);
		model.addAttribute("procdInfo", procdInfo);
		
		return model;
	}
	
	@RequestMapping(value="/CF020121", method = RequestMethod.POST)
	@ResponseBody
	public Object CF020121 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody CF020101IVO vo) {		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = cf0201Service.CF020121(vo);
		model.addAttribute("result", result);
		
		return model;
	}
}