package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.TS0201Dao;
import com.uni.unipms.model.In.TS020101IVO;
import com.uni.unipms.model.Out.TS020101OVO;

@Repository
public class TS0201DaoImpl extends BaseDaoSupport implements TS0201Dao {

	public TS020101OVO TS020102(TS020101IVO vo) {
		TS020101OVO result = getSqlSession().selectOne("TS0201Mapper.TS020102", vo);
		return result;
	}
	
	public List<TS020101OVO> TS020111(TS020101IVO vo) {
		List<TS020101OVO> result = getSqlSession().selectList("TS0201Mapper.TS020111", vo);
		return result;
	}
	
	public TS020101OVO TS020113(TS020101IVO vo) {
		TS020101OVO result = getSqlSession().selectOne("TS0201Mapper.TS020113", vo);
		return result;
	}

	public int TS020121(TS020101IVO vo) {
		int result = getSqlSession().insert("TS0201Mapper.TS020121", vo);
		return result;
	}
	
	public int TS020141(TS020101IVO vo) {
		int result = getSqlSession().delete("TS0201Mapper.TS020141", vo);
		return result;
	}
	
}
