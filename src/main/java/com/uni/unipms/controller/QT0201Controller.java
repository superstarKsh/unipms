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

import com.uni.unipms.model.In.QT020101IVO;
import com.uni.unipms.model.Out.QT020101OVO;
import com.uni.unipms.service.QT0201Service;

@Controller
@RequestMapping("/")
public class QT0201Controller {
	final static Logger logger = LoggerFactory.getLogger(QT0201Controller.class);
	
	@Autowired
	private QT0201Service QT0201Service;
	
	@RequestMapping(value="/QT020102", method = RequestMethod.POST)
	@ResponseBody
	public Object QT020102(HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody QT020101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		QT020101OVO qultyID = QT0201Service.QT020102(vo);
		model.addAttribute("qultyID", qultyID);
		
		return model;
	}
	
	@RequestMapping(value="/QT020111", method = RequestMethod.POST)
	@ResponseBody
	public Object QT020101(HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody QT020101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		List<QT020101OVO> qultyInfoList = QT0201Service.QT020111(vo);
		model.addAttribute("qultyInfo", qultyInfoList);
		
		return model;
	}
	
	@RequestMapping(value="/QT020113", method = RequestMethod.POST)
	@ResponseBody
	public Object QT020103(HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody QT020101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		QT020101OVO qultyInfo = QT0201Service.QT020113(vo);
		model.addAttribute("qultyInfo", qultyInfo);
		
		return model;
	}
	
	@RequestMapping(value="/QT020121", method = RequestMethod.POST)
	@ResponseBody
	public Object QT020121(HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody QT020101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = QT0201Service.QT020121(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/QT020141", method = RequestMethod.POST)
	@ResponseBody
	public Object QT020141(HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody QT020101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = QT0201Service.QT020141(vo);
		model.addAttribute("result", result);
		
		return model;
	}

}