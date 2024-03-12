package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.MG0201Dao;
import com.uni.unipms.model.In.MG020101IVO;
import com.uni.unipms.model.Out.MG020101OVO;
import com.uni.unipms.model.Out.MG020102OVO;

@Repository
public class MG0201DaoImpl extends BaseDaoSupport implements MG0201Dao {

	public List<MG020101OVO> MG020111(MG020101IVO vo) {
		List<MG020101OVO> result = getSqlSession().selectList("MG0201Mapper.MG020111", vo);
		return result;
	}
	
	public List<MG020102OVO> MG020111A(MG020101IVO vo) {
		List<MG020102OVO> result = getSqlSession().selectList("MG0201Mapper.MG020111A", vo);
		return result;
	}
	
	public List<MG020102OVO> MG020111B(MG020101IVO vo) {
		List<MG020102OVO> result = getSqlSession().selectList("MG0201Mapper.MG020111B", vo);
		return result;
	}
	
	public List<MG020102OVO> MG020111C(MG020101IVO vo) {
		List<MG020102OVO> result = getSqlSession().selectList("MG0201Mapper.MG020111C", vo);
		return result;
	}
	
	public int MG020131(MG020101IVO vo) {
		int result = getSqlSession().update("MG0201Mapper.MG020131", vo);
		return result;
	}

}
