package com.uni.unipms.service.Impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uni.unipms.dao.TS0104Dao;
import com.uni.unipms.model.In.TS010401IVO;
import com.uni.unipms.model.Out.TS010401OVO;
import com.uni.unipms.service.TS0104Service;

@Service
public class TS0104ServiceImpl implements TS0104Service {
	
	final static Logger logger = LoggerFactory.getLogger(TS0104ServiceImpl.class);

	@Autowired
	private TS0104Dao ts0104Dao;
	
	public List<TS010401OVO> TS010415(TS010401IVO vo) {
		List<TS010401OVO> result = ts0104Dao.TS010415(vo);
		return result;
	}
}
