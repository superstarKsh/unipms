package com.uni.unipms.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.PJ0101Dao;
import com.uni.unipms.model.In.PJ010101IVO;
import com.uni.unipms.model.In.PJ010111IVO;
import com.uni.unipms.model.In.PJ010112IVO;
import com.uni.unipms.model.In.PJ010121IVO;
import com.uni.unipms.model.In.PJ010122IVO;
import com.uni.unipms.model.Out.PJ010111OVO;
import com.uni.unipms.model.Out.PJ010121OVO;
import com.uni.unipms.service.PJ0101Service;

@Service
public class PJ0101ServiceImpl implements PJ0101Service {

	@Autowired
	private PJ0101Dao pj0101Dao;
	
	public List<PJ010111OVO> PJ010111A(PJ010111IVO vo) {
		List<PJ010111OVO> result = pj0101Dao.PJ010111A(vo);
		return result;
	}

	@Transactional
	public int PJ010122A(PJ010112IVO vo) {
		
		int result = pj0101Dao.PJ010142A(vo);
		
		for (PJ010112IVO.PJ010102IVO_SUB pj010102ivo_sub : vo.getsPRJT_MMONTH()){
			
			PJ010111IVO pj010101ivo = new PJ010111IVO();
			
			pj010101ivo.setsPRJT_ID(vo.getsPRJT_ID());
			pj010101ivo.setsYYYYMM(pj010102ivo_sub.getsYYYYMM());
			pj010101ivo.setsMAN_MONTH(pj010102ivo_sub.getsMAN_MONTH());

			result = pj0101Dao.PJ010121A(pj010101ivo);
		}

		return result;
	}
	
	public List<PJ010121OVO> PJ010111B(PJ010121IVO vo) {
		List<PJ010121OVO> result = pj0101Dao.PJ010111B(vo);
		return result;
	}

	@Transactional
	public int PJ010122B(PJ010122IVO vo) {
		
		int result = pj0101Dao.PJ010142B(vo);
		
		for (PJ010122IVO.PJ010112IVO_SUB pj010112ivo_sub : vo.getsPRJT_STAGE_INFO()){
			
			PJ010121IVO pj010111ivo = new PJ010121IVO();
			
			pj010111ivo.setsPRJT_ID(vo.getsPRJT_ID());
			pj010111ivo.setsPRJT_STAGE(pj010112ivo_sub.getsPRJT_STAGE());
			pj010111ivo.setsSTRT_DT(pj010112ivo_sub.getsSTRT_DT());
			pj010111ivo.setsEND_DT(pj010112ivo_sub.getsEND_DT());
			pj010111ivo.setsETC_DISC(pj010112ivo_sub.getsETC_DISC());

			result = pj0101Dao.PJ010121B(pj010111ivo);
		}

		return result;
	}
	
	@Transactional
	public int PJ010132(PJ010101IVO vo) {
		int result = pj0101Dao.PJ010132(vo);
		return result;
	}

}
