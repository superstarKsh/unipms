package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.CS0101Dao;
import com.uni.unipms.model.In.CS010101IVO;
import com.uni.unipms.model.Out.CS010101OVO;

@Repository
public class CS0101DaoImpl extends BaseDaoSupport implements CS0101Dao {

	public List<CS010101OVO> CS010111(CS010101IVO vo) {
		return getSqlSession().selectList("CS0101Mapper.CS010111", vo);
	}
}
