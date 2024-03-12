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
import com.uni.unipms.common.Util.ExcelCreate;
import com.uni.unipms.model.In.CM004101IVO;
import com.uni.unipms.model.In.DV030102IVO;
import com.uni.unipms.model.In.DV031101IVO;
import com.uni.unipms.model.In.DV031102IVO;
import com.uni.unipms.model.In.DV040101IVO;
import com.uni.unipms.model.Out.DV031101OVO;
import com.uni.unipms.model.Out.DV040101OVO;
import com.uni.unipms.service.DV0301Service;
import com.uni.unipms.service.DV0311Service;
import com.uni.unipms.service.DV0401Service;

@Controller
@RequestMapping("/")
public class DV0311Controller {
	
	final static Logger logger = LoggerFactory.getLogger(DV0311Controller.class);
	
	@Autowired
	private DV0401Service dv0401Service;
	
	@Autowired
	private DV0301Service dv0301Service;
	
	@Autowired
	private DV0311Service dv0311Service;

	@RequestMapping(value="/DV031111", method = RequestMethod.POST)
	@ResponseBody
	public Object DV031111 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV031101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		DV040101IVO dv040101ivo = new DV040101IVO();
		dv040101ivo.setsPRJT_ID(vo.getsPRJT_ID());

		List<DV040101OVO> prjtPrgmInfo = dv0401Service.DV040111(dv040101ivo);
		model.addAttribute("prjtPrgmInfo", prjtPrgmInfo);
		
		return model;
	}
	
	@RequestMapping(value="/DV031122", method = RequestMethod.POST)
	@ResponseBody
	public Object DV031122 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV031102IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		DV030102IVO dv030102ivo = new DV030102IVO();
		dv030102ivo = (DV030102IVO) vo;

		int result = dv0301Service.DV030122(dv030102ivo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/DV031154", method = RequestMethod.POST)
	@ResponseBody
	public Object DV031154 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV031101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<DV031101OVO> prjtPrgmInfo = dv0311Service.DV031154(vo);

		String fileName = ""; 
		if (prjtPrgmInfo.size() == 0) {
			prjtPrgmInfo = dv0311Service.DV031154(vo);
		}
		
		fileName = ExcelCreate.excelCreateRndm(request, prjtPrgmInfo);
		model.addAttribute("fileName", fileName);
		
		return model;
	}
	
	@RequestMapping(value="/DV031153", method = RequestMethod.POST)
	@ResponseBody
	public Object DV031153 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody DV031101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		logger.debug("**  input : " + vo.toString());
		
		String rootPath = "";
		String saveFile = "";
		String fileName = vo.getsFILE_NM();
		List<DV031101OVO> prjtPrgmInfo = null;
		
		try {
			rootPath = GetSharedCache.getCacheServiceInfo(ConstantMessage.FILE_BASE_PATH);
			saveFile = rootPath + File.separator + "upload/file" + File.separator + fileName;
			
			CM004101IVO cm004101ivo = new CM004101IVO();
			cm004101ivo.setsSaveFileNm(saveFile);
			
			cm004101ivo.setsFileType(fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length()).toLowerCase());
	
			// 하나만 처리됨
			prjtPrgmInfo = dv0311Service.DV031152(cm004101ivo);
		} catch (Exception e) {
			//e.printStackTrace();
		}
	    
		model.addAttribute("prjtPrgmInfo", prjtPrgmInfo);

		return model;
	}

}