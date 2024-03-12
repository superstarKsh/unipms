package com.uni.unipms.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.uni.unipms.model.In.CM000101IVO;
import com.uni.unipms.model.Out.CM000101OVO;
import com.uni.unipms.service.CM0001Service;
import com.uni.unipms.service.CM0101Service;

@Controller
@RequestMapping("/")
public class CM0001Controller {
	
	final static Logger logger = LoggerFactory.getLogger(CM0001Controller.class);
	
	@Autowired
	private CM0001Service cm0001Service;
	
	@Autowired
	private CM0101Service cm0101Service;
	
	@RequestMapping(value="/CM000101", method = RequestMethod.POST)
	@ResponseBody
	public Object CM000101 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody CM000101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM000101OVO userInfo = cm0001Service.CM000101(vo);
		model.addAttribute("userInfo", userInfo);

		return model;
	}

	@RequestMapping("/logout")
	public Object CM000102 (HttpServletRequest req, HttpServletResponse res, Model model, HttpSession session) throws Exception { 
		session.invalidate();
		return model;
	}

}