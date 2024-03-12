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

import com.uni.unipms.model.In.MN020101IVO;
import com.uni.unipms.model.Out.MN020101OVO;
import com.uni.unipms.model.Out.MN020102OVO;
import com.uni.unipms.model.Out.MN020103OVO;
import com.uni.unipms.model.Out.MN020104OVO;
import com.uni.unipms.model.Out.MN020105OVO;
import com.uni.unipms.service.CM0011Service;
import com.uni.unipms.service.MN0201Service;

@Controller
@RequestMapping("/")
public class MN0201Controller {
	
	final static Logger logger = LoggerFactory.getLogger(MN0201Controller.class);
	
	@Autowired
	private MN0201Service mn0201Service;
	
	@Autowired
	private CM0011Service cm0011Service;
	
	@RequestMapping(value="/MN020111", method = RequestMethod.POST)
	@ResponseBody
	public Object MN020111 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody MN020101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<MN020101OVO> prjtStage = mn0201Service.MN020111A(vo);
		model.addAttribute("prjtStage", prjtStage);
		
		List<MN020102OVO> prjtStageDetail = mn0201Service.MN020111B(vo);
		model.addAttribute("prjtStageDetail", prjtStageDetail);
		
		List<MN020103OVO> prjtDevSchlT = mn0201Service.MN020111C(vo);
		model.addAttribute("prjtDevSchlT", prjtDevSchlT);
		
		List<MN020103OVO> prjtDevSchl = mn0201Service.MN020111D(vo);
		model.addAttribute("prjtDevSchl", prjtDevSchl);
		
		List<MN020104OVO> prjtIssue = mn0201Service.MN020111E(vo);
		model.addAttribute("prjtIssue", prjtIssue);
		
		List<MN020105OVO> prjtNotice = mn0201Service.MN020111F(vo);
		model.addAttribute("prjtNotice", prjtNotice);
		
		return model;
	}
}