package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.DV0401Dao;
import com.uni.unipms.model.In.DV040101IVO;
import com.uni.unipms.model.Out.DV040101OVO;
import com.uni.unipms.model.Out.DV040102OVO;
import com.uni.unipms.model.Out.DV040103OVO;

@Repository
public class DV0401DaoImpl extends BaseDaoSupport implements DV0401Dao {

	public List<DV040101OVO> DV040111(DV040101IVO vo) {
		List<DV040101OVO> result = getSqlSession().selectList("DV0401Mapper.DV040111", vo);
		return result;
	}
	
	public List<DV040102OVO> DV040115(DV040101IVO vo) {
		List<DV040102OVO> result = getSqlSession().selectList("DV0401Mapper.DV040115", vo);
		return result;
	}

	public int DV040131(DV040101IVO vo) {
		int result = getSqlSession().update("DV0401Mapper.DV040131", vo);
		return result;
	}
	
	public List<DV040103OVO> DV040154(DV040101IVO vo) {
		List<DV040103OVO> result = getSqlSession().selectList("DV0401Mapper.DV040154", vo);
		return result;
	}

}
