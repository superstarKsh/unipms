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

import com.uni.unipms.model.In.MG140101IVO;
import com.uni.unipms.model.Out.MG140101OVO;
import com.uni.unipms.service.MG1401Service;

@Controller
@RequestMapping("/")
public class MG1401Controller {
	
	final static Logger logger = LoggerFactory.getLogger(MG1401Controller.class);
	
	@Autowired
	private MG1401Service mg1401Service;
	
	@RequestMapping(value="/MG140111", method = RequestMethod.POST)
	@ResponseBody
	public Object MG140111 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody MG140101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		List<MG140101OVO> mngInfo = mg1401Service.MG140111(vo);		
		model.addAttribute("mngInfo", mngInfo);
		
		return model;
	}
}