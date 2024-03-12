package com.uni.unipms.service.Impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.DV0401Dao;
import com.uni.unipms.model.In.DV040101IVO;
import com.uni.unipms.model.In.DV040102IVO;
import com.uni.unipms.model.Out.DV040101OVO;
import com.uni.unipms.model.Out.DV040102OVO;
import com.uni.unipms.model.Out.DV040103OVO;
import com.uni.unipms.service.DV0401Service;

@Service
public class DV0401ServiceImpl implements DV0401Service {
	
	final static Logger logger = LoggerFactory.getLogger(DV0401ServiceImpl.class);

	@Autowired
	private DV0401Dao dv0401Dao;
	
	public List<DV040101OVO> DV040111(DV040101IVO vo) {
		List<DV040101OVO> result = dv0401Dao.DV040111(vo);
		return result;
	}
	
	public List<DV040102OVO> DV040115(DV040101IVO vo) {
		List<DV040102OVO> result = dv0401Dao.DV040115(vo);
		return result;
	}
	
	@Transactional
	public int DV040131(DV040102IVO vo) {
		
		int result = 0;
		
		for (DV040102IVO.DV040102IVO_SUB dv040102ivo_sub : vo.getsPRG_INFO() ) {
			
			DV040101IVO dv040101ivo = new DV040101IVO();
			
			dv040101ivo.setsPRJT_ID(vo.getsPRJT_ID());
			dv040101ivo.setsPRJT_STAGE(vo.getsPRJT_STAGE());
			dv040101ivo.setsTASK_ID(dv040102ivo_sub.getsTASK_ID());
			dv040101ivo.setsSEG_ID(dv040102ivo_sub.getsSEG_ID());
			dv040101ivo.setsSEG_SUB_ID(dv040102ivo_sub.getsSEG_SUB_ID());
			dv040101ivo.setsPRG_ID(dv040102ivo_sub.getsPRG_ID());
			dv040101ivo.setsPRJ_DEV_STRT_DT(dv040102ivo_sub.getsPRJ_DEV_STRT_DT());
			dv040101ivo.setsPRJ_DEV_END_DT(dv040102ivo_sub.getsPRJ_DEV_END_DT());
			dv040101ivo.setsTEST_DEV_STRT_DT(dv040102ivo_sub.getsTEST_DEV_STRT_DT());
			dv040101ivo.setsTEST_DEV_END_DT(dv040102ivo_sub.getsTEST_DEV_END_DT());
			dv040101ivo.setsPM_CNFM(dv040102ivo_sub.getsPM_CNFM());
			dv040101ivo.setsCUS_CNFM(dv040102ivo_sub.getsCUS_CNFM());
			dv040101ivo.setsPROGRESS_RT(dv040102ivo_sub.getsPROGRESS_RT());
			
			result = dv0401Dao.DV040131(dv040101ivo);

		}

		return result;
		
	}
	
	public List<DV040103OVO> DV040154(DV040101IVO vo) {
		List<DV040103OVO> result = dv0401Dao.DV040154(vo);
		return result;
	}
	
}
