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

import com.uni.unipms.common.Util.DateUtil;
import com.uni.unipms.model.In.CF010101IVO;
import com.uni.unipms.model.Out.CF010101OVO;
import com.uni.unipms.service.CF0101Service;
import com.uni.unipms.service.CM0011Service;

@Controller
@RequestMapping("/")
public class CF0101Controller {
	final static Logger logger = LoggerFactory.getLogger(CF0101Controller.class);
	
	@Autowired
	private CF0101Service cf0101Service;
	
	@Autowired
	private CM0011Service cm0011Service;
	
	@RequestMapping(value="/CF010111", method = RequestMethod.POST)
	@ResponseBody
	public Object CF010111 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody CF010101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		List<CF010101OVO> prjtWeekRptInfoList = cf0101Service.CF010111(vo);
		model.addAttribute("prjtWeekRptInfo", prjtWeekRptInfoList);

		return model;
	}
	
	@RequestMapping(value="/CF010113", method = RequestMethod.POST)
	@ResponseBody
	public Object CF010113 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody CF010101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		vo.setsCURR_DT(vo.getsSTRT_DT());
		List<CF010101OVO> currWeekRptList = cf0101Service.CF010182(vo);
		model.addAttribute("currWeekRpt", currWeekRptList);

		vo.setsCURR_DT(DateUtil.getTargetDate(vo.getsSTRT_DT(), 7));
		List<CF010101OVO> nextWeekRptList = cf0101Service.CF010182(vo);
		model.addAttribute("nextWeekRpt", nextWeekRptList);

		CF010101OVO prjtWeekRptInfo = cf0101Service.CF010113(vo);
		model.addAttribute("prjtWeekRptInfo", prjtWeekRptInfo);
		
		return model;
	}
	
	@RequestMapping(value="/CF010121", method = RequestMethod.POST)
	@ResponseBody
	public Object CF010121 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody CF010101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = cf0101Service.CF010121(vo);
		model.addAttribute("result", result);

		return model;
	}
	
	@RequestMapping(value="/CF010181", method = RequestMethod.POST)
	@ResponseBody
	public Object CF010181 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody CF010101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<CF010101OVO> prjtYearInfo = cf0101Service.CF010181C(vo);
		model.addAttribute("prjtYearInfo", prjtYearInfo);

		return model;
	}
	
	@RequestMapping(value="/CF010182", method = RequestMethod.POST)
	@ResponseBody
	public Object CF010182 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody CF010101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
				
		vo.setsCURR_DT(DateUtil.getToday());
		CF010101OVO prjtCurrWeekInfo = cf0101Service.CF010181A(vo);
		model.addAttribute("prjtCurrWeekInfo", prjtCurrWeekInfo);

		List<CF010101OVO> prjtWeekInfoList = cf0101Service.CF010181B(vo);
		model.addAttribute("prjtWeekInfo", prjtWeekInfoList);
		
		return model;
	}
	
	@RequestMapping(value="/CF010183", method = RequestMethod.POST)
	@ResponseBody
	public Object CF010183 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody CF010101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		vo.setsCURR_DT(DateUtil.getToday());
		CF010101OVO prjtCurrWeekInfo = cf0101Service.CF010181A(vo);
		model.addAttribute("prjtCurrWeekInfo", prjtCurrWeekInfo);

		List<CF010101OVO> prjtYearInfo = cf0101Service.CF010181C(vo);
		model.addAttribute("prjtYearInfo", prjtYearInfo);

		return model;
	}

}