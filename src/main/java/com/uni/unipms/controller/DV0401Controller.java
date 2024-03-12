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

import com.uni.unipms.common.Util.ExcelCreate;
import com.uni.unipms.model.In.CM001101IVO;
import com.uni.unipms.model.In.CM003101IVO;
import com.uni.unipms.model.In.DV030101IVO;
import com.uni.unipms.model.In.DV040101IVO;
import com.uni.unipms.model.In.DV040102IVO;
import com.uni.unipms.model.Out.CM001101OVO;
import com.uni.unipms.model.Out.CM003101OVO;
import com.uni.unipms.model.Out.DV040101OVO;
import com.uni.unipms.model.Out.DV040102OVO;
import com.uni.unipms.model.Out.DV040103OVO;
import com.uni.unipms.service.CM0011Service;
import com.uni.unipms.service.CM0031Service;
import com.uni.unipms.service.DV0401Service;

@Controller
@RequestMapping("/")
public class DV0401Controller {
	
	final static Logger logger = LoggerFactory.getLogger(DV0401Controller.class);
	
	@Autowired
	private DV0401Service dv0401Service;

	@Autowired
	private CM0011Service cm0011Service;
	
	@Autowired
	private CM0031Service cm0031Service;
	
	@RequestMapping(value="/DV040101", method = RequestMethod.POST)
	@ResponseBody
	public Object DV040101 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV040101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM001101IVO cm001101ivo = new CM001101IVO();
		cm001101ivo.setsPRJT_ID(vo.getsPRJT_ID());

		cm001101ivo.setsCODE_TYPE("PJST");
		List<CM001101OVO> prjtStage = cm0011Service.CM001101(cm001101ivo);
		model.addAttribute("prjtStage", prjtStage);

		cm001101ivo.setsCODE_TYPE("PRGT");
		List<CM001101OVO> prjPgmType = cm0011Service.CM001101(cm001101ivo);
		model.addAttribute("prjPgmType", prjPgmType);

		return model;
	}
	
	@RequestMapping(value="/DV040111", method = RequestMethod.POST)
	@ResponseBody
	public Object DV040111 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV040101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<DV040101OVO> prjtPrgmInfo = dv0401Service.DV040111(vo);
		model.addAttribute("prjtPrgmInfo", prjtPrgmInfo);
		
		List<DV040102OVO> prjtPrgmStatus = dv0401Service.DV040115(vo);
		model.addAttribute("prjtPrgmStatus", prjtPrgmStatus);
		
		return model;
	}
	
	@RequestMapping(value="/DV040131", method = RequestMethod.POST)
	@ResponseBody
	public Object DV040131 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV040102IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = dv0401Service.DV040131(vo);
		model.addAttribute("taskInfo", result);
		
		return model;
	}
	
	@RequestMapping(value="/DV040154", method = RequestMethod.POST)
	@ResponseBody
	public Object DV040154 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV040101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		List<DV040103OVO> prjtDevInfo = dv0401Service.DV040154(vo);
		String fileName = ExcelCreate.excelCreateRndm(request, prjtDevInfo);
		
		model.addAttribute("prjtDevInfo", prjtDevInfo);
		model.addAttribute("fileName", fileName);
		
		return model;
	}
	
	@RequestMapping(value="/DV040181", method = RequestMethod.POST)
	@ResponseBody
	public Object DV040181 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV030101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM003101IVO CM003101IVO = new CM003101IVO();
		CM003101IVO.setsDOMAIN_ID(vo.getsDOMAIN_ID());
		CM003101IVO.setsPRJT_ID(vo.getsPRJT_ID());
		CM003101IVO.setsPRJT_STAGE(vo.getsPRJT_STAGE());
		
		List<CM003101OVO> prjTaskInfo = cm0031Service.CM003111(CM003101IVO);
		model.addAttribute("prjTaskInfo", prjTaskInfo);
		
		return model;
	}
	
	@RequestMapping(value="/DV040182", method = RequestMethod.POST)
	@ResponseBody
	public Object DV040182 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV030101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM003101IVO CM003101IVO = new CM003101IVO();
		CM003101IVO.setsDOMAIN_ID(vo.getsDOMAIN_ID());
		CM003101IVO.setsPRJT_ID(vo.getsPRJT_ID());
		CM003101IVO.setsPRJT_STAGE(vo.getsPRJT_STAGE());
		CM003101IVO.setsTASK_ID(vo.getsTASK_ID());
		
		List<CM003101OVO> prjSegInfo = cm0031Service.CM003112(CM003101IVO);
		model.addAttribute("prjSegInfo", prjSegInfo);
		
		return model;
	}
	
	@RequestMapping(value="/DV040183", method = RequestMethod.POST)
	@ResponseBody
	public Object DV040183 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV030101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM003101IVO CM003101IVO = new CM003101IVO();
		CM003101IVO.setsDOMAIN_ID(vo.getsDOMAIN_ID());
		CM003101IVO.setsPRJT_ID(vo.getsPRJT_ID());
		CM003101IVO.setsPRJT_STAGE(vo.getsPRJT_STAGE());
		CM003101IVO.setsTASK_ID(vo.getsTASK_ID());
		CM003101IVO.setsSEG_ID(vo.getsSEG_ID());
		
		List<CM003101OVO> prjSegSubInfo = cm0031Service.CM003113(CM003101IVO);
		model.addAttribute("prjSegSubInfo", prjSegSubInfo);
		
		return model;
	}

}