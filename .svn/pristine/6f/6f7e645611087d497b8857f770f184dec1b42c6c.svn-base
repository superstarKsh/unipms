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

import com.uni.unipms.model.In.TS010101IVO;
import com.uni.unipms.model.In.TS010201IVO;
import com.uni.unipms.model.In.TS010401IVO;
import com.uni.unipms.model.Out.TS010101OVO;
import com.uni.unipms.model.Out.TS010201OVO;
import com.uni.unipms.model.Out.TS010401OVO;
import com.uni.unipms.service.TS0101Service;
import com.uni.unipms.service.TS0102Service;
import com.uni.unipms.service.TS0104Service;

@Controller
@RequestMapping("/")
public class TS0104Controller {
	
	final static Logger logger = LoggerFactory.getLogger(TS0104Controller.class);
	
	@Autowired
	private TS0104Service ts0104Service;
	
	@Autowired
	private TS0101Service ts0101Service;
	
	@Autowired
	private TS0102Service ts0102Service;
	
	@RequestMapping(value="/TS010411", method = RequestMethod.POST)
	@ResponseBody
	public Object TS010411 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody TS010401IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		TS010101IVO ts010101ivo = new TS010101IVO();
		ts010101ivo.setsPRJT_ID(vo.getsPRJT_ID());
		
		List<TS010101OVO> prjtTestScnrInfo = ts0101Service.TS010111(ts010101ivo);
		model.addAttribute("prjtTestScnrInfo", prjtTestScnrInfo);
		
		return model;
	}
	
	@RequestMapping(value="/TS010412", method = RequestMethod.POST)
	@ResponseBody
	public Object TS010412 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody TS010401IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<TS010401OVO> prjtTestDetailStat = ts0104Service.TS010415(vo);
		model.addAttribute("prjtTestDetailStat", prjtTestDetailStat);
		
		TS010201IVO ts010201ivo = new TS010201IVO();
		ts010201ivo = (TS010201IVO) vo;

		List<TS010201OVO> prjtTestDetailInfo = ts0102Service.TS010212(ts010201ivo);
		model.addAttribute("prjtTestDetailInfo", prjtTestDetailInfo);
		
		return model;
	}
}