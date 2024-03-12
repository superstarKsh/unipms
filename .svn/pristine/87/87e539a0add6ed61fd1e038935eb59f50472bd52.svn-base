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

import com.uni.unipms.model.In.WSPU010101IVO;
import com.uni.unipms.model.Out.WSPU010101OVO;
import com.uni.unipms.service.WSPU0101Service;

@Controller
@RequestMapping("/")
public class WSPU0101Controller {
	
	final static Logger logger = LoggerFactory.getLogger(WSPU0101Controller.class);

	@Autowired
	private WSPU0101Service pu0101Service;
	
	@RequestMapping(value="/WSPU010101", method = RequestMethod.POST)
	@ResponseBody
	public Object PU010101 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody WSPU010101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<WSPU010101OVO> prjtInfo = pu0101Service.PU010101(vo);
		model.addAttribute("prjtInfo", prjtInfo);

		return model;
	}
}