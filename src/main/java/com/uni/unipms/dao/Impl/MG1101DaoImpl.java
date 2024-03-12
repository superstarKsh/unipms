package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.MG1101Dao;
import com.uni.unipms.model.In.MG110101IVO;
import com.uni.unipms.model.In.MG110102IVO;
import com.uni.unipms.model.In.MG110103IVO;
import com.uni.unipms.model.Out.MG110101OVO;
import com.uni.unipms.model.Out.MG110102OVO;

@Repository
public class MG1101DaoImpl extends BaseDaoSupport implements MG1101Dao {

	public MG110102OVO MG110102(MG110102IVO vo) {
		MG110102OVO result = getSqlSession().selectOne("MG1101Mapper.MG110102", vo);
		return result;
	}
	
	public List<MG110101OVO> MG110111(MG110101IVO vo) {
		List<MG110101OVO> result = getSqlSession().selectList("MG1101Mapper.MG110111", vo);
		return result;
	}

	public List<MG110102OVO> MG110112(MG110102IVO vo) {
		List<MG110102OVO> result = getSqlSession().selectList("MG1101Mapper.MG110112", vo);
		return result;
	}

	public int MG110121(MG110102IVO vo) {
		int result = getSqlSession().insert("MG1101Mapper.MG110121", vo);
		return result;
	}

	public int MG110141(MG110102IVO vo) {
		int result = getSqlSession().delete("MG1101Mapper.MG110141", vo);
		return result;
	}

	public int MG110142(MG110103IVO vo) {
		int result = getSqlSession().update("MG1101Mapper.MG110142", vo);
		return result;
	}
}
