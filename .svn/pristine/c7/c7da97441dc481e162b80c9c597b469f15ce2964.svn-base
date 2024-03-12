package com.uni.unipms.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.DV0501Dao;
import com.uni.unipms.model.In.DV050101IVO;
import com.uni.unipms.model.In.DV050102IVO;
import com.uni.unipms.model.Out.DV050101OVO;
import com.uni.unipms.service.DV0501Service;

@Service
public class DV0501ServiceImpl implements DV0501Service {

	@Autowired
	private DV0501Dao dv0501Dao;
	
	public DV050101OVO DV050102(DV050101IVO vo) {
		DV050101OVO result = dv0501Dao.DV050102(vo);
		return result;
	}

	public List<DV050101OVO> DV050111(DV050101IVO vo) {
		List<DV050101OVO> result = dv0501Dao.DV050111(vo);
		return result;
	}
	
	public List<DV050101OVO> DV050114(DV050101IVO vo) {
		List<DV050101OVO> result = dv0501Dao.DV050114(vo);
		return result;
	}
	
	@Transactional
	public int DV050121(DV050101IVO vo) {
		int result = dv0501Dao.DV050141(vo);
		result = dv0501Dao.DV050121(vo);
		return result;
	}
	
	@Transactional
	public int DV050122(DV050102IVO vo) {
		int result = dv0501Dao.DV050142(vo);
		
		for (DV050102IVO.DV050102IVO_SUB dv050102ivo_sub : vo.getsPRJT_OUTPUT() ) {

			DV050101IVO dv050101ivo = new DV050101IVO();
			
			dv050101ivo.setsPRJT_ID(vo.getsPRJT_ID());
			dv050101ivo.setsTASK_ID(dv050102ivo_sub.getsTASK_ID());
			dv050101ivo.setsPRJT_STAGE(dv050102ivo_sub.getsPRJT_STAGE());
			dv050101ivo.setsOUTPUT_ID(dv050102ivo_sub.getsOUTPUT_ID());
			dv050101ivo.setsOUTPUT_NM(dv050102ivo_sub.getsOUTPUT_NM());
			dv050101ivo.setsOUTPUT_DESC(dv050102ivo_sub.getsOUTPUT_DESC());
			dv050101ivo.setsMAKE_USER_ID(dv050102ivo_sub.getsMAKE_USER_ID());
			dv050101ivo.setsMAKE_DT(dv050102ivo_sub.getsMAKE_DT());
			dv050101ivo.setsMAKE_YN(dv050102ivo_sub.getsMAKE_YN());
			dv050101ivo.setsDEF_FILE_NM(dv050102ivo_sub.getsDEF_FILE_NM());
			dv050101ivo.setsCMPL_FILE_NM(dv050102ivo_sub.getsCMPL_FILE_NM());
			
			result = dv0501Dao.DV050121(dv050101ivo);
		}

		return result;
	}
	
	@Transactional
	public int DV050141(DV050101IVO vo) {
		int result = dv0501Dao.DV050141(vo);
		return result;
	}
	

}
