package com.uni.unipms.servicebatch.Impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.uni.unipms.common.Cache.GetSharedCache;
import com.uni.unipms.common.Message.ConstantMessage;
import com.uni.unipms.common.Util.DateUtil;
import com.uni.unipms.controller.CM0001Controller;
import com.uni.unipms.model.In.CM010101IVO;
import com.uni.unipms.service.CM0101Service;
import com.uni.unipms.servicebatch.BatchJobUpdateStage;

public class BatchJobUpdateStageImpl implements BatchJobUpdateStage {
	
	final static Logger logger = LoggerFactory.getLogger(CM0001Controller.class);
	
	@Autowired
	private CM0101Service cm0101Service;

	@Override
	public void perform() {
		
		logger.debug("**************************************************");
		logger.debug("**  Batch Start.....");
		logger.debug("**************************************************");
		
		if ("WISE".equals(GetSharedCache.getCacheServiceInfo(ConstantMessage.SERVICE_DOMAIN_NAME))) {
			CM010101IVO prjtStage = new CM010101IVO();
			prjtStage.setsCURR_DT(DateUtil.getToday());
			prjtStage.setsBATCH_ID(ConstantMessage.PRJT_STAGE_BATCH);
				
			int batResult = cm0101Service.CM010102(prjtStage);
		}
		logger.debug("**************************************************");
		logger.debug("**  Batch End.....");
		logger.debug("**************************************************");

	}
}
