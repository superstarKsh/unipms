package com.uni.unipms.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.AD0401Dao;
import com.uni.unipms.model.In.AD040101IVO;
import com.uni.unipms.model.In.AD040102IVO;
import com.uni.unipms.model.Out.AD040101OVO;
import com.uni.unipms.service.AD0401Service;

@Service
public class AD0401ServiceImpl implements AD0401Service {

	@Autowired
	private AD0401Dao ad0401Dao;
	
	public AD040101OVO AD040102(AD040101IVO vo) {
		AD040101OVO result = ad0401Dao.AD040102(vo);
		return result;
	}
	
	public List<AD040101OVO> AD040111(AD040101IVO vo) {
		List<AD040101OVO> result = ad0401Dao.AD040111(vo);
		return result;
	}
	
	@Transactional
	public int AD040121(AD040101IVO vo) {
		int result = ad0401Dao.AD040141(vo);
		result = ad0401Dao.AD040121(vo);
		return result;
	}
	
	@Transactional
	public int AD040122(AD040102IVO vo) {
		
		int result = ad0401Dao.AD040142(vo);
		
		for (AD040102IVO.AD040102IVO_SUB ad040102ivo_sub : vo.getsPRJT_OUTPUT() ) {

			AD040101IVO ad040101ivo = new AD040101IVO();
			
			ad040101ivo.setsDOMAIN_ID(vo.getsDOMAIN_ID());
			ad040101ivo.setsPRJT_ID(vo.getsPRJT_ID());
			ad040101ivo.setsPRJT_STAGE(ad040102ivo_sub.getsPRJT_STAGE());
			ad040101ivo.setsOUPUT_POOL_ID(ad040102ivo_sub.getsOUPUT_POOL_ID());
			ad040101ivo.setsOUTPUT_NM(ad040102ivo_sub.getsOUTPUT_NM());
			ad040101ivo.setsFILE_NM(ad040102ivo_sub.getsFILE_NM());
			ad040101ivo.setsOUTPUT_DESC(ad040102ivo_sub.getsOUTPUT_DESC());
			
			result = ad0401Dao.AD040121(ad040101ivo);
		}

		return result;
	}

	@Transactional
	public int AD040141(AD040101IVO vo) {

		int result = ad0401Dao.AD040141(vo);

		return result;
	}
	
}
