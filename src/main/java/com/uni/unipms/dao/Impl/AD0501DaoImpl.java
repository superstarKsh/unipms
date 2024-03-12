package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.AD0501Dao;
import com.uni.unipms.model.In.AD050101IVO;
import com.uni.unipms.model.In.AD050102IVO;
import com.uni.unipms.model.Out.AD050101OVO;

@Repository
public class AD0501DaoImpl extends BaseDaoSupport implements AD0501Dao {

	public List<AD050101OVO> AD050111(AD050101IVO vo) {
		List<AD050101OVO> result = getSqlSession().selectList("AD0501Mapper.AD050111", vo);
		return result;
	}

	public List<AD050101OVO> AD050112(AD050101IVO vo) {
		List<AD050101OVO> result = getSqlSession().selectList("AD0501Mapper.AD050112", vo);
		return result;
	}

	public int AD050121(AD050101IVO vo) {
		int result = getSqlSession().insert("AD0501Mapper.AD050121", vo);
		return result;
	}

	public int AD050141(AD050101IVO vo) {
		int result = getSqlSession().delete("AD0501Mapper.AD050141", vo);
		return result;
	}

	public int AD050142(AD050102IVO vo) {
		int result = getSqlSession().delete("AD0501Mapper.AD050142", vo);
		return result;
	}

}
