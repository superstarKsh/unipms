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

import com.uni.unipms.model.In.CS010101IVO;
import com.uni.unipms.model.Out.CS010101OVO;
import com.uni.unipms.service.CM0011Service;
import com.uni.unipms.service.CS0101Service;

@Controller
@RequestMapping("/")
public class CS0101Controller {
	final static Logger logger = LoggerFactory.getLogger(CS0101Controller.class);
	
	@Autowired
	private CS0101Service cs0101Service;
	
	@Autowired
	private CM0011Service cm0011Service;
	
	@RequestMapping(value="/CS010111", method = RequestMethod.POST)
	@ResponseBody
	public Object CF010111 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody CS010101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		List<CS010101OVO> prjtCsrInfo = cs0101Service.CS010111(vo);
		model.addAttribute("prjtCsrInfo", prjtCsrInfo);

		return model;
	}
}