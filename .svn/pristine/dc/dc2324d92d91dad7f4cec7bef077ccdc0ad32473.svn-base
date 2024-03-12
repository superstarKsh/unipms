package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.PU0101Dao;
import com.uni.unipms.model.In.PU010101IVO;
import com.uni.unipms.model.In.PU010111IVO;
import com.uni.unipms.model.In.PU010121IVO;
import com.uni.unipms.model.In.PU010131IVO;
import com.uni.unipms.model.In.PU010141IVO;
import com.uni.unipms.model.Out.PU010101OVO;
import com.uni.unipms.model.Out.PU010111OVO;
import com.uni.unipms.model.Out.PU010121OVO;
import com.uni.unipms.model.Out.PU010131OVO;
import com.uni.unipms.model.Out.PU010141OVO;

@Repository
public class PU0101DaoImpl extends BaseDaoSupport implements PU0101Dao {

	public List<PU010101OVO> PU010101(PU010101IVO vo) {
		List<PU010101OVO> result = getSqlSession().selectList("PU0101Mapper.PU010101", vo);
		return result;
	}
	
	public List<PU010111OVO> PU010111(PU010111IVO vo) {
		List<PU010111OVO> result = getSqlSession().selectList("PU0101Mapper.PU010111", vo);
		return result;
	}
	
	public List<PU010111OVO> PU010112(PU010111IVO vo) {
		List<PU010111OVO> result = getSqlSession().selectList("PU0101Mapper.PU010112", vo);
		return result;
	}
	
	public List<PU010121OVO> PU010121(PU010121IVO vo) {
		List<PU010121OVO> result = getSqlSession().selectList("PU0101Mapper.PU010121", vo);
		return result;
	}
	
	public List<PU010131OVO> PU010131(PU010131IVO vo) {
		List<PU010131OVO> result = getSqlSession().selectList("PU0101Mapper.PU010131", vo);
		return result;
	}

	public List<PU010141OVO> PU010141(PU010141IVO vo) {
		List<PU010141OVO> result = getSqlSession().selectList("PU0101Mapper.PU010141", vo);
		return result;
	}
	
}
