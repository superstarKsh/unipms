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
import com.uni.unipms.model.In.AD020101IVO;
import com.uni.unipms.model.In.AD020111IVO;
import com.uni.unipms.model.In.AD020112IVO;
import com.uni.unipms.model.In.AD020121IVO;
import com.uni.unipms.model.In.AD020122IVO;
import com.uni.unipms.model.In.AD020131IVO;
import com.uni.unipms.model.In.AD020132IVO;
import com.uni.unipms.model.In.AD020141IVO;
import com.uni.unipms.model.In.AD020142IVO;
import com.uni.unipms.model.In.AD020151IVO;
import com.uni.unipms.model.In.AD020152IVO;
import com.uni.unipms.model.In.CM001101IVO;
import com.uni.unipms.model.Out.AD020101OVO;
import com.uni.unipms.model.Out.AD020111OVO;
import com.uni.unipms.model.Out.AD020121OVO;
import com.uni.unipms.model.Out.AD020131OVO;
import com.uni.unipms.model.Out.AD020141OVO;
import com.uni.unipms.model.Out.AD020151OVO;
import com.uni.unipms.model.Out.CM001101OVO;
import com.uni.unipms.service.AD0201Service;
import com.uni.unipms.service.CM0011Service;

@Controller
@RequestMapping("/")
public class AD0201Controller {
	
	final static Logger logger = LoggerFactory.getLogger(AD0201Controller.class);

	@Autowired
	private AD0201Service ad0201Service;
	
	@Autowired
	private CM0011Service cm0011Service;
	
	@RequestMapping(value="/AD020111", method = RequestMethod.POST)
	@ResponseBody
	public Object AD020111 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD020101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		List<AD020101OVO> userInfo = ad0201Service.AD020111(vo);
		model.addAttribute("userInfo", userInfo);
		
