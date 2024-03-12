package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.CM0031Dao;
import com.uni.unipms.model.In.CM003101IVO;
import com.uni.unipms.model.Out.CM003101OVO;

@Repository
public class CM0031DaoImpl extends BaseDaoSupport implements CM0031Dao {

	public List<CM003101OVO> CM003101(CM003101IVO vo) {
		List<CM003101OVO> result = getSqlSession().selectList("CM0031Mapper.CM003101", vo);
		return result;
	}
	
	public List<CM003101OVO> CM003102(CM003101IVO vo) {
		List<CM003101OVO> result = getSqlSession().selectList("CM0031Mapper.CM003102", vo);
		return result;
	}
	
	public List<CM003101OVO> CM003103(CM003101IVO vo) {
		List<CM003101OVO> result = getSqlSession().selectList("CM0031Mapper.CM003103", vo);
		return result;
	}
	
	public CM003101OVO CM003104(CM003101IVO vo) {
		CM003101OVO result = getSqlSession().selectOne("CM0031Mapper.CM003104", vo);
		return result;
	}
	
	public List<CM003101OVO> CM003111(CM003101IVO vo) {
		List<CM003101OVO> result = getSqlSession().selectList("CM0031Mapper.CM003111", vo);
		return result;
	}

	public List<CM003101OVO> CM003112(CM003101IVO vo) {
		List<CM003101OVO> result = getSqlSession().selectList("CM0031Mapper.CM003112", vo);
		return result;
	}
	
	public List<CM003101OVO> CM003113(CM003101IVO vo) {
		List<CM003101OVO> result = getSqlSession().selectList("CM0031Mapper.CM003113", vo);
		return result;
	}
	
	public List<CM003101OVO> CM003121(CM003101IVO vo) {
		List<CM003101OVO> result = getSqlSession().selectList("CM0031Mapper.CM003121", vo);
		return result;
	}
	
	public List<CM003101OVO> CM003122(CM003101IVO vo) {
		List<CM003101OVO> result = getSqlSession().selectList("CM0031Mapper.CM003122", vo);
		return result;
	}
	
	public List<CM003101OVO> CM003123(CM003101IVO vo) {
		List<CM003101OVO> result = getSqlSession().selectList("CM0031Mapper.CM003123", vo);
		return result;
	}

}
