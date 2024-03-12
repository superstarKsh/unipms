package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.NT0301Dao;
import com.uni.unipms.model.In.NT030101IVO;
import com.uni.unipms.model.Out.NT030101OVO;

@Repository
public class NT0301DaoImpl extends BaseDaoSupport implements NT0301Dao {
	public NT030101OVO NT030102(NT030101IVO vo) {
		NT030101OVO result = getSqlSession().selectOne("NT0301Mapper.NT030102", vo);
		return result;
	}

	public List<NT030101OVO> NT030111(NT030101IVO vo) {
		List<NT030101OVO> result = getSqlSession().selectList("NT0301Mapper.NT030111", vo);
		return result;
	}
	
	public NT030101OVO NT030113(NT030101IVO vo){
		NT030101OVO result = getSqlSession().selectOne("NT0301Mapper.NT030113", vo);
		return result;
	}

	public int NT030121(NT030101IVO vo) {
		int result = getSqlSession().insert("NT0301Mapper.NT030121", vo);
		return result;
	}
	
	public int NT030141(NT030101IVO vo){
		int result = getSqlSession().delete("NT0301Mapper.NT030141", vo);
		return result;
	}
	
}
