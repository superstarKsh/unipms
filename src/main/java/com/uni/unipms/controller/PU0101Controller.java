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
import com.uni.unipms.model.In.PU010101IVO;
import com.uni.unipms.model.In.PU010111IVO;
import com.uni.unipms.model.In.PU010121IVO;
import com.uni.unipms.model.In.PU010131IVO;
import com.uni.unipms.model.In.PU010141IVO;
import com.uni.unipms.model.Out.CM001101OVO;
import com.uni.unipms.model.Out.PU010101OVO;
import com.uni.unipms.model.Out.PU010111OVO;
import com.uni.unipms.model.Out.PU010121OVO;
import com.uni.unipms.model.Out.PU010131OVO;
import com.uni.unipms.model.Out.PU010141OVO;
import com.uni.unipms.service.CM0011Service;
import com.uni.unipms.service.PU0101Service;

@Controller
@RequestMapping("/")
public class PU0101Controller {
	
	final static Logger logger = LoggerFactory.getLogger(PU0101Controller.class);
	
	@Autowired
	private PU0101Service pu0101Service;
	
	@Autowired
	private CM0011Service cm0011Service;

	@RequestMapping(value="/PU010101", method = RequestMethod.POST)
	@ResponseBody
	public Object PU010101 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody PU010101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<PU010101OVO> prjtInfo = pu0101Service.PU010101(vo);
		model.addAttribute("prjtInfo", prjtInfo);

		return model;
	}
	
	@RequestMapping(value="/PU010111", method = RequestMethod.POST)
	@ResponseBody
	public Object PU010111 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody PU010111IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<PU010111OVO> userList = pu0101Service.PU010111(vo);
		model.addAttribute("userList", userList);

		return model;
	}

	@RequestMapping(value="/PU010112", method = RequestMethod.POST)
	@ResponseBody
	public Object PU010112 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody PU010111IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<PU010111OVO> userList = pu0101Service.PU010112(vo);
		model.addAttribute("userList", userList);

		return model;
	}
	
	@RequestMapping(value="/PU010121", method = RequestMethod.POST)
	@ResponseBody
	public Object PU010121 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody PU010121IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<PU010121OVO> corpList = pu0101Service.PU010121(vo);
		model.addAttribute("corpList", corpList);

		return model;
	}
	
	@RequestMapping(value="/PU010130", method = RequestMethod.POST)
	@ResponseBody
	public Object PU010130 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody PU010131IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM001101IVO codeVO = new CM001101IVO();
		codeVO.setsPRJT_ID(vo.getsPRJT_ID());
		codeVO.setsCODE_TYPE("PJST");

		List<CM001101OVO> prjtStage = cm0011Service.CM001101(codeVO);
		model.addAttribute("prjtStage", prjtStage);

		return model;
	}
	
	@RequestMapping(value="/PU010131", method = RequestMethod.POST)
	@ResponseBody
	public Object PU010131 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody PU010131IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<PU010131OVO> taskInfo = pu0101Service.PU010131(vo);
		model.addAttribute("taskInfo", taskInfo);

		return model;
	}
	
	@RequestMapping(value="/PU010141", method = RequestMethod.POST)
	@ResponseBody
	public Object PU010141 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody PU010141IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<PU010141OVO> qultyInfo = pu0101Service.PU010141(vo);
		model.addAttribute("qultyInfo", qultyInfo);
		
		return model;
	}
	
}