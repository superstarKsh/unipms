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
import com.uni.unipms.model.In.DV030101IVO;
import com.uni.unipms.model.In.DV050101IVO;
import com.uni.unipms.model.In.DV050102IVO;
import com.uni.unipms.model.Out.CM001101OVO;
import com.uni.unipms.model.Out.CM003101OVO;
import com.uni.unipms.model.Out.DV050101OVO;
import com.uni.unipms.service.CM0011Service;
import com.uni.unipms.service.CM0031Service;
import com.uni.unipms.service.DV0501Service;

@Controller
@RequestMapping("/")
public class DV0501Controller {
	
	final static Logger logger = LoggerFactory.getLogger(DV0501Controller.class);
	
	@Autowired
	private DV0501Service dv0501Service;
	
	@Autowired
	private CM0011Service cm0011Service;
	
	@Autowired
	private CM0031Service cm0031Service;
	
	@RequestMapping(value="/DV050101", method = RequestMethod.POST)
	@ResponseBody
	public Object DV050101 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody DV050101IVO vo) {
		
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
	
	@RequestMapping(value="/DV050102", method = RequestMethod.POST)
	@ResponseBody
	public Object DV050102 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody DV050101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		DV050101OVO outputInfo = dv0501Service.DV050102(vo);
		model.addAttribute("outputInfo", outputInfo);
		
		return model;
	}
	
	@RequestMapping(value="/DV050111", method = RequestMethod.POST)
	@ResponseBody
	public Object DV050111 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody DV050101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<DV050101OVO> outputInfo = dv0501Service.DV050111(vo);
		model.addAttribute("outputInfo", outputInfo);

		return model;
	}
	
	@RequestMapping(value="/DV050114", method = RequestMethod.POST)
	@ResponseBody
	public Object DV050114 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody DV050101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<DV050101OVO> outputPoolInfo = dv0501Service.DV050114(vo);
		model.addAttribute("outputPoolInfo", outputPoolInfo);

		return model;
	}
	
	@RequestMapping(value="/DV050121", method = RequestMethod.POST)
	@ResponseBody
	public Object DV050121 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody DV050101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = dv0501Service.DV050121(vo);
		model.addAttribute("result", result);

		return model;
	}
	
	@RequestMapping(value="/DV050122", method = RequestMethod.POST)
	@ResponseBody
	public Object DV050122 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody DV050102IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = dv0501Service.DV050122(vo);
		model.addAttribute("result", result);

		return model;
	}
	
	@RequestMapping(value="/DV050141", method = RequestMethod.POST)
	@ResponseBody
	public Object DV050141 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody DV050101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		int result = dv0501Service.DV050141(vo);
		model.addAttribute("result", result);
		
		return model;
	}

	@RequestMapping(value="/DV050181", method = RequestMethod.POST)
	@ResponseBody
	public Object DV050181 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV030101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM003101IVO CM003101IVO = new CM003101IVO();
		CM003101IVO.setsDOMAIN_ID(vo.getsDOMAIN_ID());
		CM003101IVO.setsPRJT_ID(vo.getsPRJT_ID());
		CM003101IVO.setsPRJT_STAGE(vo.getsPRJT_STAGE());
		
		List<CM003101OVO> prjTaskInfo = cm0031Service.CM003101(CM003101IVO);
		model.addAttribute("prjTaskInfo", prjTaskInfo);
		
		return model;
	}
}