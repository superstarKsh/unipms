package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.NT0201Dao;
import com.uni.unipms.model.In.NT020101IVO;
import com.uni.unipms.model.In.NT020102IVO;
import com.uni.unipms.model.Out.NT020101OVO;
import com.uni.unipms.model.Out.NT020102OVO;

@Repository
public class NT0201DaoImpl extends BaseDaoSupport implements NT0201Dao {
	public NT020101OVO NT020102(NT020101IVO vo) {
		NT020101OVO result = getSqlSession().selectOne("NT0201Mapper.NT020102", vo);
		return result;
	}

	public NT020102OVO NT020103(NT020102IVO vo) {
		NT020102OVO result = getSqlSession().selectOne("NT0201Mapper.NT020103", vo);
		return result;
	}
	
	public List<NT020101OVO> NT020111(NT020101IVO vo) {
		List<NT020101OVO> result = getSqlSession().selectList("NT0201Mapper.NT020111", vo);
		return result;
	}

	public List<NT020102OVO> NT020112(NT020102IVO vo) {
		List<NT020102OVO> result = getSqlSession().selectList("NT0201Mapper.NT020112", vo);
		return result;
	}
	
	public NT020101OVO NT020113(NT020101IVO vo) {
		NT020101OVO result = getSqlSession().selectOne("NT0201Mapper.NT020113", vo);
		return result;
	}
	
	public int NT020121(NT020101IVO vo) {
		int result = getSqlSession().insert("NT0201Mapper.NT020121", vo);
		return result;
	}
	
	public int NT020123(NT020102IVO vo) {
		int result = getSqlSession().insert("NT0201Mapper.NT020123", vo);
		return result;
	}
	
	public int NT020133(NT020102IVO vo) {
		int result = getSqlSession().update("NT0201Mapper.NT020133", vo);
		return result;
	}
	
	public int NT020141(NT020101IVO vo) {
		int result = getSqlSession().delete("NT0201Mapper.NT020141", vo);
		return result;
	}

	public int NT020143(NT020102IVO vo) {
		int result = getSqlSession().delete("NT0201Mapper.NT020143", vo);
		return result;
	}
	
	public int NT020144(NT020101IVO vo) {
		int result = getSqlSession().delete("NT0201Mapper.NT020144", vo);
		return result;
	}
	
}
