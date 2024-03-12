package com.uni.unipms.dao.Impl;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.CM0001Dao;
import com.uni.unipms.model.In.CM000101IVO;
import com.uni.unipms.model.Out.CM000101OVO;

@Repository
public class CM0001DaoImpl extends BaseDaoSupport implements CM0001Dao {

	public CM000101OVO CM000101(CM000101IVO vo) {
		CM000101OVO result = getSqlSession().selectOne("CM0001Mapper.CM000101",  vo);
		return result;
	}
	
}
