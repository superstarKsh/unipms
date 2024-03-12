package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.MN0201Dao;
import com.uni.unipms.model.In.MN020101IVO;
import com.uni.unipms.model.Out.MN020101OVO;
import com.uni.unipms.model.Out.MN020102OVO;
import com.uni.unipms.model.Out.MN020103OVO;
import com.uni.unipms.model.Out.MN020104OVO;
import com.uni.unipms.model.Out.MN020105OVO;

@Repository
public class MN0201DaoImpl extends BaseDaoSupport implements MN0201Dao {

	public List<MN020101OVO> MN020111A(MN020101IVO vo) {
		List<MN020101OVO> result = getSqlSession().selectList("MN0201Mapper.MN020111A", vo);
		return result;
	}
	
	public List<MN020102OVO> MN020111B(MN020101IVO vo) {
		List<MN020102OVO> result = getSqlSession().selectList("MN0201Mapper.MN020111B", vo);
		return result;
	}
	
	public List<MN020103OVO> MN020111C(MN020101IVO vo) {
		List<MN020103OVO> result = getSqlSession().selectList("MN0201Mapper.MN020111C", vo);
		return result;
	}
	
	public List<MN020103OVO> MN020111D(MN020101IVO vo) {
		List<MN020103OVO> result = getSqlSession().selectList("MN0201Mapper.MN020111D", vo);
		return result;
	}
	
	public List<MN020104OVO> MN020111E(MN020101IVO vo) {
		List<MN020104OVO> result = getSqlSession().selectList("MN0201Mapper.MN020111E", vo);
		return result;
	}

	public List<MN020105OVO> MN020111F(MN020101IVO vo) {
		List<MN020105OVO> result = getSqlSession().selectList("MN0201Mapper.MN020111F", vo);
		return result;
	}
}
