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

import com.uni.unipms.model.In.AD010101IVO;
import com.uni.unipms.model.In.CM001101IVO;
import com.uni.unipms.model.In.CM002101IVO;
import com.uni.unipms.model.Out.AD010101OVO;
import com.uni.unipms.model.Out.CM001101OVO;
import com.uni.unipms.service.CM0011Service;
import com.uni.unipms.service.CM0021Service;
import com.uni.unipms.service.WSAD0101Service;

@Controller
@RequestMapping("/")
public class WSAD0101Controller {
	
	final static Logger logger = LoggerFactory.getLogger(WSAD0101Controller.class);
	
	@Autowired
	private WSAD0101Service ad0101Service;
	
	@Autowired
	private CM0011Service cm0011Service;
	
	@Autowired
	private CM0021Service cm0021Service;
	
	@RequestMapping(value="/WSAD010101", method = RequestMethod.POST)
	@ResponseBody
	public Object WSAD010101 (HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : ");
		logger.debug("**************************************************");
		
		CM001101IVO cm001101ivo = new CM001101IVO();
		cm001101ivo.setsCODE_TYPE("BZQT");
		
		List<CM001101OVO> prjtBizQuater = cm0011Service.CM001101(cm001101ivo);
		model.addAttribute("prjtBizQuater", prjtBizQuater);
		
		cm001101ivo.setsCODE_TYPE("BZTP");
		List<CM001101OVO> prjtBizType = cm0011Service.CM001101(cm001101ivo);
		model.addAttribute("prjtBizType", prjtBizType);
		
		AD010101IVO ad010101ivo = new AD010101IVO();
		AD010101OVO prjtID = ad0101Service.AD010102(ad010101ivo);		
		model.addAttribute("prjtID", prjtID);
		
		return model;
	}
	
	@RequestMapping(value="/WSAD010113", method = RequestMethod.POST)
	@ResponseBody
	public Object WSAD010113 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody AD010101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		AD010101OVO prjtInfo = ad0101Service.AD010113(vo);
		model.addAttribute("prjtInfo", prjtInfo);
		
		return model;
	}
	
	@RequestMapping(value="/WSAD010121", method = RequestMethod.POST)
	@ResponseBody
	public Object WSAD010121 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody AD010101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = ad0101Service.AD010121(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/WSAD010141", method = RequestMethod.POST)
	@ResponseBody
	public Object WSAD010141 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody AD010101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = ad0101Service.AD010141(vo);
		
		CM002101IVO cm002101ivo = new CM002101IVO();
		cm002101ivo.setsPRJT_ID(vo.getsPRJT_ID());
		
		result = cm0021Service.CM002142(cm002101ivo);
		model.addAttribute("result", result);

		return model;
	}

}