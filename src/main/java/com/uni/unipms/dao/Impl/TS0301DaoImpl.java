package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.TS0301Dao;
import com.uni.unipms.model.In.TS030101IVO;
import com.uni.unipms.model.Out.TS030101OVO;

@Repository
public class TS0301DaoImpl extends BaseDaoSupport implements TS0301Dao {
	public List<TS030101OVO> TS030111(TS030101IVO vo) {
		List<TS030101OVO> result = getSqlSession().selectList("TS0301Mapper.TS030111", vo);
		return result;
	}
	
	public TS030101OVO TS030113(TS030101IVO vo) {
		TS030101OVO result = getSqlSession().selectOne("TS0301Mapper.TS030113", vo);
		return result;
	}	

	public int TS030121(TS030101IVO vo) {
		int result = getSqlSession().insert("TS0301Mapper.TS030121", vo);
		return result;
	}	

	public int TS030131(TS030101IVO vo) {
		int result = getSqlSession().update("TS0301Mapper.TS030131", vo);
		return result;
	}	

	public int TS030141(TS030101IVO vo) {
		int result = getSqlSession().delete("TS0301Mapper.TS030141", vo);
		return result;
	}	
	
	
}
