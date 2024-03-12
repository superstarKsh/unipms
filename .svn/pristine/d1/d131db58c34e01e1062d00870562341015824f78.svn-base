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
import com.uni.unipms.model.In.DV020101IVO;
import com.uni.unipms.model.In.DV020102IVO;
import com.uni.unipms.model.In.DV020103IVO;
import com.uni.unipms.model.In.DV020104IVO;
import com.uni.unipms.model.In.DV020105IVO;
import com.uni.unipms.model.In.DV020106IVO;
import com.uni.unipms.model.Out.CM001101OVO;
import com.uni.unipms.model.Out.DV020101OVO;
import com.uni.unipms.service.CM0011Service;
import com.uni.unipms.service.DV0201Service;

@Controller
@RequestMapping("/")
public class DV0201Controller {
	
	final static Logger logger = LoggerFactory.getLogger(DV0201Controller.class);
	
	@Autowired
	private DV0201Service dv0201Service;
	
	@Autowired
	private CM0011Service cm0011Service;
	
	@RequestMapping(value="/DV020101", method = RequestMethod.POST)
	@ResponseBody
	public Object DV020101 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV020101IVO vo) {
		
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
	
	@RequestMapping(value="/DV020102", method = RequestMethod.POST)
	@ResponseBody
	public Object DV020102 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV020101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		DV020101OVO taskInfo = dv0201Service.DV020102(vo);
		model.addAttribute("taskInfo", taskInfo);
		
		return model;
	}
	
	@RequestMapping(value="/DV020111", method = RequestMethod.POST)
	@ResponseBody
	public Object DV020111 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV020101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<DV020101OVO> taskInfo = dv0201Service.DV020111(vo);
		model.addAttribute("taskInfo", taskInfo);
		
		return model;
	}
	
	@RequestMapping(value="/DV020121", method = RequestMethod.POST)
	@ResponseBody
	public Object DV020121 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV020101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = dv0201Service.DV020121(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/DV020122", method = RequestMethod.POST)
	@ResponseBody
	public Object DV020122 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV020102IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = dv0201Service.DV020122(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/DV020141", method = RequestMethod.POST)
	@ResponseBody
	public Object DV020141 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV020101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = dv0201Service.DV020141(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/DV020102A", method = RequestMethod.POST)
	@ResponseBody
	public Object DV020102A (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV020103IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		DV020101OVO segInfo = dv0201Service.DV020102A(vo);
		model.addAttribute("segInfo", segInfo);
		
		return model;
	}
	
	@RequestMapping(value="/DV020111A", method = RequestMethod.POST)
	@ResponseBody
	public Object DV020111A (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV020103IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<DV020101OVO> segInfo = dv0201Service.DV020111A(vo);
		model.addAttribute("segInfo", segInfo);
		
		return model;
	}
	
	@RequestMapping(value="/DV020121A", method = RequestMethod.POST)
	@ResponseBody
	public Object DV020121A (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV020103IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = dv0201Service.DV020121A(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/DV020122A", method = RequestMethod.POST)
	@ResponseBody
	public Object DV020122A (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV020104IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = dv0201Service.DV020122A(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/DV020141A", method = RequestMethod.POST)
	@ResponseBody
	public Object DV020141A (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV020103IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = dv0201Service.DV020141A(vo);
		model.addAttribute("result", result);
		
		return model;
	}

	@RequestMapping(value="/DV020102B", method = RequestMethod.POST)
	@ResponseBody
	public Object DV020102B (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV020105IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		DV020101OVO segSubInfo = dv0201Service.DV020102B(vo);
		model.addAttribute("segSubInfo", segSubInfo);
		
		return model;
	}
	
	@RequestMapping(value="/DV020111B", method = RequestMethod.POST)
	@ResponseBody
	public Object DV020111B (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV020105IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<DV020101OVO> segSubInfo = dv0201Service.DV020111B(vo);
		model.addAttribute("segSubInfo", segSubInfo);
		
		return model;
	}
	
	@RequestMapping(value="/DV020121B", method = RequestMethod.POST)
	@ResponseBody
	public Object DV020121B (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV020105IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = dv0201Service.DV020121B(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/DV020122B", method = RequestMethod.POST)
	@ResponseBody
	public Object DV020122B (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV020106IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = dv0201Service.DV020122B(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/DV020141B", method = RequestMethod.POST)
	@ResponseBody
	public Object DV020141B (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV020105IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = dv0201Service.DV020141B(vo);
		model.addAttribute("result", result);
		
		return model;
	}
}