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

import com.uni.unipms.model.In.CM003101IVO;
import com.uni.unipms.model.In.TS010101IVO;
import com.uni.unipms.model.In.TS010102IVO;
import com.uni.unipms.model.Out.CM003101OVO;
import com.uni.unipms.model.Out.TS010101OVO;
import com.uni.unipms.service.CM0011Service;
import com.uni.unipms.service.CM0031Service;
import com.uni.unipms.service.TS0101Service;

@Controller
@RequestMapping("/")
public class TS0101Controller {
	
	final static Logger logger = LoggerFactory.getLogger(TS0101Controller.class);
	
	@Autowired
	private TS0101Service ts0101Service;
	
	@Autowired
	private CM0011Service cm0011Service;
	
	@Autowired
	private CM0031Service cm0031Service;
	
	@RequestMapping(value="/TS010111", method = RequestMethod.POST)
	@ResponseBody
	public Object TS010111 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody TS010101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		List<TS010101OVO> prjtTestScnrInfo = ts0101Service.TS010111(vo);
		model.addAttribute("prjtTestScnrInfo", prjtTestScnrInfo);

		return model;
	}
	
	@RequestMapping(value="/TS010121", method = RequestMethod.POST)
	@ResponseBody
	public Object TS010121 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody TS010101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = ts0101Service.TS010121(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/TS010122", method = RequestMethod.POST)
	@ResponseBody
	public Object TS010122 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody TS010102IVO vo) {	
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = ts0101Service.TS010122(vo);

		model.addAttribute("result", result);
		return model;
	}

	@RequestMapping(value="/TS010141", method = RequestMethod.POST)
	@ResponseBody
	public Object TS010141 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody TS010101IVO vo) {
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = ts0101Service.TS010141(vo);
		
		model.addAttribute("result", result);
		return model;
	}

	@RequestMapping(value="/TS010181", method = RequestMethod.POST)
	@ResponseBody
	public Object TS010181 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody TS010101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM003101IVO CM003101IVO = new CM003101IVO();
		CM003101IVO.setsDOMAIN_ID(vo.getsDOMAIN_ID());
		CM003101IVO.setsPRJT_ID(vo.getsPRJT_ID());
		CM003101IVO.setsPRJT_STAGE(vo.getsPRJT_STAGE());
		
		List<CM003101OVO> prjTaskInfo = cm0031Service.CM003121(CM003101IVO);
		model.addAttribute("prjTaskInfo", prjTaskInfo);
		
		TS010101OVO prjtTestScnrInfo = ts0101Service.TS010102(vo);
		model.addAttribute("prjtTestScnrInfo", prjtTestScnrInfo);
		
		return model;
	}
	
	@RequestMapping(value="/TS010182", method = RequestMethod.POST)
	@ResponseBody
	public Object TS010182 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody TS010101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM003101IVO CM003101IVO = new CM003101IVO();
		CM003101IVO.setsDOMAIN_ID(vo.getsDOMAIN_ID());
		CM003101IVO.setsPRJT_ID(vo.getsPRJT_ID());
		CM003101IVO.setsPRJT_STAGE(vo.getsPRJT_STAGE());
		CM003101IVO.setsTASK_ID(vo.getsTASK_ID());
		
		List<CM003101OVO> prjSegInfo = cm0031Service.CM003122(CM003101IVO);
		model.addAttribute("prjSegInfo", prjSegInfo);
		
		TS010101OVO prjtTestScnrInfo = ts0101Service.TS010102(vo);
		model.addAttribute("prjtTestScnrInfo", prjtTestScnrInfo);
		
		return model;
	}
	
	@RequestMapping(value="/TS010183", method = RequestMethod.POST)
	@ResponseBody
	public Object TS010183 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody TS010101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM003101IVO CM003101IVO = new CM003101IVO();
		CM003101IVO.setsDOMAIN_ID(vo.getsDOMAIN_ID());
		CM003101IVO.setsPRJT_ID(vo.getsPRJT_ID());
		CM003101IVO.setsPRJT_STAGE(vo.getsPRJT_STAGE());
		CM003101IVO.setsTASK_ID(vo.getsTASK_ID());
		CM003101IVO.setsSEG_ID(vo.getsSEG_ID());
		
		List<CM003101OVO> prjSegSubInfo = cm0031Service.CM003123(CM003101IVO);
		model.addAttribute("prjSegSubInfo", prjSegSubInfo);
		
		TS010101OVO prjtTestScnrInfo = ts0101Service.TS010102(vo);
		model.addAttribute("prjtTestScnrInfo", prjtTestScnrInfo);
		
		return model;
	}

}