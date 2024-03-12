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

import com.uni.unipms.model.In.MG120101IVO;
import com.uni.unipms.model.In.MG120102IVO;
import com.uni.unipms.model.Out.MG120101OVO;
import com.uni.unipms.model.Out.MG120102OVO;
import com.uni.unipms.service.MG1201Service;

@Controller
@RequestMapping("/")
public class MG1201Controller {
	
	final static Logger logger = LoggerFactory.getLogger(MG1201Controller.class);
	
	@Autowired
	private MG1201Service mg0102Service;

	@RequestMapping(value="/MG120111", method = RequestMethod.POST)
	@ResponseBody
	public Object MG010201 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody MG120101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		List<MG120101OVO> activityInfo = mg0102Service.MG120111(vo);
		model.addAttribute("activityInfo", activityInfo);
		
		return model;
	}
	
	@RequestMapping(value="/MG120112", method = RequestMethod.POST)
	@ResponseBody
	public Object MG120112 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody MG120101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		MG120102OVO TaskIdInfo = mg0102Service.MG120102(vo);
		model.addAttribute("TaskIdInfo", TaskIdInfo);
		
		List<MG120102OVO> taskInfo = mg0102Service.MG120112(vo);
		model.addAttribute("taskInfo", taskInfo);

		return model;
	}
	
	@RequestMapping(value="/MG120121", method = RequestMethod.POST)
	@ResponseBody
	public Object MG120121 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody MG120101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = mg0102Service.MG120121(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/MG120141", method = RequestMethod.POST)
	@ResponseBody
	public Object MG120141 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody MG120101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = mg0102Service.MG120141(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/MG120122", method = RequestMethod.POST)
	@ResponseBody
	public Object MG120122 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody MG120102IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = mg0102Service.MG120122(vo);
		model.addAttribute("result", result);
		
		return model;
	}
}