package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.TS0102Dao;
import com.uni.unipms.model.In.TS010201IVO;
import com.uni.unipms.model.In.TS010202IVO;
import com.uni.unipms.model.Out.TS010201OVO;

@Repository
public class TS0102DaoImpl extends BaseDaoSupport implements TS0102Dao {

	public TS010201OVO TS010202(TS010201IVO vo) {
		TS010201OVO result = getSqlSession().selectOne("TS0102Mapper.TS010202", vo);
		return result;
	}
	
	public List<TS010201OVO> TS010212(TS010201IVO vo) {
		List<TS010201OVO> result = getSqlSession().selectList("TS0102Mapper.TS010212", vo);
		return result;
	}
	
	public TS010201OVO TS010215(TS010201IVO vo) {
		TS010201OVO result = getSqlSession().selectOne("TS0102Mapper.TS010215", vo);
		return result;
	}
	
	public int TS010221(TS010201IVO vo) {
		int result = getSqlSession().insert("TS0102Mapper.TS010221", vo);
		return result;
	}
	
	public int TS010231(TS010201IVO vo) {
		int result = getSqlSession().update("TS0102Mapper.TS010231", vo);
		return result;
	}
	
	public int TS010232(TS010202IVO vo) {
		int result = getSqlSession().update("TS0102Mapper.TS010232", vo);
		return result;
	}
	
	public int TS010241(TS010201IVO vo) {
		int result = getSqlSession().delete("TS0102Mapper.TS010241", vo);
		return result;
	}
	
	public int TS010242(TS010202IVO vo) {
		int result = getSqlSession().delete("TS0102Mapper.TS010242", vo);
		return result;
	}

}
