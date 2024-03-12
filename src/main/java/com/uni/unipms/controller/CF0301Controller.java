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

import com.uni.unipms.model.In.CM000001IVO;
import com.uni.unipms.model.In.CM001101IVO;
import com.uni.unipms.model.In.CM003101IVO;
import com.uni.unipms.model.In.CF030101IVO;
import com.uni.unipms.model.Out.CM001101OVO;
import com.uni.unipms.model.Out.CM003101OVO;
import com.uni.unipms.model.Out.CF030101OVO;
import com.uni.unipms.service.CF0301Service;
import com.uni.unipms.service.CM0011Service;
import com.uni.unipms.service.CM0031Service;

@Controller
@RequestMapping("/")
public class CF0301Controller {
	final static Logger logger = LoggerFactory.getLogger(CF0301Controller.class);
	
	@Autowired
	private CF0301Service cf0301Service;
	
	@Autowired
	private CM0011Service cm0011Service;
	
	@Autowired
	private CM0031Service cm0031Service;
	
	@RequestMapping(value="/CF030101", method = RequestMethod.POST)
	@ResponseBody
	public Object CF030101 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody CM000001IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM001101IVO codeVO = new CM001101IVO();
		codeVO.setsPRJT_ID(vo.getsPRJT_ID());
		codeVO.setsCODE_TYPE("PJST");

		List<CM001101OVO> prjtStageList = cm0011Service.CM001101(codeVO);
		model.addAttribute("prjtStage", prjtStageList);
		
		return model;
	}
	
	@RequestMapping(value="/CF030111", method = RequestMethod.POST)
	@ResponseBody
	public Object CF030111 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody CF030101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<CF030101OVO> prjtIssueInfoList  = cf0301Service.CF030111(vo);		
		model.addAttribute("prjtIssueInfo", prjtIssueInfoList);

		return model;
	}

	@RequestMapping(value="/CF030113", method = RequestMethod.POST)
	@ResponseBody
	public Object CF030113 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody CF030101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CF030101OVO prjtIssueInfo  = cf0301Service.CF030113(vo);
		model.addAttribute("prjtIssueInfo", prjtIssueInfo);
		
		return model;
	}
	
	@RequestMapping(value="/CF030121", method = RequestMethod.POST)
	@ResponseBody
	public Object CF030121 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody CF030101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");		
		
		int result  = cf0301Service.CF030121(vo);		
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/CF030141", method = RequestMethod.POST)
	@ResponseBody
	public Object CF030141 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody CF030101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result  = cf0301Service.CF030141(vo);		
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/CF030181", method = RequestMethod.POST)
	@ResponseBody
	public Object CF030181 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody CF030101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM003101IVO cm003103IVO = new CM003101IVO();
		cm003103IVO.setsDOMAIN_ID(vo.getsDOMAIN_ID());
		cm003103IVO.setsPRJT_ID(vo.getsPRJT_ID());
		cm003103IVO.setsPRJT_STAGE(vo.getsPRJT_STAGE());
		cm003103IVO.setsTASK_ID(vo.getsTASK_ID());
		
		List<CM003101OVO> prjTaskInfoList = cm0031Service.CM003101(cm003103IVO);
		model.addAttribute("prjTaskInfo", prjTaskInfoList);
		
		return model;
	}

	@RequestMapping(value="/CF030182", method = RequestMethod.POST)
	@ResponseBody
	public Object CF030182 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody CF030101IVO vo) {		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM001101IVO codeVO = new CM001101IVO();
		codeVO.setsPRJT_ID(vo.getsPRJT_ID());
		codeVO.setsCODE_TYPE("PJST");

		List<CM001101OVO> prjtStageList = cm0011Service.CM001101(codeVO);
		model.addAttribute("prjtStage", prjtStageList);
		
		codeVO.setsCODE_TYPE("ISTP");
		List<CM001101OVO> issueTypeList = cm0011Service.CM001101(codeVO);
		model.addAttribute("issueType", issueTypeList);
		
		codeVO.setsCODE_TYPE("ISIM");
		List<CM001101OVO> issueImptList = cm0011Service.CM001101(codeVO);
		model.addAttribute("issueImpt", issueImptList);

		codeVO.setsCODE_TYPE("ISST");
		List<CM001101OVO> issueProcList = cm0011Service.CM001101(codeVO);
		model.addAttribute("issueProc", issueProcList);
		
		CF030101OVO  issueID  = cf0301Service.CF030102(vo);
		model.addAttribute("issueID", issueID);

		return model;
	}
}