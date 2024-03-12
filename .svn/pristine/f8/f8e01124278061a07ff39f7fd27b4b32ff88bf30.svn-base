package com.uni.unipms.service.Impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.common.Util.DateUtil;
import com.uni.unipms.dao.CM0101Dao;
import com.uni.unipms.model.In.CM010101IVO;
import com.uni.unipms.model.In.MG010101IVO;
import com.uni.unipms.model.In.PJ010101IVO;
import com.uni.unipms.model.Out.CM010101OVO;
import com.uni.unipms.service.CM0101Service;
import com.uni.unipms.service.MG0101Service;
import com.uni.unipms.service.PJ0101Service;

@Service
public class CM0101ServiceImpl implements CM0101Service {
	
	final static Logger logger = LoggerFactory.getLogger(CM0101ServiceImpl.class);

	@Autowired
	private CM0101Dao cm0101Dao;
	
	@Autowired
	private MG0101Service mg0101Service;
	
	@Autowired
	private PJ0101Service pj0101Service;
	
	@Transactional
	public int CM010101(CM010101IVO vo) {
		
		int result = 0;
		
		try {
			CM010101OVO cm010101ovo = cm0101Dao.CM010115(vo);
	
			if ("0".equals(cm010101ovo.getsBATCH_ID())){
				
				List<CM010101OVO> prjtList = cm0101Dao.CM010111(vo);
				
				for (CM010101OVO prjtInfo : prjtList) {
					
					CM010101IVO cm010101ivo = new CM010101IVO();
					cm010101ivo.setsPRJT_ID(prjtInfo.getsPRJT_ID());
					cm010101ivo.setsCURR_DT(vo.getsCURR_DT());
					cm010101ivo.setsBATCH_ID(vo.getsBATCH_ID());
					cm010101ivo.setsSTRT_TIME(DateUtil.getTimeMilliSec());
					
					result = cm0101Dao.CM010121(cm010101ivo);
					
					MG010101IVO mg010101ivo = new MG010101IVO();
					mg010101ivo.setsPRJT_ID(prjtInfo.getsPRJT_ID());
	
					result = mg0101Service.MG010132(mg010101ivo);
					
					cm010101ivo.setsEND_TIME(DateUtil.getTimeMilliSec());
					cm010101ivo.setsCMPL_YN("Y");
					result = cm0101Dao.CM010131(cm010101ivo);
				}
			}
		} catch (Exception e) {
		}

		return result;
	}
	
	@Transactional
	public int CM010102(CM010101IVO vo) {
		
		int result = 0;
		try {
			CM010101OVO cm010101ovo = cm0101Dao.CM010115(vo);
	
			if ("0".equals(cm010101ovo.getsBATCH_ID())){
				
				List<CM010101OVO> prjtList = cm0101Dao.CM010111(vo);
				
				for (CM010101OVO prjtInfo : prjtList) {
					
					CM010101IVO cm010101ivo = new CM010101IVO();
					cm010101ivo.setsPRJT_ID(prjtInfo.getsPRJT_ID());
					cm010101ivo.setsCURR_DT(vo.getsCURR_DT());
					cm010101ivo.setsBATCH_ID(vo.getsBATCH_ID());
					cm010101ivo.setsSTRT_TIME(DateUtil.getTimeMilliSec());
					
					result = cm0101Dao.CM010121(cm010101ivo);
					
					PJ010101IVO pj010101ivo = new PJ010101IVO();
					pj010101ivo.setsPRJT_ID(prjtInfo.getsPRJT_ID());
	
					result = pj0101Service.PJ010132(pj010101ivo);
					
					cm010101ivo.setsEND_TIME(DateUtil.getTimeMilliSec());
					cm010101ivo.setsCMPL_YN("Y");
					result = cm0101Dao.CM010131(cm010101ivo);
				}
			}
		} catch (Exception e) {
			
		}
		return result;
	}
	
	public CM010101OVO CM010115(CM010101IVO vo) {
		CM010101OVO result = cm0101Dao.CM010115(vo);
		return result;
	}
	
	@Transactional
	public int CM010121(CM010101IVO vo) {
		int result = cm0101Dao.CM010141(vo);
		result =  cm0101Dao.CM010121(vo);
		return result;
	}
	
	@Transactional
	public int CM010131(CM010101IVO vo) {
		int result = cm0101Dao.CM010131(vo);
		return result;
	}
	
	@Transactional
	public int CM010141(CM010101IVO vo) {
		int result = cm0101Dao.CM010141(vo);
		return result;
	}
	
}
