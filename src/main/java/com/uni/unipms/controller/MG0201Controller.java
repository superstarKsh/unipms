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

import com.uni.unipms.model.In.MG010101IVO;
import com.uni.unipms.model.In.MG020101IVO;
import com.uni.unipms.model.In.MG020102IVO;
import com.uni.unipms.model.Out.MG020101OVO;
import com.uni.unipms.model.Out.MG020102OVO;
import com.uni.unipms.service.MG0101Service;
import com.uni.unipms.service.MG0201Service;

@Controller
@RequestMapping("/")
public class MG0201Controller {
	
	final static Logger logger = LoggerFactory.getLogger(MG0201Controller.class);
	
	@Autowired
	private MG0201Service mg0201Service;
	
	@Autowired
	private MG0101Service mg0101Service;
	
	@RequestMapping(value="/MG020111", method = RequestMethod.POST)
	@ResponseBody
	public Object MG020111 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody MG020101IVO vo) {

		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<MG020101OVO> prjtInfo = mg0201Service.MG020111(vo);
		model.addAttribute("prjtInfo", prjtInfo);
		
		List<MG020102OVO> prjtDaySchl = mg0201Service.MG020111A(vo);
		model.addAttribute("prjtDaySchl", prjtDaySchl);
		
		List<MG020102OVO> prjtWeekSchl = mg0201Service.MG020111B(vo);
		model.addAttribute("prjtWeekSchl", prjtWeekSchl);
		
		List<MG020102OVO> prjtWeekCurrSchl = mg0201Service.MG020111C(vo);
		model.addAttribute("prjtWeekCurrSchl", prjtWeekCurrSchl);
		
		return model;
	}
	
	@RequestMapping(value="/MG020132", method = RequestMethod.POST)
	@ResponseBody
	public Object MG020132 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody MG020102IVO vo) {

		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = mg0201Service.MG020132(vo);
		
		MG010101IVO mg010101ivo = new MG010101IVO();
		mg010101ivo.setsPRJT_ID(vo.getsPRJT_ID());
		result = mg0101Service.MG010132(mg010101ivo);
		model.addAttribute("result", result);

		return model;
	}
}