		return model;
	}
	
	@RequestMapping(value="/AD020101", method = RequestMethod.POST)
	@ResponseBody
	public Object AD020101 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD020101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		CM001101IVO cm001101ivo = new CM001101IVO();
		cm001101ivo.setsCODE_TYPE("LUNA");
		List<CM001101OVO> lunaInfo = cm0011Service.CM001101(cm001101ivo);
		model.addAttribute("lunaInfo", lunaInfo);
		
		cm001101ivo.setsCODE_TYPE("BZQT");
		List<CM001101OVO> bizQuarterInfo = cm0011Service.CM001101(cm001101ivo);
		model.addAttribute("bizQuarterInfo", bizQuarterInfo);
		
		cm001101ivo.setsCODE_TYPE("PSTN");
		List<CM001101OVO> pstnInfo = cm0011Service.CM001101(cm001101ivo);
		model.addAttribute("pstnInfo", pstnInfo);
		
		cm001101ivo.setsCODE_TYPE("EMPC");
		List<CM001101OVO> empInfo = cm0011Service.CM001101(cm001101ivo);
		model.addAttribute("empInfo", empInfo);
		
		cm001101ivo.setsCODE_TYPE("PMAT");
		List<CM001101OVO> pmsAuthInfo = cm0011Service.CM001101(cm001101ivo);
		model.addAttribute("pmsAuthInfo", pmsAuthInfo);

		return model;
	}
	
	@RequestMapping(value="/AD020113", method = RequestMethod.POST)
	@ResponseBody
	public Object AD020113 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD020101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		AD020101OVO memInfo = ad0201Service.AD020113(vo);
		model.addAttribute("memInfo", memInfo);
		
		return model;
	}
	
	@RequestMapping(value="/AD020115", method = RequestMethod.POST)
	@ResponseBody
	public Object AD020115 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD020101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		AD020101OVO dupInfo = ad0201Service.AD020115(vo);
		model.addAttribute("dupInfo", dupInfo);

		return model;
	}
	
	@RequestMapping(value="/AD020121", method = RequestMethod.POST)
	@ResponseBody
	public Object AD020121 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD020101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		int result = ad0201Service.AD020121(vo);
		model.addAttribute("result", result);
		
		return model;
	}
		
	@RequestMapping(value="/AD020141", method = RequestMethod.POST)
	@ResponseBody
	public Object AD020141 (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD020101IVO vo) {
			
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		int result = ad0201Service.AD020141(vo);
		model.addAttribute("result", result);
			
        return model;
			
	}
	
	@RequestMapping(value="/AD020151", method = RequestMethod.POST)
	@ResponseBody
	public Object AD020151 (HttpServletRequest request, HttpServletResponse response, ModelMap model){
		
		logger.debug("**************************************************");
		logger.debug("**  input : " );
		logger.debug("**************************************************");

		boolean result = false;
		
		String rootPath = request.getSession().getServletContext().getRealPath("/").replace("WW", "/");
		String savePath = rootPath + "upload/image" + File.separator;

		MultipartHttpServletRequest mptRequest = (MultipartHttpServletRequest) request;
		String fileName = mptRequest.getParameter("sDEF_FILE_NM");
		
		result = FileUtil.FileSaveTemplet(mptRequest, savePath, fileName);
		model.addAttribute("result", result);

		return model;
	}

	@RequestMapping(value="/AD020111A", method = RequestMethod.POST)
	@ResponseBody
	public Object AD020111A (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD020111IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		List<AD020111OVO> academicInfo = ad0201Service.AD020111A(vo);		
		model.addAttribute("academicInfo", academicInfo);
		
		return model;
	}
	
	@RequestMapping(value="/AD020122A", method = RequestMethod.POST)
	@ResponseBody
	public Object AD020122A (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD020112IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = ad0201Service.AD020122A(vo);		
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/AD020111B", method = RequestMethod.POST)
	@ResponseBody
	public Object AD020111B (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD020121IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		List<AD020121OVO> certifctInfo = ad0201Service.AD020111B(vo);
		model.addAttribute("certifctInfo", certifctInfo);
		
		return model;
	}
	
	@RequestMapping(value="/AD020122B", method = RequestMethod.POST)
	@ResponseBody
	public Object AD020122B (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD020122IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = ad0201Service.AD020122B(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/AD020111C", method = RequestMethod.POST)
	@ResponseBody
	public Object AD020111C (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD020131IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		List<AD020131OVO> edutInfo = ad0201Service.AD020111C(vo);
		model.addAttribute("edutInfo", edutInfo);
		
		return model;
	}
	
	@RequestMapping(value="/AD020122C", method = RequestMethod.POST)
	@ResponseBody
	public Object AD020122C (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD020132IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = ad0201Service.AD020122C(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/AD020111D", method = RequestMethod.POST)
	@ResponseBody
	public Object AD020111D (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD020141IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		List<AD020141OVO> carrInfo = ad0201Service.AD020111D(vo);
		model.addAttribute("carrInfo", carrInfo);
		
		return model;
	}
	
	@RequestMapping(value="/AD020122D", method = RequestMethod.POST)
	@ResponseBody
	public Object AD020122D (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD020142IVO vo) {
	
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = ad0201Service.AD020122D(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/AD020102E", method = RequestMethod.POST)
	@ResponseBody
	public Object AD020102E (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD020152IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		AD020151OVO prjtCarrSeq = ad0201Service.AD020102E(vo);
		model.addAttribute("prjtCarrSeq", prjtCarrSeq);
		
		return model;
	}
	
	@RequestMapping(value="/AD020111E", method = RequestMethod.POST)
	@ResponseBody
	public Object AD020111E (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD020151IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");

		List<AD020151OVO> prjtCarrInfo = ad0201Service.AD020111E(vo);
		model.addAttribute("prjtCarrInfo", prjtCarrInfo);
		
		return model;
	}
	
	@RequestMapping(value="/AD020121E", method = RequestMethod.POST)
	@ResponseBody
	public Object AD020121E (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD020151IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = ad0201Service.AD020121E(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/AD020122E", method = RequestMethod.POST)
	@ResponseBody
	public Object AD020122E (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD020152IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = ad0201Service.AD020122E(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
	@RequestMapping(value="/AD020141E", method = RequestMethod.POST)
	@ResponseBody
	public Object AD020141E (HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestBody AD020151IVO vo) {

		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		int result = ad0201Service.AD020141E(vo);
		model.addAttribute("result", result);
		
		return model;
	}
	
}