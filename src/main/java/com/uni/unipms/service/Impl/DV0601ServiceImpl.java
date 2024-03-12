package com.uni.unipms.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.DV0601Dao;
import com.uni.unipms.model.In.DV060101IVO;
import com.uni.unipms.model.Out.DV060101OVO;
import com.uni.unipms.model.Out.DV060102OVO;
import com.uni.unipms.service.DV0601Service;

@Service
public class DV0601ServiceImpl implements DV0601Service {

	@Autowired
	private DV0601Dao dv0601Dao;
	
	public DV060102OVO DV060102(DV060101IVO vo) {
		DV060102OVO result = dv0601Dao.DV060102(vo);
		return result;
	}
	
	public List<DV060101OVO> DV060111(DV060101IVO vo) {
		List<DV060101OVO> result = dv0601Dao.DV060111(vo);
		return result;
	}
	
	public List<DV060102OVO> DV060112(DV060101IVO vo) {
		List<DV060102OVO> result = dv0601Dao.DV060112(vo);
		return result;
	}
	
	public DV060102OVO DV060113(DV060101IVO vo) {
		DV060102OVO result = dv0601Dao.DV060113(vo);
		return result;
	}
	
	@Transactional
	public int DV060121(DV060101IVO vo) {
		int result = dv0601Dao.DV060141(vo);
		result = dv0601Dao.DV060121(vo);
		result = dv0601Dao.DV060131(vo);
		return result;
	}
	
	@Transactional
	public int DV060121A(DV060101IVO vo) {
		int result = dv0601Dao.DV060141(vo);
		result = dv0601Dao.DV060121(vo);
		return result;
	}
}
