package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.CM0101Dao;
import com.uni.unipms.model.In.CM010101IVO;
import com.uni.unipms.model.Out.CM010101OVO;

@Repository
public class CM0101DaoImpl extends BaseDaoSupport implements CM0101Dao {

	public List<CM010101OVO> CM010111(CM010101IVO vo) {
		List<CM010101OVO> result = getSqlSession().selectList("CM0101Mapper.CM010111",  vo);
		return result;
	}
	
	public CM010101OVO CM010115(CM010101IVO vo) {
		CM010101OVO result = getSqlSession().selectOne("CM0101Mapper.CM010115",  vo);
		return result;
	}
	
	public int CM010121(CM010101IVO vo) {
		int result = getSqlSession().insert("CM0101Mapper.CM010121",  vo);
		return result;
	}
	
	public int CM010131(CM010101IVO vo) {
		int result = getSqlSession().update("CM0101Mapper.CM010131",  vo);
		return result;
	}
	
	public int CM010141(CM010101IVO vo) {
		int result = getSqlSession().delete("CM0101Mapper.CM010141",  vo);
		return result;
	}
}
