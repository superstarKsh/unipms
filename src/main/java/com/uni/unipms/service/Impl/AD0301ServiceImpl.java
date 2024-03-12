package com.uni.unipms.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.AD0301Dao;
import com.uni.unipms.model.In.AD030101IVO;
import com.uni.unipms.model.Out.AD030101OVO;
import com.uni.unipms.service.AD0301Service;

@Service
public class AD0301ServiceImpl implements AD0301Service {

	@Autowired
	private AD0301Dao ad0301Dao;
	
	public AD030101OVO AD030102(AD030101IVO vo) {
		AD030101OVO result = ad0301Dao.AD030102(vo);
		return result;
	}
	
	public List<AD030101OVO> AD030111(AD030101IVO vo) {
		List<AD030101OVO> result = ad0301Dao.AD030111(vo);
		return result;
	}
	
	public AD030101OVO AD030113(AD030101IVO vo) {
		AD030101OVO result = ad0301Dao.AD030113(vo);
		return result;
	}
	
	@Transactional
	public int AD030121(AD030101IVO vo) {
		int result = ad0301Dao.AD030141(vo);
		result = ad0301Dao.AD030121(vo);
		return result;
	}
	
	@Transactional
	public int AD030141(AD030101IVO vo) {
		int result = ad0301Dao.AD030141(vo);
		return result;
	}
}
