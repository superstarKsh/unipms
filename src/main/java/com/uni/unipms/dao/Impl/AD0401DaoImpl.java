package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.AD0401Dao;
import com.uni.unipms.model.In.AD040101IVO;
import com.uni.unipms.model.In.AD040102IVO;
import com.uni.unipms.model.Out.AD040101OVO;

@Repository
public class AD0401DaoImpl extends BaseDaoSupport implements AD0401Dao {

	public AD040101OVO AD040102(AD040101IVO vo) {
		AD040101OVO result = getSqlSession().selectOne("AD0401Mapper.AD040102", vo);
		return result;
	}
	
	public List<AD040101OVO> AD040111(AD040101IVO vo) {
		List<AD040101OVO> result = getSqlSession().selectList("AD0401Mapper.AD040111", vo);
		return result;
	}
	
	public AD040101OVO AD040113(AD040101IVO vo) {
		AD040101OVO result = getSqlSession().selectOne("AD0401Mapper.AD040113", vo);
		return result;
	}

	public int AD040121(AD040101IVO vo) {
		int result = getSqlSession().insert("AD0401Mapper.AD040121", vo);
		return result;
	}
	
	public int AD040141(AD040101IVO vo) {
		int result = getSqlSession().delete("AD0401Mapper.AD040141", vo);
		return result;
	}
	
	public int AD040142(AD040102IVO vo) {
		int result = getSqlSession().delete("AD0401Mapper.AD040142", vo);
		return result;
	}
}
