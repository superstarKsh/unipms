package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.MG1401Dao;
import com.uni.unipms.model.In.MG140101IVO;
import com.uni.unipms.model.Out.MG140101OVO;

@Repository
public class MG1401DaoImpl extends BaseDaoSupport implements MG1401Dao {

	public List<MG140101OVO> MG140111(MG140101IVO vo) {
		List<MG140101OVO> result = getSqlSession().selectList("MG1401Mapper.MG140111", vo);
		return result;
	}
}
