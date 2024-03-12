package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.DV0311Dao;
import com.uni.unipms.model.In.DV031101IVO;
import com.uni.unipms.model.Out.DV031101OVO;

@Repository
public class DV0311DaoImpl extends BaseDaoSupport implements DV0311Dao {

	public List<DV031101OVO> DV031154(DV031101IVO vo) {
		List<DV031101OVO> result = getSqlSession().selectList("DV0311Mapper.DV031154", vo);
		return result;
	}
	
}
