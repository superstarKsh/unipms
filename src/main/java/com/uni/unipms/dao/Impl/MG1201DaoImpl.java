package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.MG1201Dao;
import com.uni.unipms.model.In.MG120101IVO;
import com.uni.unipms.model.In.MG120102IVO;
import com.uni.unipms.model.Out.MG120101OVO;
import com.uni.unipms.model.Out.MG120102OVO;

@Repository
public class MG1201DaoImpl extends BaseDaoSupport implements MG1201Dao {

	public MG120102OVO MG120102(MG120101IVO vo) {
		MG120102OVO result = getSqlSession().selectOne("MG1201Mapper.MG120102", vo);
		return result;
	}

	public List<MG120101OVO> MG120111(MG120101IVO vo) {
		List<MG120101OVO> result = getSqlSession().selectList("MG1201Mapper.MG120111", vo);
		return result;
	}

	public List<MG120102OVO> MG120112(MG120101IVO vo) {
		List<MG120102OVO> result = getSqlSession().selectList("MG1201Mapper.MG120112", vo);
		return result;
	}

	public int MG120121(MG120101IVO vo) {
		int result = getSqlSession().insert("MG1201Mapper.MG120121", vo);
		return result;
	}

	public int MG120141(MG120101IVO vo) {
		int result = getSqlSession().delete("MG1201Mapper.MG120141", vo);
		return result;
	}

	public int MG120142(MG120102IVO vo) {
		int result = getSqlSession().delete("MG1201Mapper.MG120142", vo);
		return result;
	}
}
