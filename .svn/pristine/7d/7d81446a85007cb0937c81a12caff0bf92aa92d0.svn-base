package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.TS0104Dao;
import com.uni.unipms.model.In.TS010401IVO;
import com.uni.unipms.model.Out.TS010401OVO;

@Repository
public class TS0104DaoImpl extends BaseDaoSupport implements TS0104Dao {

	public List<TS010401OVO> TS010415(TS010401IVO vo) {
		List<TS010401OVO> result = getSqlSession().selectList("TS0104Mapper.TS010415", vo);
		return result;
	}

}
