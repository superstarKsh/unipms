package com.uni.unipms.service.Impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.TS0101Dao;
import com.uni.unipms.model.In.TS010101IVO;
import com.uni.unipms.model.In.TS010102IVO;
import com.uni.unipms.model.Out.TS010101OVO;
import com.uni.unipms.service.TS0101Service;

@Service
public class TS0101ServiceImpl implements TS0101Service {
	
	final static Logger logger = LoggerFactory.getLogger(TS0101ServiceImpl.class);

	@Autowired
	private TS0101Dao ts0101Dao;
	
	public TS010101OVO TS010102(TS010101IVO vo) {
		TS010101OVO result = ts0101Dao.TS010102(vo);
		return result;
	}
	
	public List<TS010101OVO> TS010111(TS010101IVO vo) {
		List<TS010101OVO> result = ts0101Dao.TS010111(vo);		
		return result;
	}
	
	@Transactional
	public int TS010121(TS010101IVO vo) {
		if (vo.getsTEST_SCN_ID() == null || "".equals(vo.getsTEST_SCN_ID())) {
			TS010101OVO ts010101ovo = ts0101Dao.TS010102(vo);
			vo.setsTEST_SCN_ID(ts010101ovo.getsTEST_SCN_ID());
		}
		
		int result = ts0101Dao.TS010141(vo);
		result = ts0101Dao.TS010121(vo);
		
		return result;
	}
	
	@Transactional
	public int TS010122(TS010102IVO vo) {

		int result = ts0101Dao.TS010142(vo);
		
		for (TS010102IVO.TS010102IVO_SUB ts010102ivo_sub : vo.getsTEST_SCNR_INFO() ) {
			
			TS010101IVO ts010101ivo = new TS010101IVO();
			
			ts010101ivo.setsPRJT_ID(vo.getsPRJT_ID());
			ts010101ivo.setsTASK_ID(vo.getsTASK_ID());
			ts010101ivo.setsSEG_ID(vo.getsSEG_ID());
			ts010101ivo.setsSEG_SUB_ID(vo.getsSEG_SUB_ID());
			ts010101ivo.setsTEST_SCN_ID(ts010102ivo_sub.getsTEST_SCN_ID());
			ts010101ivo.setsTEST_SCN_NM(ts010102ivo_sub.getsTEST_SCN_NM());
			ts010101ivo.setsREG_USER_ID(ts010102ivo_sub.getsREG_USER_ID());
			ts010101ivo.setsTEST_STRT_DT(ts010102ivo_sub.getsTEST_STRT_DT());
			ts010101ivo.setsTEST_END_DT(ts010102ivo_sub.getsTEST_END_DT());
			ts010101ivo.setsCNFM_TYPE(ts010102ivo_sub.getsCNFM_TYPE());
			ts010101ivo.setsCNFM_USER_ID(ts010102ivo_sub.getsCNFM_USER_ID());
			ts010101ivo.setsCNFM_DESC(ts010102ivo_sub.getsCNFM_DESC());
			ts010101ivo.setsFILE_NM(ts010102ivo_sub.getsFILE_NM());
	
			result = ts0101Dao.TS010121(ts010101ivo);
	
		}
		
		return result;
	}
	
	@Transactional
	public int TS010141(TS010101IVO vo) {
		int result = ts0101Dao.TS010141(vo);
		return result;
	}
}
