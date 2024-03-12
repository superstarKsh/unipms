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

import com.uni.unipms.model.In.AD010101IVO;
import com.uni.unipms.model.In.CM001101IVO;
import com.uni.unipms.model.In.PJ010101IVO;
import com.uni.unipms.model.In.PJ010111IVO;
import com.uni.unipms.model.In.PJ010112IVO;
import com.uni.unipms.model.In.PJ010121IVO;
import com.uni.unipms.model.In.PJ010122IVO;
import com.uni.unipms.model.Out.AD010101OVO;
import com.uni.unipms.model.Out.CM001101OVO;
import com.uni.unipms.model.Out.PJ010111OVO;
import com.uni.unipms.model.Out.PJ010121OVO;
import com.uni.unipms.service.AD0101Service;
import com.uni.unipms.service.CM0011Service;
import com.uni.unipms.service.PJ0101Service;

@Controller
@RequestMapping("/")
public class PJ0101Controller {
	
	final static Logger logger = LoggerFactory.getLogger(PJ0101Controller.class);
	
	@Autowired
	private PJ0101Service pj0101Service;
	
	@Autowired
	private CM0011Service cm0011Service;
	
	@Autowired
	private AD0101Service ad0101Service;

	@RequestMapping(value="/PJ010101", method = RequestMethod.POST)
	@ResponseBody
	public Object PJ010101 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody PJ010101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM001101IVO cm001101ivo = new CM001101IVO();

		cm001101ivo.setsPRJT_ID(vo.getsPRJT_ID());
		cm001101ivo.setsCODE_TYPE("BZQT");
		List<CM001101OVO> prjtBizQuater = cm0011Service.CM001101(cm001101ivo);		
		model.addAttribute("prjtBizQuater", prjtBizQuater);
		
		cm001101ivo.setsPRJT_ID(vo.getsPRJT_ID());
		cm001101ivo.setsCODE_TYPE("BZTP");
		List<CM001101OVO> prjtBizType = cm0011Service.CM001101(cm001101ivo);
		model.addAttribute("prjtBizType", prjtBizType);
		
		cm001101ivo.setsPRJT_ID(vo.getsPRJT_ID());
		cm001101ivo.setsCODE_TYPE("PJST");
		List<CM001101OVO> prjtStage = cm0011Service.CM001101(cm001101ivo);
		model.addAttribute("prjtStage", prjtStage);

		return model;
	}

	@RequestMapping(value="/PJ010111", method = RequestMethod.POST)
	@ResponseBody
	public Object PJ010111 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody PJ010101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		AD010101IVO ad010101ivo = new AD010101IVO();
		ad010101ivo = (AD010101IVO) vo;
		
		AD010101OVO prjtInfo = ad0101Service.AD010113(ad010101ivo);
		model.addAttribute("prjtInfo", prjtInfo);

		PJ010111IVO pj010111ivo = new PJ010111IVO();
		pj010111ivo.setsPRJT_ID(vo.getsPRJT_ID());
		
		List<PJ010111OVO> prjtMmthInfo = pj0101Service.PJ010111A(pj010111ivo);
		model.addAttribute("prjtMmthInfo", prjtMmthInfo);

		PJ010121IVO pj010121ivo = new PJ010121IVO();
		pj010121ivo.setsPRJT_ID(vo.getsPRJT_ID());
	
		List<PJ010121OVO> prjtStageInfo = pj0101Service.PJ010111B(pj010121ivo);
		model.addAttribute("prjtStageInfo", prjtStageInfo);
		
        logger.debug("**************************************************");
        logger.debug("**  login End");
        logger.debug("**************************************************");
		
		return model;
	}

	@RequestMapping(value="/PJ010121", method = RequestMethod.POST)
	@ResponseBody
	public Object PJ010121 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody PJ010101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		AD010101IVO ad010101ivo = new AD010101IVO();
		ad010101ivo = (AD010101IVO) vo;
		
		int result = ad0101Service.AD010121(ad010101ivo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/PJ010122A", method = RequestMethod.POST)
	@ResponseBody
	public Object PJ010122A (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody PJ010112IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = pj0101Service.PJ010122A(vo);
		model.addAttribute("result", result);
		
		PJ010111IVO pj01011ivo = new PJ010111IVO();
		pj01011ivo.setsPRJT_ID(vo.getsPRJT_ID());

		List<PJ010111OVO> prjtMmthInfo = pj0101Service.PJ010111A(pj01011ivo);
		model.addAttribute("prjtMmthInfo", prjtMmthInfo);
		
		return model;
	}
	
	@RequestMapping(value="/PJ010122B", method = RequestMethod.POST)
	@ResponseBody
	public Object PJ010122B (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody PJ010122IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = pj0101Service.PJ010122B(vo);
		model.addAttribute("result", result);
		
		PJ010121IVO pj010121ivo = new PJ010121IVO();
		pj010121ivo.setsPRJT_ID(vo.getsPRJT_ID());

		List<PJ010121OVO> prjtStageInfo = pj0101Service.PJ010111B(pj010121ivo);
		model.addAttribute("prjtStageInfo", prjtStageInfo);
		
		return model;
	}

}