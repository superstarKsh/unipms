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
import com.uni.unipms.model.In.PJ020101IVO;
import com.uni.unipms.model.In.PJ020102IVO;
import com.uni.unipms.model.Out.CM001101OVO;
import com.uni.unipms.model.Out.PJ020101OVO;
import com.uni.unipms.service.CM0011Service;
import com.uni.unipms.service.PJ0201Service;

@Controller
@RequestMapping("/")
public class PJ0201Controller {
	
	final static Logger logger = LoggerFactory.getLogger(PJ0201Controller.class);
	
	@Autowired
	private PJ0201Service pj0201Service;
	
	@Autowired
	private CM0011Service cm0011Service;
	
	@RequestMapping(value="/PJ020101", method = RequestMethod.POST)
	@ResponseBody
	public Object PJ020101 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody PJ020101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM001101IVO cm001101ivo = new CM001101IVO();
		cm001101ivo.setsPRJT_ID(vo.getsPRJT_ID());
		cm001101ivo.setsCODE_TYPE("SBPT");
		List<CM001101OVO> teamInfo = cm0011Service.CM001101(cm001101ivo);
		model.addAttribute("teamInfo", teamInfo);
		
		cm001101ivo.setsCODE_TYPE("PTRL");
		List<CM001101OVO> prjtRoll = cm0011Service.CM001101(cm001101ivo);
		model.addAttribute("prjtRoll", prjtRoll);
		
		return model;
	}
	
	@RequestMapping(value="/PJ020111", method = RequestMethod.POST)
	@ResponseBody
	public Object PJ020111 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody PJ020101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<PJ020101OVO> prjtTeamInfo = pj0201Service.PJ020111(vo);		
		model.addAttribute("prjtTeamInfo", prjtTeamInfo);

		return model;
	}
	
	@RequestMapping(value="/PJ020122", method = RequestMethod.POST)
	@ResponseBody
	public Object PJ020122 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody PJ020102IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = pj0201Service.PJ020122(vo);
		model.addAttribute("result", result);

		return model;
	}

}