package com.uni.unipms.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.model.In.CF010101IVO;
import com.uni.unipms.model.Out.CF010101OVO;
import com.uni.unipms.service.CF0101Service;
import com.uni.unipms.dao.CF0101Dao;


@Service
public class CF0101ServiceImpl implements CF0101Service {
	@Autowired
	private CF0101Dao cf0101Dao;
	
	public List<CF010101OVO> CF010111(CF010101IVO vo) {
		return cf0101Dao.CF010111(vo);
	}
	
	public CF010101OVO CF010113(CF010101IVO vo) {
		CF010101OVO result = cf0101Dao.CF010113(vo);
		return result;
	}

	@Transactional
	public int CF010121(CF010101IVO vo) {
		int result = cf0101Dao.CF010141(vo);
		result = cf0101Dao.CF010121(vo);

		return result;
	}
	
	public CF010101OVO CF010181A(CF010101IVO vo) {
		CF010101OVO result = cf0101Dao.CF010181A(vo);
		return result;
	}
	
	public List<CF010101OVO> CF010181B(CF010101IVO vo) {
		List<CF010101OVO> result = cf0101Dao.CF010181B(vo);
		return result;
	}
	
	public List<CF010101OVO> CF010181C(CF010101IVO vo) {
		List<CF010101OVO> result = cf0101Dao.CF010181C(vo);
		return result;
	}
	
	public List<CF010101OVO> CF010182(CF010101IVO vo) {
		List<CF010101OVO> result = cf0101Dao.CF010182(vo);
		return result;
	}
	
}
