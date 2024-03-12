package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.AD0201Dao;
import com.uni.unipms.model.In.AD020101IVO;
import com.uni.unipms.model.In.AD020111IVO;
import com.uni.unipms.model.In.AD020112IVO;
import com.uni.unipms.model.In.AD020121IVO;
import com.uni.unipms.model.In.AD020122IVO;
import com.uni.unipms.model.In.AD020131IVO;
import com.uni.unipms.model.In.AD020132IVO;
import com.uni.unipms.model.In.AD020141IVO;
import com.uni.unipms.model.In.AD020142IVO;
import com.uni.unipms.model.In.AD020151IVO;
import com.uni.unipms.model.In.AD020152IVO;
import com.uni.unipms.model.Out.AD020101OVO;
import com.uni.unipms.model.Out.AD020111OVO;
import com.uni.unipms.model.Out.AD020121OVO;
import com.uni.unipms.model.Out.AD020131OVO;
import com.uni.unipms.model.Out.AD020141OVO;
import com.uni.unipms.model.Out.AD020151OVO;

@Repository
public class AD0201DaoImpl extends BaseDaoSupport implements AD0201Dao {

	public List<AD020101OVO> AD020111(AD020101IVO vo) {
		List<AD020101OVO> result = getSqlSession().selectList("AD0201Mapper.AD020111", vo);
		return result;
	}
	
	public AD020101OVO AD020113(AD020101IVO vo) {
		AD020101OVO result = getSqlSession().selectOne("AD0201Mapper.AD020113", vo);
		return result;
	}
	
	public AD020101OVO AD020115(AD020101IVO vo) {
		AD020101OVO result = getSqlSession().selectOne("AD0201Mapper.AD020115", vo);
		return result;
	}
	
	public int AD020121(AD020101IVO vo) {
		int result = getSqlSession().insert("AD0201Mapper.AD020121", vo);
		return result;
	}
	
	public int AD020141(AD020101IVO vo) {
		int result = getSqlSession().delete("AD0201Mapper.AD020141", vo);
		return result;
	}
	
	public List<AD020111OVO> AD020111A(AD020111IVO vo) {
		List<AD020111OVO> result = getSqlSession().selectList("AD0201Mapper.AD020111A", vo);
		return result;
	}
	
	public AD020111OVO AD020102A(AD020112IVO vo) {
		AD020111OVO result = getSqlSession().selectOne("AD0201Mapper.AD020102A", vo);
		return result;
	}
	
	public int AD020121A(AD020111IVO vo) {
		int result = getSqlSession().insert("AD0201Mapper.AD020121A", vo);
		return result;
	}
	
	public int AD020142A(AD020112IVO vo) {
		int result = getSqlSession().delete("AD0201Mapper.AD020142A", vo);
		return result;
	}
	
	public List<AD020121OVO> AD020111B(AD020121IVO vo) {
		List<AD020121OVO> result = getSqlSession().selectList("AD0201Mapper.AD020111B", vo);
		return result;
	}
	
	public AD020121OVO AD020102B(AD020122IVO vo) {
		AD020121OVO result = getSqlSession().selectOne("AD0201Mapper.AD020102B", vo);
		return result;
	}
	
	public int AD020121B(AD020121IVO vo) {
		int result = getSqlSession().insert("AD0201Mapper.AD020121B", vo);
		return result;
	}
	
	public int AD020142B(AD020122IVO vo) {
		int result = getSqlSession().delete("AD0201Mapper.AD020142B", vo);
		return result;
	}
	
	public List<AD020131OVO> AD020111C(AD020131IVO vo) {
		List<AD020131OVO> result = getSqlSession().selectList("AD0201Mapper.AD020111C", vo);
		return result;
	}
	
	public AD020131OVO AD020102C(AD020132IVO vo) {
		AD020131OVO result = getSqlSession().selectOne("AD0201Mapper.AD020102C", vo);
		return result;
	}
	
	public int AD020121C(AD020131IVO vo) {
		int result = getSqlSession().insert("AD0201Mapper.AD020121C", vo);
		return result;
	}
	
	public int AD020142C(AD020132IVO vo) {
		int result = getSqlSession().delete("AD0201Mapper.AD020142C", vo);
		return result;
	}

	public List<AD020141OVO> AD020111D(AD020141IVO vo) {
		List<AD020141OVO> result = getSqlSession().selectList("AD0201Mapper.AD020111D", vo);
		return result;
	}
	
	public AD020141OVO AD020102D(AD020142IVO vo) {
		AD020141OVO result = getSqlSession().selectOne("AD0201Mapper.AD020102D", vo);
		return result;
	}
	
	public int AD020121D(AD020141IVO vo) {
		int result = getSqlSession().insert("AD0201Mapper.AD020121D", vo);
		return result;
	}
	
	public int AD020142D(AD020142IVO vo) {
		int result = getSqlSession().delete("AD0201Mapper.AD020142D", vo);
		return result;
	}
	
	public List<AD020151OVO> AD020111E(AD020151IVO vo) {
		List<AD020151OVO> result = getSqlSession().selectList("AD0201Mapper.AD020111E", vo);
		return result;
	}
	
	public AD020151OVO AD020102E(AD020152IVO vo) {
		AD020151OVO result = getSqlSession().selectOne("AD0201Mapper.AD020102E", vo);
		return result;
	}
	
	public int AD020121E(AD020151IVO vo) {
		int result = getSqlSession().insert("AD0201Mapper.AD020121E", vo);
		return result;
	}
	
	public int AD020141E(AD020151IVO vo) {
		int result = getSqlSession().delete("AD0201Mapper.AD020141E", vo);
		return result;
	}
	
	public int AD020142E(AD020152IVO vo) {
		int result = getSqlSession().delete("AD0201Mapper.AD020142E", vo);
		return result;
	}
}
