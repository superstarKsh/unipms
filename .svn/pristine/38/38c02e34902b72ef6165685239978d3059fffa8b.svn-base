package com.uni.unipms.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.WSAD0101Dao;
import com.uni.unipms.model.In.AD010101IVO;
import com.uni.unipms.model.Out.AD010101OVO;
import com.uni.unipms.service.WSAD0101Service;

@Service
public class WSAD0101ServiceImpl implements WSAD0101Service {

	@Autowired
	private WSAD0101Dao AD0101Dao;
	
	public AD010101OVO AD010102(AD010101IVO vo) {
		AD010101OVO result = AD0101Dao.AD010102(vo);
		return result;
	}
	
	public AD010101OVO AD010113(AD010101IVO vo) {
		AD010101OVO result = AD0101Dao.AD010113(vo);
		return result;
	}
	
	@Transactional
	public int AD010121(AD010101IVO vo) {
		int result = AD0101Dao.AD010121(vo);
		return result;
	}
	
	@Transactional
	public int AD010141(AD010101IVO vo) {
		int result = AD0101Dao.AD010141(vo);
		return result;
	}
}
