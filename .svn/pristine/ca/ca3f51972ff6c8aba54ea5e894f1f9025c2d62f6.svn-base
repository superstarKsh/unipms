package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.PJ0201Dao;
import com.uni.unipms.model.In.PJ020101IVO;
import com.uni.unipms.model.In.PJ020102IVO;
import com.uni.unipms.model.In.PJ020103IVO;
import com.uni.unipms.model.Out.PJ020101OVO;

@Repository
public class PJ0201DaoImpl extends BaseDaoSupport implements PJ0201Dao {

	public List<PJ020101OVO> PJ020111(PJ020101IVO vo) {
		List<PJ020101OVO> result = getSqlSession().selectList("PJ0201Mapper.PJ020111", vo);
		return result;
	}
	
	public int PJ020121(PJ020101IVO vo) {
		int result = getSqlSession().insert("PJ0201Mapper.PJ020121", vo);
		return result;
	}
	
	public int PJ020142(PJ020102IVO vo) {
		int result = getSqlSession().delete("PJ0201Mapper.PJ020142", vo);
		return result;
	}

	public int PJ020131(PJ020103IVO vo) {
		int result = getSqlSession().update("PJ0201Mapper.PJ020131", vo);
		return result;
	}
}
