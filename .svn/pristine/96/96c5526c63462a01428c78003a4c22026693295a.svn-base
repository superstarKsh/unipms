package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.CF0301Dao;
import com.uni.unipms.model.In.CF030101IVO;
import com.uni.unipms.model.Out.CF030101OVO;

@Repository
public class CF0301DaoImpl extends BaseDaoSupport implements CF0301Dao {
	public CF030101OVO CF030102(CF030101IVO vo) {
		CF030101OVO result = getSqlSession().selectOne("CF0301Mapper.CF030102", vo);
		return result;
	}
	
	public int CF030121(CF030101IVO vo) {
		int result = getSqlSession().insert("CF0301Mapper.CF030121", vo);
		return result;
	}
	
	public int CF030141(CF030101IVO vo) {
		int result = getSqlSession().delete("CF0301Mapper.CF030141", vo);
		return result;
	}
	
	public CF030101OVO CF030113(CF030101IVO vo) {
		CF030101OVO result = getSqlSession().selectOne("CF0301Mapper.CF030113", vo);
		return result;
	}
	
	public List<CF030101OVO> CF030111(CF030101IVO vo) {
		List<CF030101OVO> result = getSqlSession().selectList("CF0301Mapper.CF030111", vo);
		return result;
	}

}
