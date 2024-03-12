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

import com.uni.unipms.model.In.MG130101IVO;
import com.uni.unipms.model.Out.MG130101OVO;
import com.uni.unipms.service.MG1301Service;

@Controller
@RequestMapping("/")
public class MG1301Controller {
	
	final static Logger logger = LoggerFactory.getLogger(MG1301Controller.class);
	
	@Autowired
	private MG1301Service mg1301Service;
	
	@RequestMapping(value="/MG130111", method = RequestMethod.POST)
	@ResponseBody
	public Object MG130111 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody MG130101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		List<MG130101OVO> mngInfo = mg1301Service.MG130111(vo);
		model.addAttribute("mngInfo", mngInfo);
		
		return model;
	}

	@RequestMapping(value="/MG130112", method = RequestMethod.POST)
	@ResponseBody
	public Object MG130112 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody MG130101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		MG130101OVO FileVerInfo = mg1301Service.MG130102(vo);
		model.addAttribute("FileVerInfo", FileVerInfo);
		
		List<MG130101OVO> verInfo = mg1301Service.MG130112(vo);
		model.addAttribute("verInfo", verInfo);

		return model;
	}
	
	@RequestMapping(value="/MG130121", method = RequestMethod.POST)
	@ResponseBody
	public Object MG010303 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody MG130101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = mg1301Service.MG130121(vo);
		model.addAttribute("result", result);
		
		return model;
	}
}