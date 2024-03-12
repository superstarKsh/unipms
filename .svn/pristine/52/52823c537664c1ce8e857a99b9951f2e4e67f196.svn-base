package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.PJ0101Dao;
import com.uni.unipms.model.In.PJ010101IVO;
import com.uni.unipms.model.In.PJ010111IVO;
import com.uni.unipms.model.In.PJ010112IVO;
import com.uni.unipms.model.In.PJ010121IVO;
import com.uni.unipms.model.In.PJ010122IVO;
import com.uni.unipms.model.Out.PJ010111OVO;
import com.uni.unipms.model.Out.PJ010121OVO;

@Repository
public class PJ0101DaoImpl extends BaseDaoSupport implements PJ0101Dao {

	public List<PJ010111OVO> PJ010111A(PJ010111IVO vo) {
		List<PJ010111OVO> result = getSqlSession().selectList("PJ0101Mapper.PJ010111A", vo);
		return result;
	}
	
	public int PJ010121A(PJ010111IVO vo) {
		int result = getSqlSession().insert("PJ0101Mapper.PJ010121A", vo);
		return result;
	}
	
	public int PJ010142A(PJ010112IVO vo) {
		int result = getSqlSession().delete("PJ0101Mapper.PJ010142A", vo);
		return result;
	}
	
	public List<PJ010121OVO> PJ010111B(PJ010121IVO vo) {
		List<PJ010121OVO> result = getSqlSession().selectList("PJ0101Mapper.PJ010111B", vo);
		return result;
	}
	
	public int PJ010121B(PJ010121IVO vo) {
		int result = getSqlSession().insert("PJ0101Mapper.PJ010121B", vo);
		return result;
	}
	
	public int PJ010142B(PJ010122IVO vo) {
		int result = getSqlSession().delete("PJ0101Mapper.PJ010142B", vo);
		return result;
	}
	
	public int PJ010132(PJ010101IVO vo) {
		int result = getSqlSession().delete("PJ0101Mapper.PJ010132", vo);
		return result;
	}

}
