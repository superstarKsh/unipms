package com.uni.unipms.dao.Impl;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.WSAD0101Dao;
import com.uni.unipms.model.In.AD010101IVO;
import com.uni.unipms.model.Out.AD010101OVO;

@Repository
public class WSAD0101DaoImpl extends BaseDaoSupport implements WSAD0101Dao {

	public AD010101OVO AD010102(AD010101IVO vo) {
		AD010101OVO result = getSqlSession().selectOne("WSAD0101Mapper.AD010102", vo);
		return result;
	}
	
	public AD010101OVO AD010113(AD010101IVO vo) {
		AD010101OVO result = getSqlSession().selectOne("WSAD0101Mapper.AD010113", vo);
		return result;
	}
	
	public int AD010121(AD010101IVO vo) {
		int result = getSqlSession().insert("WSAD0101Mapper.AD010121", vo);
		return result;
	}
	
	public int AD010141(AD010101IVO vo) {
		int result = getSqlSession().delete("WSAD0101Mapper.AD010141", vo);
		return result;
	}
}
