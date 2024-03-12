package com.uni.unipms.service.Impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.CF0301Dao;
import com.uni.unipms.model.In.CF030101IVO;
import com.uni.unipms.model.Out.CF030101OVO;
import com.uni.unipms.service.CF0301Service;

@Service
public class CF0301ServiceImpl implements CF0301Service {
	final static Logger logger = LoggerFactory.getLogger(CF0301ServiceImpl.class);

	@Autowired
	private CF0301Dao cf0301Dao;
	
	public CF030101OVO CF030102(CF030101IVO vo) {
		CF030101OVO result = cf0301Dao.CF030102(vo);
		return result;
	}
	
	@Transactional
	public int CF030121(CF030101IVO vo) {
		int result = cf0301Dao.CF030141(vo);
		result = cf0301Dao.CF030121(vo);
		return result;
	}
	
	@Transactional
	public int CF030141(CF030101IVO vo) {
		int result = cf0301Dao.CF030141(vo);
		return result;
	}
	
	public CF030101OVO CF030113(CF030101IVO vo) {
		CF030101OVO result = cf0301Dao.CF030113(vo);
		return result;
	}
	
	public List<CF030101OVO> CF030111(CF030101IVO vo) {
		List<CF030101OVO> result = cf0301Dao.CF030111(vo);		
		return result;
	}
}
