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

import com.uni.unipms.model.In.DV010101IVO;
import com.uni.unipms.model.Out.DV010101OVO;
import com.uni.unipms.model.Out.DV010102OVO;
import com.uni.unipms.service.DV0101Service;

@Controller
@RequestMapping("/")
public class DV0101Controller {
	
	final static Logger logger = LoggerFactory.getLogger(DV0101Controller.class);
	
	@Autowired
	private DV0101Service dv0101Service;
	
	@RequestMapping(value="/DV010111", method = RequestMethod.POST)
	@ResponseBody
	public Object DV010111 (HttpServletRequest request, HttpServletResponse response, ModelMap model,  @RequestBody DV010101IVO vo) {
		
		logger.debug("**************************************************");
		logger.debug("**  input : " + vo.toString());
		logger.debug("**************************************************");
		
		List<DV010101OVO> prjtInfo = dv0101Service.DV010111(vo);
		model.addAttribute("prjtInfo", prjtInfo);
		
		List<DV010102OVO> prjtDaySchl = dv0101Service.DV010111A(vo);
		model.addAttribute("prjtDaySchl", prjtDaySchl);
		
		List<DV010102OVO> prjtWeekSchl = dv0101Service.DV010111B(vo);
		model.addAttribute("prjtWeekSchl", prjtWeekSchl);
		
		DV010101OVO prjtSubSegCnt = dv0101Service.DV010115(vo);
		model.addAttribute("prjtSubSegCnt", prjtSubSegCnt);
		
		return model;
	}
}