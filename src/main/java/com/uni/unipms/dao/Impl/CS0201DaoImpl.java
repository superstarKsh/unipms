package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.CS0201Dao;
import com.uni.unipms.model.In.CS020101IVO;
import com.uni.unipms.model.Out.CS020101OVO;

@Repository
public class CS0201DaoImpl extends BaseDaoSupport implements CS0201Dao {

	public List<CS020101OVO> CS020111(CS020101IVO vo) {
		return getSqlSession().selectList("CS0201Mapper.CS020111", vo);
	}

	public List<CS020101OVO> CS020121(CS020101IVO vo) {
		return getSqlSession().selectList("CS0201Mapper.CS020121", vo);
	}

	public List<CS020101OVO> CS020141(CS020101IVO vo) {
		return getSqlSession().selectList("CS0201Mapper.CS020141", vo);
	}
}
