package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.TS0101Dao;
import com.uni.unipms.model.In.TS010101IVO;
import com.uni.unipms.model.In.TS010102IVO;
import com.uni.unipms.model.Out.TS010101OVO;

@Repository
public class TS0101DaoImpl extends BaseDaoSupport implements TS0101Dao {
	
	public TS010101OVO TS010102(TS010101IVO vo) {
		TS010101OVO result = getSqlSession().selectOne("TS0101Mapper.TS010102", vo);
		return result;
	}
	
	public List<TS010101OVO> TS010111(TS010101IVO vo) {
		List<TS010101OVO> result = getSqlSession().selectList("TS0101Mapper.TS010111", vo);
		return result;
	}
	
	public int TS010121(TS010101IVO vo) {
		int result = getSqlSession().insert("TS0101Mapper.TS010121", vo);
		return result;
	}
	
	public int TS010141(TS010101IVO vo) {
		int result = getSqlSession().delete("TS0101Mapper.TS010141", vo);
		return result;
	}
	
	public int TS010142(TS010102IVO vo) {
		int result = getSqlSession().delete("TS0101Mapper.TS010142", vo);
		return result;
	}
}
