package com.uni.unipms.controller;

import java.io.File;
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

import com.uni.unipms.common.Cache.GetSharedCache;
import com.uni.unipms.common.Message.ConstantMessage;
import com.uni.unipms.model.In.CM001101IVO;
import com.uni.unipms.model.In.CM003101IVO;
import com.uni.unipms.model.In.CM004101IVO;
import com.uni.unipms.model.In.DV030101IVO;
import com.uni.unipms.model.In.DV030102IVO;
import com.uni.unipms.model.Out.CM001101OVO;
import com.uni.unipms.model.Out.CM003101OVO;
import com.uni.unipms.model.Out.DV030101OVO;
import com.uni.unipms.service.CM0011Service;
import com.uni.unipms.service.CM0031Service;
import com.uni.unipms.service.DV0301Service;

@Controller
@RequestMapping("/")
public class DV0301Controller {
	
	final static Logger logger = LoggerFactory.getLogger(DV0301Controller.class);
	
	@Autowired
	private DV0301Service dv0301Service;
	
	@Autowired
	private CM0011Service cm0011Service;
	
	@Autowired
	private CM0031Service cm0031Service;
	
	@RequestMapping(value="/DV030101", method = RequestMethod.POST)
	@ResponseBody
	public Object DV030101 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV030101IVO vo) {
		
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
		cm001101ivo.setsCODE_TYPE("PGIM");

		List<CM001101OVO> prjPgmImpt = cm0011Service.CM001101(cm001101ivo);
		model.addAttribute("prjPgmImpt", prjPgmImpt);
		
		return model;
	}
	
	@RequestMapping(value="/DV030102", method = RequestMethod.POST)
	@ResponseBody
	public Object DV030102 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV030101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		DV030101OVO prjtPrgmInfo = dv0301Service.DV030102(vo);
		model.addAttribute("prjtPrgmInfo", prjtPrgmInfo);
		
		return model;
	}
	
	@RequestMapping(value="/DV030111", method = RequestMethod.POST)
	@ResponseBody
	public Object DV030111 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV030101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<DV030101OVO> prjtPrgmInfo = dv0301Service.DV030111(vo);
		model.addAttribute("prjtPrgmInfo", prjtPrgmInfo);
		
		return model;
	}
	
	@RequestMapping(value="/DV030121", method = RequestMethod.POST)
	@ResponseBody
	public Object DV030121 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV030101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = dv0301Service.DV030121(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/DV030122", method = RequestMethod.POST)
	@ResponseBody
	public Object DV030122 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV030102IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = dv0301Service.DV030122(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/DV030141", method = RequestMethod.POST)
	@ResponseBody
	public Object DV030205 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV030101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = dv0301Service.DV030141(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/DV030153", method = RequestMethod.POST)
	@ResponseBody
	public Object DV030153 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody DV030101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		String rootPath = "";
		String saveFile = "";
		String fileName = vo.getsFILE_NM();
		List<DV030101OVO> prjtDevInfo = null;
		
		try {
			rootPath = GetSharedCache.getCacheServiceInfo(ConstantMessage.FILE_BASE_PATH);
			saveFile = rootPath + File.separator + "upload/file" + File.separator + fileName;
			
			CM004101IVO cm004101ivo = new CM004101IVO();
			cm004101ivo.setsSaveFileNm(saveFile);
			cm004101ivo.setsFileType(fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length()).toLowerCase());
	
			// 하나만 처리됨
			prjtDevInfo = dv0301Service.DV030152(cm004101ivo);
			model.addAttribute("prjtDevInfo", prjtDevInfo);
		} catch (Exception e) {
			e.printStackTrace();
		}
	    
		return model;
	}

	@RequestMapping(value="/DV030181", method = RequestMethod.POST)
	@ResponseBody
	public Object DV030181 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV030101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		CM003101IVO CM003101IVO = new CM003101IVO();
		CM003101IVO.setsDOMAIN_ID(vo.getsDOMAIN_ID());
		CM003101IVO.setsPRJT_ID(vo.getsPRJT_ID());
		CM003101IVO.setsPRJT_STAGE(vo.getsPRJT_STAGE());
		
		List<CM003101OVO> prjTaskInfo = cm0031Service.CM003111(CM003101IVO);
		model.addAttribute("prjTaskInfo", prjTaskInfo);
		
		DV030101OVO prjtPrgmInfo = dv0301Service.DV030102(vo);
		model.addAttribute("prjtPrgmInfo", prjtPrgmInfo);
		
		return model;
	}
	
	@RequestMapping(value="/DV030182", method = RequestMethod.POST)
	@ResponseBody
	public Object DV030182 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV030101IVO vo) {
		
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
		
		DV030101OVO prjtPrgmInfo = dv0301Service.DV030102(vo);
		model.addAttribute("prjtPrgmInfo", prjtPrgmInfo);
		
		return model;
	}
	
	@RequestMapping(value="/DV030183", method = RequestMethod.POST)
	@ResponseBody
	public Object DV030183 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV030101IVO vo) {
		
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
		
		DV030101OVO prjtPrgmInfo = dv0301Service.DV030102(vo);
		model.addAttribute("prjtPrgmInfo", prjtPrgmInfo);
		
		return model;
	}
}