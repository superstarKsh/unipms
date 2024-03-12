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

import com.uni.unipms.model.In.NT020101IVO;
import com.uni.unipms.model.In.NT020102IVO;
import com.uni.unipms.model.Out.NT020101OVO;
import com.uni.unipms.model.Out.NT020102OVO;
import com.uni.unipms.service.NT0201Service;

@Controller
@RequestMapping("/")
public class NT0201Controller {
	final static Logger logger = LoggerFactory.getLogger(NT0201Controller.class);
	
	@Autowired
	private NT0201Service nt0201Service;
	
	@RequestMapping(value="/NT020111", method = RequestMethod.POST)
	@ResponseBody
	public Object NT020111 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody NT020101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<NT020101OVO> noticeInfoList = nt0201Service.NT020111(vo);
		
		model.addAttribute("noticeInfo", noticeInfoList);
		return model;
	}
	
	@RequestMapping(value="/NT020113", method = RequestMethod.POST)
	@ResponseBody
	public Object NT020113 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody NT020101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		NT020101OVO bulltnBoard = nt0201Service.NT020113(vo);
		model.addAttribute("bulltnBoard", bulltnBoard);
		
		NT020102IVO nt020102ivo = new NT020102IVO();
		nt020102ivo.setsPRJT_ID(vo.getsPRJT_ID());
		nt020102ivo.setsBRD_SEQ_NO(vo.getsSEQ_NO());
		
		List<NT020102OVO> boardComment = nt0201Service.NT020112(nt020102ivo);

		model.addAttribute("boardComment", boardComment);
		return model;
	}
	
	@RequestMapping(value="/NT020121", method = RequestMethod.POST)
	@ResponseBody
	public Object NT020121 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody NT020101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result  = nt0201Service.NT020121(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/NT020123", method = RequestMethod.POST)
	@ResponseBody
	public Object NT020123 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody NT020102IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result  = nt0201Service.NT020123(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/NT020133", method = RequestMethod.POST)
	@ResponseBody
	public Object NT020133 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody NT020102IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result  = nt0201Service.NT020133(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/NT020141", method = RequestMethod.POST)
	@ResponseBody
	public Object NT020141 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody NT020101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		int result  = nt0201Service.NT020141(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/NT020143", method = RequestMethod.POST)
	@ResponseBody
	public Object NT020143 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody NT020102IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result  = nt0201Service.NT020143(vo);
		model.addAttribute("result", result);
		
		return model;
	}
}