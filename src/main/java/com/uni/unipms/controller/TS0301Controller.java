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
import com.uni.unipms.model.In.CM003101IVO;
import com.uni.unipms.model.In.TS020101IVO;
import com.uni.unipms.model.In.TS030101IVO;
import com.uni.unipms.model.Out.CM001101OVO;
import com.uni.unipms.model.Out.CM003101OVO;
import com.uni.unipms.model.Out.TS030101OVO;
import com.uni.unipms.service.CM0011Service;
import com.uni.unipms.service.CM0031Service;
import com.uni.unipms.service.TS0301Service;
 
@Controller
@RequestMapping("/")
public class TS0301Controller {
	
	final static Logger logger = LoggerFactory.getLogger(TS0301Controller.class);
	
	@Autowired
	private TS0301Service ts0301Service;
	
	@Autowired
	private CM0011Service cm0011Service;
	
	@Autowired
	private CM0031Service cm0031Service;

	@RequestMapping(value="/TS030101", method = RequestMethod.POST)
	@ResponseBody
	public Object TS030101 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody TS020101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM001101IVO cm001101ivo = new CM001101IVO();
		cm001101ivo.setsPRJT_ID(vo.getsPRJT_ID());
		cm001101ivo.setsCODE_TYPE("TSVR");

		List<CM001101OVO> prjtDevTestInfo = cm0011Service.CM001101(cm001101ivo);
		model.addAttribute("prjtDevTestInfo", prjtDevTestInfo);

		return model;
	}

	@RequestMapping(value="/TS030111", method = RequestMethod.POST)
	@ResponseBody
	public Object TS030111 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody TS030101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<TS030101OVO> prjtDevTestInfo = ts0301Service.TS030111(vo);
		model.addAttribute("prjtDevTestInfo", prjtDevTestInfo);
		
		return model;
	}

	@RequestMapping(value="/TS030113", method = RequestMethod.POST)
	@ResponseBody
	public Object TS030113 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody TS030101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		TS030101OVO prjtDevTestInfo = ts0301Service.TS030113(vo);
		model.addAttribute("prjtDevTestInfo", prjtDevTestInfo);

		return model;
	}

	@RequestMapping(value="/TS030121", method = RequestMethod.POST)
	@ResponseBody
	public Object TS030121 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody TS030101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = ts0301Service.TS030121(vo);
		model.addAttribute("result", result);

		return model;
	}
	
	@RequestMapping(value="/TS030181", method = RequestMethod.POST)
	@ResponseBody
	public Object TS030181 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody TS030101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM003101IVO CM003101IVO = new CM003101IVO();
		CM003101IVO.setsDOMAIN_ID(vo.getsDOMAIN_ID());
		CM003101IVO.setsPRJT_ID(vo.getsPRJT_ID());
		CM003101IVO.setsPRJT_STAGE(vo.getsPRJT_STAGE());
		
		List<CM003101OVO> prjTaskInfo = cm0031Service.CM003111(CM003101IVO);
		model.addAttribute("prjTaskInfo", prjTaskInfo);

		return model;
	}
	
	@RequestMapping(value="/TS030182", method = RequestMethod.POST)
	@ResponseBody
	public Object TS030182 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody TS030101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM003101IVO CM003101IVO = new CM003101IVO();
		CM003101IVO.setsDOMAIN_ID(vo.getsDOMAIN_ID());
		CM003101IVO.setsPRJT_ID(vo.getsPRJT_ID());
		CM003101IVO.setsPRJT_STAGE(vo.getsPRJT_STAGE());
		CM003101IVO.setsTASK_ID(vo.getsTASK_ID());
		
		List<CM003101OVO> prjSegInfo = cm0031Service.CM003112(CM003101IVO);
		model.addAttribute("prjSegInfo", prjSegInfo);
		
		return model;
	}
	
	@RequestMapping(value="/TS030183", method = RequestMethod.POST)
	@ResponseBody
	public Object TS030183 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody TS030101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM003101IVO CM003101IVO = new CM003101IVO();
		CM003101IVO.setsDOMAIN_ID(vo.getsDOMAIN_ID());
		CM003101IVO.setsPRJT_ID(vo.getsPRJT_ID());
		CM003101IVO.setsPRJT_STAGE(vo.getsPRJT_STAGE());
		CM003101IVO.setsTASK_ID(vo.getsTASK_ID());
		CM003101IVO.setsSEG_ID(vo.getsSEG_ID());
		
		List<CM003101OVO> prjSegSubInfo = cm0031Service.CM003113(CM003101IVO);
		model.addAttribute("prjSegSubInfo", prjSegSubInfo);
		
		return model;
	}
}