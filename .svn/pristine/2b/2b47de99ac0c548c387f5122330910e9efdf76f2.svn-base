package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.WSPU0101Dao;
import com.uni.unipms.model.In.WSPU010101IVO;
import com.uni.unipms.model.Out.WSPU010101OVO;

@Repository
public class WSPU0101DaoImpl extends BaseDaoSupport implements WSPU0101Dao {

	public List<WSPU010101OVO> PU010101(WSPU010101IVO vo) {
		List<WSPU010101OVO> result = getSqlSession().selectList("WSPU0101Mapper.PU010101", vo);
		return result;
	}
}
