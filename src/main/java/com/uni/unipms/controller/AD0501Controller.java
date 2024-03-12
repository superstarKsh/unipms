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

import com.uni.unipms.model.In.AD050101IVO;
import com.uni.unipms.model.In.AD050102IVO;
import com.uni.unipms.model.Out.AD050101OVO;
import com.uni.unipms.service.AD0501Service;

@Controller
@RequestMapping("/")
public class AD0501Controller {
	
	final static Logger logger = LoggerFactory.getLogger(AD0501Controller.class);

	@Autowired
	private AD0501Service ad0501Service;

	@RequestMapping(value="/AD050111", method = RequestMethod.POST)
	@ResponseBody
	public Object AD050111 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD050101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		List<AD050101OVO> codeTypeInfo = ad0501Service.AD050111(vo);
		model.addAttribute("codeTypeInfo", codeTypeInfo);

		return model;
	}

	@RequestMapping(value="/AD050112", method = RequestMethod.POST)
	@ResponseBody
	public Object AD050112 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD050101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		List<AD050101OVO> codeDetailInfo = ad0501Service.AD050112(vo);
		model.addAttribute("codeDetailInfo", codeDetailInfo);

		return model;
	}  

	@RequestMapping(value="/AD050121", method = RequestMethod.POST)
	@ResponseBody
	public Object AD050121 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD050101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		int result = ad0501Service.AD050121(vo);
		model.addAttribute("result", result);

		return model;
	}

	@RequestMapping(value="/AD050141", method = RequestMethod.POST)
	@ResponseBody
	public Object AD050141 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD050101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		int result = ad0501Service.AD050141(vo);
		model.addAttribute("result", result);

		return model;
	}
	
	@RequestMapping(value="/AD050122", method = RequestMethod.POST)
	@ResponseBody
	public Object AD050122 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD050102IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		int result = ad0501Service.AD050122(vo);
		model.addAttribute("result", result);

		return model;
	}
}