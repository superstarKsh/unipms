package com.uni.unipms.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.PJ0201Dao;
import com.uni.unipms.model.In.PJ020101IVO;
import com.uni.unipms.model.In.PJ020102IVO;
import com.uni.unipms.model.In.PJ020103IVO;
import com.uni.unipms.model.Out.PJ020101OVO;
import com.uni.unipms.service.PJ0201Service;

@Service
public class PJ0201ServiceImpl implements PJ0201Service {

	@Autowired
	private PJ0201Dao pj0201Dao;
	
	public List<PJ020101OVO> PJ020111(PJ020101IVO vo) {
		List<PJ020101OVO> result = pj0201Dao.PJ020111(vo);
		return result;
	}

	@Transactional
	public int PJ020122(PJ020102IVO vo) {
		
		int result = pj0201Dao.PJ020142(vo);

		for (PJ020102IVO.PJ020102IVO_SUB pj020102ivo_sub : vo.getsPART_USER()){
			
			PJ020101IVO pj020101ivo = new PJ020101IVO();
			
			pj020101ivo.setsPRJT_ID(vo.getsPRJT_ID());
			pj020101ivo.setsPRJT_SUB_PART_ID(pj020102ivo_sub.getsPRJT_SUB_PART_ID());
			pj020101ivo.setsUSER_ID(pj020102ivo_sub.getsUSER_ID());
			pj020101ivo.setsPRJT_ROLE(pj020102ivo_sub.getsPRJT_ROLE());
			pj020101ivo.setsSTRT_DT(pj020102ivo_sub.getsSTRT_DT());
			pj020101ivo.setsEND_DT(pj020102ivo_sub.getsEND_DT());

			result = pj0201Dao.PJ020121(pj020101ivo);
			
			PJ020103IVO pj020103ivo = new PJ020103IVO();
			pj020103ivo.setsCURR_PRJT_ID(vo.getsPRJT_ID());
			
			pj020103ivo.setsUSER_ID(pj020102ivo_sub.getsUSER_ID());
			result = pj0201Dao.PJ020131(pj020103ivo);
		}

		return result;
	}

}
