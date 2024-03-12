package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.MG0101Dao;
import com.uni.unipms.model.In.MG010101IVO;
import com.uni.unipms.model.In.MG010102IVO;
import com.uni.unipms.model.Out.MG010101OVO;

@Repository
public class MG0101DaoImpl extends BaseDaoSupport implements MG0101Dao {

	public MG010101OVO MG010102(MG010101IVO vo) {
		MG010101OVO result = getSqlSession().selectOne("MG0101Mapper.MG010102", vo);
		return result;
	}
	
	public List<MG010101OVO> MG010111(MG010101IVO vo) {
		List<MG010101OVO> result = getSqlSession().selectList("MG0101Mapper.MG010111", vo);
		return result;
	}
	
	public int MG010121(MG010101IVO vo) {	
		int result = getSqlSession().insert("MG0101Mapper.MG010121", vo);
		return result;
	}

	public int MG010141(MG010101IVO vo) {
		int result = getSqlSession().delete("MG0101Mapper.MG010141", vo);
		return result;
	}
	
	public int MG010142(MG010102IVO vo) {
		int result = getSqlSession().delete("MG0101Mapper.MG010142", vo);
		return result;
	}
	
	public int MG010132(MG010102IVO vo) {	
		int result = getSqlSession().update("MG0101Mapper.MG010132", vo);
		return result;
	}
	
	public List<MG010101OVO> MG010115(MG010101IVO vo) {
		List<MG010101OVO> result = getSqlSession().selectList("MG0101Mapper.MG010115", vo);
		return result;
	}

	public List<MG010101OVO> MG010115A(MG010101IVO vo) {
		List<MG010101OVO> result = getSqlSession().selectList("MG0101Mapper.MG010115A", vo);
		return result;
	}

	public int MG010131(MG010101IVO vo) {
		int result = getSqlSession().update("MG0101Mapper.MG010131", vo);
		return result;
	}
	
	public int MG010132A(MG010101IVO vo) {
		int result = getSqlSession().update("MG0101Mapper.MG010132A", vo);
		return result;
	}

}
