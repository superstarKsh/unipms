package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.DV0601Dao;
import com.uni.unipms.model.In.DV060101IVO;
import com.uni.unipms.model.Out.DV060101OVO;
import com.uni.unipms.model.Out.DV060102OVO;

@Repository
public class DV0601DaoImpl extends BaseDaoSupport implements DV0601Dao {

	public DV060102OVO DV060102(DV060101IVO vo) {
		DV060102OVO result = getSqlSession().selectOne("DV0601Mapper.DV060102", vo);
		return result;
	}
	
	public List<DV060101OVO> DV060111(DV060101IVO vo) {
		List<DV060101OVO> result = getSqlSession().selectList("DV0601Mapper.DV060111", vo);
		return result;
	}
	
	public List<DV060102OVO> DV060112(DV060101IVO vo) {
		List<DV060102OVO> result = getSqlSession().selectList("DV0601Mapper.DV060112", vo);
		return result;
	}
	
	public DV060102OVO DV060113(DV060101IVO vo) {
		DV060102OVO result = getSqlSession().selectOne("DV0601Mapper.DV060113", vo);
		return result;
	}
	
	public int DV060121(DV060101IVO vo) {
		int result = getSqlSession().insert("DV0601Mapper.DV060121", vo);
		return result;
	}
	
	public int DV060141(DV060101IVO vo) {
		int result = getSqlSession().delete("DV0601Mapper.DV060141", vo);
		return result;
	}
	
	public int DV060131(DV060101IVO vo) {
		int result = getSqlSession().update("DV0601Mapper.DV060131", vo);
		return result;
	}
}
