package com.uni.unipms.service.Impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.TS0201Dao;
import com.uni.unipms.model.In.TS020101IVO;
import com.uni.unipms.model.Out.TS020101OVO;
import com.uni.unipms.service.TS0201Service;

@Service
public class TS0201ServiceImpl implements TS0201Service {
	final static Logger logger = LoggerFactory.getLogger(TS0201ServiceImpl.class);

	@Autowired
	private TS0201Dao ts0201Dao;
	
	public TS020101OVO TS020102(TS020101IVO vo) {
		TS020101OVO result = ts0201Dao.TS020102(vo);
		return result;
	}
	
	public List<TS020101OVO> TS020111(TS020101IVO vo) {
		List<TS020101OVO> result = ts0201Dao.TS020111(vo);
		return result;
	}
	
	public TS020101OVO TS020113(TS020101IVO vo) {
		TS020101OVO result = ts0201Dao.TS020113(vo);
		return result;
	}
	
	@Transactional
	public int TS020121(TS020101IVO vo) {
		int result = ts0201Dao.TS020141(vo);
		result = ts0201Dao.TS020121(vo);
		return result;
	}
	
	@Transactional
	public int TS020141(TS020101IVO vo) {
		int result = ts0201Dao.TS020141(vo);
		return result;
	}
}
