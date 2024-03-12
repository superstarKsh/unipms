package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.DV0201Dao;
import com.uni.unipms.model.In.DV020101IVO;
import com.uni.unipms.model.In.DV020102IVO;
import com.uni.unipms.model.In.DV020103IVO;
import com.uni.unipms.model.In.DV020104IVO;
import com.uni.unipms.model.In.DV020105IVO;
import com.uni.unipms.model.In.DV020106IVO;
import com.uni.unipms.model.Out.DV020101OVO;

@Repository
public class DV0201DaoImpl extends BaseDaoSupport implements DV0201Dao {

	public DV020101OVO DV020102(DV020101IVO vo) {
		DV020101OVO result = getSqlSession().selectOne("DV0201Mapper.DV020102", vo);
		return result;
	}
	
	public List<DV020101OVO> DV020111(DV020101IVO vo) {
		List<DV020101OVO> result = getSqlSession().selectList("DV0201Mapper.DV020111", vo);
		return result;
	}
	
	public int DV020121(DV020101IVO vo) {	
		int result = getSqlSession().insert("DV0201Mapper.DV020121", vo);
		return result;
	}

	public int DV020141(DV020101IVO vo) {
		int result = getSqlSession().delete("DV0201Mapper.DV020141", vo);
		return result;
	}
	
	public int DV020142(DV020102IVO vo) {
		int result = getSqlSession().delete("DV0201Mapper.DV020142", vo);
		return result;
	}

	public DV020101OVO DV020102A(DV020103IVO vo) {
		DV020101OVO result = getSqlSession().selectOne("DV0201Mapper.DV020102A", vo);
		return result;
	}
	
	public List<DV020101OVO> DV020111A(DV020103IVO vo) {
		List<DV020101OVO> result = getSqlSession().selectList("DV0201Mapper.DV020111A", vo);
		return result;
	}
	
	public int DV020121A(DV020103IVO vo) {	
		int result = getSqlSession().insert("DV0201Mapper.DV020121A", vo);
		return result;
	}

	public int DV020141A(DV020103IVO vo) {
		int result = getSqlSession().delete("DV0201Mapper.DV020141A", vo);
		return result;
	}
	
	public int DV020142A(DV020104IVO vo) {
		int result = getSqlSession().delete("DV0201Mapper.DV020142A", vo);
		return result;
	}
	
	public DV020101OVO DV020102B(DV020105IVO vo) {
		DV020101OVO result = getSqlSession().selectOne("DV0201Mapper.DV020102B", vo);
		return result;
	}
	
	public List<DV020101OVO> DV020111B(DV020105IVO vo) {
		List<DV020101OVO> result = getSqlSession().selectList("DV0201Mapper.DV020111B", vo);
		return result;
	}
	
	public int DV020121B(DV020105IVO vo) {	
		int result = getSqlSession().insert("DV0201Mapper.DV020121B", vo);
		return result;
	}

	public int DV020141B(DV020105IVO vo) {
		int result = getSqlSession().delete("DV0201Mapper.DV020141B", vo);
		return result;
	}
	
	public int DV020142B(DV020106IVO vo) {
		int result = getSqlSession().delete("DV0201Mapper.DV020142B", vo);
		return result;
	}
}
