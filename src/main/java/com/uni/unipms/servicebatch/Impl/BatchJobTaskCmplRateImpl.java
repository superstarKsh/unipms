package com.uni.unipms.servicebatch.Impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.uni.unipms.common.Message.ConstantMessage;
import com.uni.unipms.common.Util.DateUtil;
import com.uni.unipms.controller.CM0001Controller;
import com.uni.unipms.model.In.CM010101IVO;
import com.uni.unipms.service.CM0101Service;
import com.uni.unipms.servicebatch.BatchJobTaskCmplRate;

public class BatchJobTaskCmplRateImpl implements BatchJobTaskCmplRate {
	
	final static Logger logger = LoggerFactory.getLogger(CM0001Controller.class);
	
	@Autowired
	private CM0101Service cm0101Service;

	@Override
	public void perform() {
		
		logger.debug("**************************************************");
		logger.debug("**  Batch Start.....");
		logger.debug("**************************************************");
		
		CM010101IVO cm010101ivo = new CM010101IVO();
		cm010101ivo.setsCURR_DT(DateUtil.getToday());
		cm010101ivo.setsBATCH_ID(ConstantMessage.PRJT_RPRT_BATCH);
		
		int batResult = cm0101Service.CM010101(cm010101ivo);
		
		logger.debug("**************************************************");
		logger.debug("**  Batch End.....");
		logger.debug("**************************************************");

	}
}
