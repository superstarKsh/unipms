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
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.uni.unipms.common.Util.FileUtil;
import com.uni.unipms.model.In.MG110101IVO;
import com.uni.unipms.model.In.MG110102IVO;
import com.uni.unipms.model.In.MG110103IVO;
import com.uni.unipms.model.Out.MG110101OVO;
import com.uni.unipms.model.Out.MG110102OVO;
import com.uni.unipms.service.MG1101Service;

@Controller
@RequestMapping("/")
public class MG1101Controller {
	
	final static Logger logger = LoggerFactory.getLogger(MG1101Controller.class);
	
	@Autowired
	private MG1101Service mg0101Service;

	@RequestMapping(value="/MG110111", method = RequestMethod.POST)
	@ResponseBody
	public Object MG110111 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody MG110101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		List<MG110101OVO> stageInfo = mg0101Service.MG110111(vo);		
		model.addAttribute("stageInfo", stageInfo);
		
		return model;
	}
	
	@RequestMapping(value="/MG110112", method = RequestMethod.POST)
	@ResponseBody
	public Object MG110112 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody MG110102IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		List<MG110102OVO> activityInfo = mg0101Service.MG110112(vo);
		model.addAttribute("activityInfo", activityInfo);

		MG110102OVO ActivityIdInfo = mg0101Service.MG110102(vo);
		model.addAttribute("ActivityIdInfo", ActivityIdInfo);
		
		return model;
	}
	
	@RequestMapping(value="/MG110121", method = RequestMethod.POST)
	@ResponseBody
	public Object MG110121 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody MG110102IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = mg0101Service.MG110121(vo);
		model.addAttribute("result", result);

		return model;
	}
	
	@RequestMapping(value="/MG110141", method = RequestMethod.POST)
	@ResponseBody
	public Object MG110141 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody MG110102IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = mg0101Service.MG110141(vo);
		model.addAttribute("result", result);

		return model;
	}
	
	@RequestMapping(value="/MG110122", method = RequestMethod.POST)
	@ResponseBody
	public Object MG110122 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody MG110103IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = mg0101Service.MG110122(vo);
		model.addAttribute("result", result);

		return model;
	}

	@RequestMapping(value="/MG110151", method = RequestMethod.POST)
	@ResponseBody
	public Object MG110151 (HttpServletRequest request, HttpServletResponse response, ModelMap model){
		
		logger.debug("**************************************************");
		logger.debug("**  input : " );
		logger.debug("**************************************************");
		boolean result = false;
		
		String rootPath = request.getSession().getServletContext().getRealPath("/").replace("WW", "/");
		String savePath = rootPath + "pms_templet/output/mngtemplet" + File.separator;

		logger.debug("rootPath :: " +rootPath);
		logger.debug("savePath :: " +savePath);

		MultipartHttpServletRequest mptRequest = (MultipartHttpServletRequest) request;
		result = FileUtil.FileSaveTemplet(mptRequest, savePath);
		
		model.addAttribute("result", result);

		return model;
	}
}