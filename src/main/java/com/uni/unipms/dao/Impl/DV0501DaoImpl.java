package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.DV0501Dao;
import com.uni.unipms.model.In.DV050101IVO;
import com.uni.unipms.model.In.DV050102IVO;
import com.uni.unipms.model.Out.DV050101OVO;

@Repository
public class DV0501DaoImpl extends BaseDaoSupport implements DV0501Dao {

	public DV050101OVO DV050102(DV050101IVO vo) {
		DV050101OVO result = getSqlSession().selectOne("DV0501Mapper.DV050102", vo);
		return result;
	}
	
	public List<DV050101OVO> DV050111(DV050101IVO vo) {
		List<DV050101OVO> result = getSqlSession().selectList("DV0501Mapper.DV050111", vo);
		return result;
	}
	
	public List<DV050101OVO> DV050114(DV050101IVO vo) {
		List<DV050101OVO> result = getSqlSession().selectList("DV0501Mapper.DV050114", vo);
		return result;
	}
	
	public int DV050121(DV050101IVO vo) {
		int result = getSqlSession().insert("DV0501Mapper.DV050121", vo);
		return result;
	}
	
	public int DV050141(DV050101IVO vo) {
		int result = getSqlSession().delete("DV0501Mapper.DV050141", vo);
		return result;
	}
	
	public int DV050142(DV050102IVO vo) {
		int result = getSqlSession().delete("DV0501Mapper.DV050142", vo);
		return result;
	}
}
