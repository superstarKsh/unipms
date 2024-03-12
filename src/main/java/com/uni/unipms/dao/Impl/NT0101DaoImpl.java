package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.NT0101Dao;
import com.uni.unipms.model.In.NT010101IVO;
import com.uni.unipms.model.Out.NT010101OVO;

@Repository
public class NT0101DaoImpl extends BaseDaoSupport implements NT0101Dao {
	public NT010101OVO NT010102(NT010101IVO vo) {
		NT010101OVO result = getSqlSession().selectOne("NT0101Mapper.NT010102", vo);
		return result;
	}

	public NT010101OVO NT010113(NT010101IVO vo) {
		NT010101OVO result = getSqlSession().selectOne("NT0101Mapper.NT010113", vo);
		return result;
	}

	public List<NT010101OVO> NT010111(NT010101IVO vo) {
		List<NT010101OVO> result = getSqlSession().selectList("NT0101Mapper.NT010111", vo);
		return result;
	}
	
	public int NT010121(NT010101IVO vo) {
		int result = getSqlSession().insert("NT0101Mapper.NT010121", vo);
		return result;
	}
	
	public int NT010141(NT010101IVO vo) {
		int result = getSqlSession().delete("NT0101Mapper.NT010141", vo);
		return result;
	}
}
