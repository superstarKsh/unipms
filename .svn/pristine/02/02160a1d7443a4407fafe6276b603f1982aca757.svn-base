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

import com.uni.unipms.model.In.MN010101IVO;
import com.uni.unipms.model.Out.MN010101OVO;
import com.uni.unipms.model.Out.MN010102OVO;
import com.uni.unipms.model.Out.MN010103OVO;
import com.uni.unipms.model.Out.MN010104OVO;
import com.uni.unipms.service.CM0011Service;
import com.uni.unipms.service.MN0101Service;

@Controller
@RequestMapping("/")
public class MN0101Controller {
	
	final static Logger logger = LoggerFactory.getLogger(MN0101Controller.class);
	
	@Autowired
	private MN0101Service mn0101Service;
	
	@Autowired
	private CM0011Service cm0011Service;
	
	@RequestMapping(value="/MN010111", method = RequestMethod.POST)
	@ResponseBody
	public Object MN010111 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody MN010101IVO vo) {

		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<MN010101OVO> prjtInfo = mn0101Service.MN010111A(vo);
		model.addAttribute("prjtInfo", prjtInfo);

		List<MN010102OVO> weekRprt = mn0101Service.MN010111B(vo);
		model.addAttribute("weekRprt", weekRprt);
		
		List<MN010103OVO> weekInfo = mn0101Service.MN010111C(vo);
		model.addAttribute("weekInfo", weekInfo);

		List<MN010104OVO> issueInfo = mn0101Service.MN010111D(vo);
		model.addAttribute("issueInfo", issueInfo);
		
		return model;
	}

	@RequestMapping(value="/MN010111A", method = RequestMethod.POST)
	@ResponseBody
	public Object MN010111A (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody MN010101IVO vo) {

		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<MN010101OVO> prjtInfo = mn0101Service.MN010111A(vo);
		model.addAttribute("prjtInfo", prjtInfo);
		
		return model;
	}
	
	@RequestMapping(value="/MN010111B", method = RequestMethod.POST)
	@ResponseBody
	public Object MN010111B (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody MN010101IVO vo) {

		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<MN010102OVO> weekRprt = mn0101Service.MN010111B(vo);
		model.addAttribute("weekRprt", weekRprt);
		
		return model;
	}
	
	@RequestMapping(value="/MN010111C", method = RequestMethod.POST)
	@ResponseBody
	public Object MN010111C (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody MN010101IVO vo) {

		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<MN010101OVO> prjtInfo = mn0101Service.MN010111AA(vo);
		model.addAttribute("prjtInfo", prjtInfo);

		List<MN010102OVO> weekRprt = mn0101Service.MN010111BA(vo);
		model.addAttribute("weekRprt", weekRprt);
		
		List<MN010103OVO> weekInfo = mn0101Service.MN010111C(vo);
		model.addAttribute("weekInfo", weekInfo);

		List<MN010104OVO> issueInfo = mn0101Service.MN010111DA(vo);
		model.addAttribute("issueInfo", issueInfo);
		
		return model;
	}
	
	@RequestMapping(value="/MN010111D", method = RequestMethod.POST)
	@ResponseBody
	public Object MN010111D (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody MN010101IVO vo) {

		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<MN010101OVO> prjtInfo = mn0101Service.MN010111AA(vo);
		model.addAttribute("prjtInfo", prjtInfo);
		
		return model;
	}
	
	@RequestMapping(value="/MN010111F", method = RequestMethod.POST)
	@ResponseBody
	public Object MN010111F (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody MN010101IVO vo) {

		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<MN010102OVO> weekRprt = mn0101Service.MN010111BA(vo);
		model.addAttribute("weekRprt", weekRprt);
		
		return model;
	}
}