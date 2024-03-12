package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.DV0301Dao;
import com.uni.unipms.model.In.DV030101IVO;
import com.uni.unipms.model.Out.DV030101OVO;

@Repository
public class DV0301DaoImpl extends BaseDaoSupport implements DV0301Dao {

	public DV030101OVO DV030102(DV030101IVO vo) {
		DV030101OVO result = getSqlSession().selectOne("DV0301Mapper.DV030102", vo);
		return result;
	}
	
	public List<DV030101OVO> DV030111(DV030101IVO vo) {
		List<DV030101OVO> result = getSqlSession().selectList("DV0301Mapper.DV030111", vo);
		return result;
	}
	
	public int DV030121(DV030101IVO vo) {
		int result = getSqlSession().insert("DV0301Mapper.DV030121", vo);
		return result;
	}
	
	public int DV030132(DV030101IVO vo) {
		int result = getSqlSession().update("DV0301Mapper.DV030132", vo);
		return result;
	}

	public int DV030141(DV030101IVO vo) {	
		int result = getSqlSession().delete("DV0301Mapper.DV030141", vo);
		return result;
	}

	public int DV030142(DV030101IVO vo) {
		int result = getSqlSession().delete("DV0301Mapper.DV030142", vo);
		return result;
	}
}
