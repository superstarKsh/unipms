package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.DV0101Dao;
import com.uni.unipms.model.In.DV010101IVO;
import com.uni.unipms.model.Out.DV010101OVO;
import com.uni.unipms.model.Out.DV010102OVO;

@Repository
public class DV0101DaoImpl extends BaseDaoSupport implements DV0101Dao {

	public List<DV010101OVO> DV010111(DV010101IVO vo) {
		List<DV010101OVO> result = getSqlSession().selectList("DV0101Mapper.DV010111", vo);
		return result;
	}
	
	public List<DV010102OVO> DV010111A(DV010101IVO vo) {
		List<DV010102OVO> result = getSqlSession().selectList("DV0101Mapper.DV010111A", vo);
		return result;
	}
	
	public List<DV010102OVO> DV010111B(DV010101IVO vo) {
		List<DV010102OVO> result = getSqlSession().selectList("DV0101Mapper.DV010111B", vo);
		return result;
	}
	
	public DV010101OVO DV010115(DV010101IVO vo) {
		DV010101OVO result = getSqlSession().selectOne("DV0101Mapper.DV010115", vo);
		return result;
	}

}
