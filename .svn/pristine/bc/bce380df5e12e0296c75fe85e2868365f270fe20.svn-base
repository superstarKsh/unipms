package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.CF0101Dao;
import com.uni.unipms.model.In.CF010101IVO;
import com.uni.unipms.model.Out.CF010101OVO;

@Repository
public class CF0101DaoImpl extends BaseDaoSupport implements CF0101Dao {

	public List<CF010101OVO> CF010111(CF010101IVO vo) {
		return getSqlSession().selectList("CF0101Mapper.CF010111", vo);
	}
	
	public CF010101OVO CF010113(CF010101IVO vo) {
		CF010101OVO result = getSqlSession().selectOne("CF0101Mapper.CF010113", vo);
		return result;
	}

	public int CF010121(CF010101IVO vo) {
		int result = getSqlSession().insert("CF0101Mapper.CF010121", vo);
		return result;
	}
	
	public int CF010141(CF010101IVO vo) {
		int result = getSqlSession().delete("CF0101Mapper.CF010141", vo);
		return result;
	}
	public CF010101OVO CF010181A(CF010101IVO vo) {
		CF010101OVO result = getSqlSession().selectOne("CF0101Mapper.CF010181A", vo);
		return result;
	}
	
	public List<CF010101OVO> CF010181B(CF010101IVO vo) {
		List<CF010101OVO> result = getSqlSession().selectList("CF0101Mapper.CF010181B", vo);
		return result;
	}
	
	public List<CF010101OVO> CF010181C(CF010101IVO vo) {
		List<CF010101OVO> result = getSqlSession().selectList("CF0101Mapper.CF010181C", vo);
		return result;
	}
	
	public List<CF010101OVO> CF010182(CF010101IVO vo) {
		List<CF010101OVO> result = getSqlSession().selectList("CF0101Mapper.CF010182", vo);
		return result;
	}
}
