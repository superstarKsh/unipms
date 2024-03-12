package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.CF0201Dao;
import com.uni.unipms.model.In.CF020101IVO;
import com.uni.unipms.model.Out.CF020101OVO;

@Repository
public class CF0201DaoImpl extends BaseDaoSupport implements CF0201Dao {
	public List<CF020101OVO> CF020111(CF020101IVO vo) {
		List<CF020101OVO> result = getSqlSession().selectList("CF0201Mapper.CF020111", vo);
		return result;
	}
	
	public int CF020121(CF020101IVO vo) {
		int result = getSqlSession().insert("CF0201Mapper.CF020121", vo);
		return result;
	}
	
	public int CF020141(CF020101IVO vo) {
		int result = getSqlSession().insert("CF0201Mapper.CF020141", vo);
		return result;
	}
	
	public CF020101OVO CF020113(CF020101IVO vo) {
		CF020101OVO result = getSqlSession().selectOne("CF0201Mapper.CF020113", vo);
		return result;
	}
	
	public CF020101OVO CF020102(CF020101IVO vo) {
		CF020101OVO result = getSqlSession().selectOne("CF0201Mapper.CF020102", vo);
		return result;
	}

}
