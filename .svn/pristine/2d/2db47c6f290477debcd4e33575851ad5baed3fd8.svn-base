package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.MG1301Dao;
import com.uni.unipms.model.In.MG130101IVO;
import com.uni.unipms.model.Out.MG130101OVO;

@Repository
public class MG1301DaoImpl extends BaseDaoSupport implements MG1301Dao {

	public MG130101OVO MG130102(MG130101IVO vo) {
		MG130101OVO result = getSqlSession().selectOne("MG1301Mapper.MG130102", vo);
		return result;
	}
	
	public List<MG130101OVO> MG130111(MG130101IVO vo) {
		List<MG130101OVO> result = getSqlSession().selectList("MG1301Mapper.MG130111", vo);
		return result;
	}

	public List<MG130101OVO> MG130112(MG130101IVO vo) {
		List<MG130101OVO> result = getSqlSession().selectList("MG1301Mapper.MG130112", vo);
		return result;
	}

	public int MG130121(MG130101IVO vo) {
		int result = getSqlSession().insert("MG1301Mapper.MG130121", vo);
		return result;
	}

	public int MG130141(MG130101IVO vo) {
		int result = getSqlSession().delete("MG1301Mapper.MG130141", vo);
		return result;
	}

	public int MG130131(MG130101IVO vo) {
		int result = getSqlSession().update("MG1301Mapper.MG130131", vo);
		return result;
	}

	public int MG130133(MG130101IVO vo) {
		int result = getSqlSession().update("MG1301Mapper.MG130133", vo);
		return result;
	}

}
