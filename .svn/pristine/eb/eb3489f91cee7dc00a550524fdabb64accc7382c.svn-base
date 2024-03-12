package com.uni.unipms.dao.Impl;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.TS0103Dao;
import com.uni.unipms.model.In.TS010301IVO;
import com.uni.unipms.model.Out.TS010301OVO;

@Repository
public class TS0103DaoImpl extends BaseDaoSupport implements TS0103Dao {

	public TS010301OVO TS010313(TS010301IVO vo) {
		TS010301OVO result = getSqlSession().selectOne("TS0103Mapper.TS010313", vo);
		return result;
	}
	
	public int TS010331(TS010301IVO vo) {
		int result = getSqlSession().update("TS0103Mapper.TS010331", vo);
		return result;
	}
}
