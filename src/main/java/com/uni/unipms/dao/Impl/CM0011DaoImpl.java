package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.CM0011Dao;
import com.uni.unipms.model.In.CM001101IVO;
import com.uni.unipms.model.Out.CM001101OVO;

@Repository
public class CM0011DaoImpl extends BaseDaoSupport implements CM0011Dao {

	public List<CM001101OVO> CM001101(CM001101IVO vo) {
		List<CM001101OVO> result = getSqlSession().selectList("CM0011Mapper.CM001101", vo);
		return result;
	}

	public List<CM001101OVO> CM001102(CM001101IVO vo) {
		List<CM001101OVO> result = getSqlSession().selectList("CM0011Mapper.CM001102", vo);
		return result;
	}
	
}
