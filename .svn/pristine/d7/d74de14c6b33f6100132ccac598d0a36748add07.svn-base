package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.AD0301Dao;
import com.uni.unipms.model.In.AD030101IVO;
import com.uni.unipms.model.Out.AD030101OVO;

@Repository
public class AD0301DaoImpl extends BaseDaoSupport implements AD0301Dao {

	public AD030101OVO AD030102(AD030101IVO vo) {
		AD030101OVO result = getSqlSession().selectOne("AD0301Mapper.AD030102", vo);
		return result;
	}
	
	public List<AD030101OVO> AD030111(AD030101IVO vo) {
		List<AD030101OVO> result = getSqlSession().selectList("AD0301Mapper.AD030111", vo);
		return result;
	}

	public AD030101OVO AD030113(AD030101IVO vo) {
		AD030101OVO result = getSqlSession().selectOne("AD0301Mapper.AD030113", vo);
		return result;
	}
	
	public int AD030121(AD030101IVO vo) {
		int result = getSqlSession().insert("AD0301Mapper.AD030121", vo);
		return result;
	}
	
	public int AD030141(AD030101IVO vo) {
		int result = getSqlSession().delete("AD0301Mapper.AD030141", vo);
		return result;
	}
}
