package com.uni.unipms.controller;

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

import com.uni.unipms.model.In.CM000101IVO;
import com.uni.unipms.model.Out.CM000101OVO;
import com.uni.unipms.service.WSCM0001Service;

@Controller
@RequestMapping("/")
public class WSCM0001Controller {
	
	final static Logger logger = LoggerFactory.getLogger(WSCM0001Controller.class);
	
	@Autowired
	private WSCM0001Service cm0001Service;
	
	@RequestMapping(value="/WSCM000101", method = RequestMethod.POST)
	@ResponseBody
	public Object WSCM000101 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody CM000101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  login Start");
		logger.debug("**************************************************");
		
		logger.debug("**  CM0001IVO   : [" + vo.toString() + "]");
		
		CM000101OVO userInfo = cm0001Service.CM000101(vo);

		model.addAttribute("userInfo", userInfo);
		
        logger.debug("**************************************************");
        logger.debug("**  login End");
        logger.debug("**************************************************");
		
		return model;
	}

}