package com.uni.unipms.service.Impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.TS0103Dao;
import com.uni.unipms.model.In.TS010301IVO;
import com.uni.unipms.model.Out.TS010301OVO;
import com.uni.unipms.service.TS0103Service;

@Service
public class TS0103ServiceImpl implements TS0103Service {
	
	final static Logger logger = LoggerFactory.getLogger(TS0103ServiceImpl.class);

	@Autowired
	private TS0103Dao ts0103Dao;
	
	public TS010301OVO TS010313(TS010301IVO vo) {
		TS010301OVO result = ts0103Dao.TS010313(vo);
		return result;
	}
	
	@Transactional
	public int TS010331(TS010301IVO vo) {
		int result = ts0103Dao.TS010331(vo);
		return result;
	}
}
