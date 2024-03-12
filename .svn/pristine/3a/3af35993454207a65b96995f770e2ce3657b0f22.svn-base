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
import com.uni.unipms.model.In.QT010101IVO;
import com.uni.unipms.model.Out.CM001101OVO;
import com.uni.unipms.model.Out.QT010101OVO;
import com.uni.unipms.service.CM0011Service;
import com.uni.unipms.service.QT0101Service;

@Controller
@RequestMapping("/")
public class QT0101Controller {
	final static Logger logger = LoggerFactory.getLogger(QT0101Controller.class);
	
	@Autowired
	private QT0101Service qt0101Service;
	
	@Autowired
	private CM0011Service cm0011Service;
	
	@RequestMapping(value="/QT010101", method = RequestMethod.POST)
	@ResponseBody
	public Object QT010101(HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody QT010101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM001101IVO codeVO = new CM001101IVO();
		codeVO.setsPRJT_ID(vo.getsPRJT_ID());
		codeVO.setsCODE_TYPE("QTTP");

		List<CM001101OVO> qultyTypeList = cm0011Service.CM001101(codeVO);
		model.addAttribute("qultyType", qultyTypeList);
		
		codeVO.setsCODE_TYPE("QMTP");

		List<CM001101OVO> qultyTargetList = cm0011Service.CM001101(codeVO);
		model.addAttribute("qultyTarget", qultyTargetList);
		
		return model;
	}
	
	@RequestMapping(value="/QT010102", method = RequestMethod.POST)
	@ResponseBody
	public Object QT080102(HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody QT010101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		QT010101OVO qultyID = qt0101Service.QT010102(vo);
		model.addAttribute("qultyID", qultyID);
		
		return model;
	}

	@RequestMapping(value="/QT010111", method = RequestMethod.POST)
	@ResponseBody
	public Object QT010111(HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody QT010101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<QT010101OVO> qultyInfoList = qt0101Service.QT010111(vo);
		model.addAttribute("qultyInfo", qultyInfoList);
		
		return model;
	}
	
	@RequestMapping(value="/QT010121", method = RequestMethod.POST)
	@ResponseBody
	public Object QT010121(HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody QT010101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = qt0101Service.QT010121(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/QT010141", method = RequestMethod.POST)
	@ResponseBody
	public Object QT010141(HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody QT010101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = qt0101Service.QT010141(vo);
		model.addAttribute("result", result);
		
		return model;
	}
}