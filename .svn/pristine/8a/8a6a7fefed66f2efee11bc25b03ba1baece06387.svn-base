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
import com.uni.unipms.model.In.TS010101IVO;
import com.uni.unipms.model.In.TS010201IVO;
import com.uni.unipms.model.In.TS010301IVO;
import com.uni.unipms.model.Out.CM001101OVO;
import com.uni.unipms.model.Out.TS010101OVO;
import com.uni.unipms.model.Out.TS010201OVO;
import com.uni.unipms.model.Out.TS010301OVO;
import com.uni.unipms.service.CM0011Service;
import com.uni.unipms.service.TS0101Service;
import com.uni.unipms.service.TS0102Service;
import com.uni.unipms.service.TS0103Service;

@Controller
@RequestMapping("/")
public class TS0103Controller {
	
	final static Logger logger = LoggerFactory.getLogger(TS0103Controller.class);
	
	@Autowired
	private TS0103Service ts0103Service;
	
	@Autowired
	private CM0011Service cm0011Service;
	
	@Autowired
	private TS0101Service ts0101Service;
	
	@Autowired
	private TS0102Service ts0102Service;
	
	@RequestMapping(value="/TS010301", method = RequestMethod.POST)
	@ResponseBody
	public Object TS010301 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody TS010301IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM001101IVO cm001101ivo = new CM001101IVO();
		cm001101ivo.setsPRJT_ID(vo.getsPRJT_ID());
		cm001101ivo.setsCODE_TYPE("TSVR");

		List<CM001101OVO> prjtTestSvrt = cm0011Service.CM001101(cm001101ivo);
		model.addAttribute("prjtTestSvrt", prjtTestSvrt);
		
		return model;
	}
	
	@RequestMapping(value="/TS010311", method = RequestMethod.POST)
	@ResponseBody
	public Object TS010311 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody TS010301IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		TS010101IVO ts010101ivo = new TS010101IVO();
		ts010101ivo.setsPRJT_ID(vo.getsPRJT_ID());
		
		List<TS010101OVO> prjtTestScnrInfo = ts0101Service.TS010111(ts010101ivo);
		model.addAttribute("prjtTestScnrInfo", prjtTestScnrInfo);
		
		return model;
	}
	
	@RequestMapping(value="/TS010312", method = RequestMethod.POST)
	@ResponseBody
	public Object TS010312 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody TS010301IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		TS010201IVO ts010201ivo = new TS010201IVO();
		ts010201ivo = (TS010201IVO) vo;

		List<TS010201OVO> prjtTestDetailInfo = ts0102Service.TS010212(ts010201ivo);
		model.addAttribute("prjtTestDetailInfo", prjtTestDetailInfo);
		
		return model;
	}

	@RequestMapping(value="/TS010313", method = RequestMethod.POST)
	@ResponseBody
	public Object TS010313 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody TS010301IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		TS010301OVO prjtTestDetailInfo = ts0103Service.TS010313(vo);
		model.addAttribute("prjtTestDetailInfo", prjtTestDetailInfo);
		
		return model;
	}
	
	@RequestMapping(value="/TS010331", method = RequestMethod.POST)
	@ResponseBody
	public Object TS010331 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody TS010301IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = ts0103Service.TS010331(vo);
		model.addAttribute("result", result);
		
		return model;
	}
}