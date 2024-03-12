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

import com.uni.unipms.model.In.PJ020101IVO;
import com.uni.unipms.model.Out.WSPJ020101OVO;
import com.uni.unipms.service.CM0011Service;
import com.uni.unipms.service.WSPJ0201Service;

@Controller
@RequestMapping("/")
public class WSPJ0201Controller {
	
	final static Logger logger = LoggerFactory.getLogger(WSPJ0201Controller.class);
	
	@Autowired
	private WSPJ0201Service pj0201Service;
	
	@Autowired
	private CM0011Service cm0011Service;
	
	@RequestMapping(value="/WSPJ020113", method = RequestMethod.POST)
	@ResponseBody
	public Object WSPJ020113 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody PJ020101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		WSPJ020101OVO outDscr = pj0201Service.WSPJ020113(vo);		
		model.addAttribute("outDscr", outDscr);

		return model;
	}

}