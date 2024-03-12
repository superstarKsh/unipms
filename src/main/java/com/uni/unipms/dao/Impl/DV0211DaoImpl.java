package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.DV0211Dao;
import com.uni.unipms.model.In.DV021101IVO;
import com.uni.unipms.model.Out.DV021101OVO;

@Repository
public class DV0211DaoImpl extends BaseDaoSupport implements DV0211Dao {

	public List<DV021101OVO> DV021111(DV021101IVO vo) {
		List<DV021101OVO> result = getSqlSession().selectList("DV0211Mapper.DV021111", vo);
		return result;
	}
	
	public int DV021142(DV021101IVO vo) {
		int result = getSqlSession().delete("DV0211Mapper.DV021142", vo);
		return result;
	}
	
	public int DV021142A(DV021101IVO vo) {
		int result = getSqlSession().delete("DV0211Mapper.DV021142A", vo);
		return result;
	}
	
	public int DV021142B(DV021101IVO vo) {
		int result = getSqlSession().delete("DV0211Mapper.DV021142B", vo);
		return result;
	}
	
	public int DV021131(DV021101IVO vo) {
		int result = getSqlSession().update("DV0211Mapper.DV021131", vo);
		return result;
	}
	
	public int DV021131A(DV021101IVO vo) {
		int result = getSqlSession().update("DV0211Mapper.DV021131A", vo);
		return result;
	}
	
	public int DV021131B(DV021101IVO vo) {
		int result = getSqlSession().update("DV0211Mapper.DV021131B", vo);
		return result;
	}
}
