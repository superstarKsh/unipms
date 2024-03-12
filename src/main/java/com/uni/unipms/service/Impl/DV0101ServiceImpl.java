package com.uni.unipms.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uni.unipms.dao.DV0101Dao;
import com.uni.unipms.model.In.DV010101IVO;
import com.uni.unipms.model.Out.DV010101OVO;
import com.uni.unipms.model.Out.DV010102OVO;
import com.uni.unipms.service.DV0101Service;

@Service
public class DV0101ServiceImpl implements DV0101Service {

	@Autowired
	private DV0101Dao dv0101Dao;
	
	public List<DV010101OVO> DV010111(DV010101IVO vo) {
		List<DV010101OVO> result = dv0101Dao.DV010111(vo);
		return result;
	}

	public List<DV010102OVO> DV010111A(DV010101IVO vo) {
		List<DV010102OVO> result = dv0101Dao.DV010111A(vo);
		return result;
	}

	public List<DV010102OVO> DV010111B(DV010101IVO vo) {
		List<DV010102OVO> result = dv0101Dao.DV010111B(vo);
		return result;
	}
	
	public DV010101OVO DV010115(DV010101IVO vo) {
		DV010101OVO result = dv0101Dao.DV010115(vo);
		return result;
	}
}
