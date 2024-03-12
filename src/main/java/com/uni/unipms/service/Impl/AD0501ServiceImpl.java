package com.uni.unipms.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.AD0501Dao;
import com.uni.unipms.model.In.AD050101IVO;
import com.uni.unipms.model.In.AD050102IVO;
import com.uni.unipms.model.Out.AD050101OVO;
import com.uni.unipms.service.AD0501Service;

@Service
public class AD0501ServiceImpl implements AD0501Service {

	@Autowired
	private AD0501Dao ad0501Dao;

	public List<AD050101OVO> AD050111(AD050101IVO vo) {
		List<AD050101OVO> result = ad0501Dao.AD050111(vo);
		return result;
	}

	public List<AD050101OVO> AD050112(AD050101IVO vo) {
		List<AD050101OVO> result = ad0501Dao.AD050112(vo);
		return result;
	}
	
	@Transactional
	public int AD050121(AD050101IVO vo) {

		int result = ad0501Dao.AD050141(vo);
		
		if ("".equals(vo.getsUSE_ORDER()))
			vo.setsUSE_ORDER("0");

		result = ad0501Dao.AD050121(vo);

		return result;
	}
	
	@Transactional
	public int AD050141(AD050101IVO vo) {
		int result = ad0501Dao.AD050141(vo);
		return result;
	}
	
	@Transactional
	public int AD050122(AD050102IVO vo) {

		int result = ad0501Dao.AD050142(vo);
		
		for (AD050102IVO.AD050102IVO_SUB ad050102ivo_sub : vo.getsCODE_DETAIL() ) {

			AD050101IVO ad050101ivo = new AD050101IVO();
			
			ad050101ivo.setsDOMAIN_ID(vo.getsDOMAIN_ID());
			ad050101ivo.setsPRJT_ID(vo.getsPRJT_ID());
			ad050101ivo.setsCODE_TYPE(vo.getsCODE_TYPE());
			ad050101ivo.setsCODE(ad050102ivo_sub.getsCODE());
			ad050101ivo.setsCODE_NAME(ad050102ivo_sub.getsCODE_NAME());
			ad050101ivo.setsCODE_DESC(ad050102ivo_sub.getsCODE_DESC());
			ad050101ivo.setsUSE_YN(ad050102ivo_sub.getsUSE_YN());
			if ("".equals(ad050102ivo_sub.getsUSE_ORDER()))
				ad050101ivo.setsUSE_ORDER("0");
			else	
				ad050101ivo.setsUSE_ORDER(ad050102ivo_sub.getsUSE_ORDER());
			ad050101ivo.setsRPLC_CODE(ad050102ivo_sub.getsRPLC_CODE());
						
			result = ad0501Dao.AD050121(ad050101ivo);
		}

		return result;
	}
			
}
