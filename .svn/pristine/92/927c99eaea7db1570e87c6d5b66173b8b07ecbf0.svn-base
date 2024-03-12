package com.uni.unipms.service.Impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.TS0301Dao;
import com.uni.unipms.model.In.TS030101IVO;
import com.uni.unipms.model.Out.TS030101OVO;
import com.uni.unipms.service.TS0301Service;

@Service
public class TS0301ServiceImpl implements TS0301Service {
	
	final static Logger logger = LoggerFactory.getLogger(TS0301ServiceImpl.class);

	@Autowired
	private TS0301Dao ts0301Dao;

	@Transactional
	public List<TS030101OVO> TS030111(TS030101IVO vo) {
		return ts0301Dao.TS030111(vo);
	}
	
	public TS030101OVO TS030113(TS030101IVO vo) {
		return ts0301Dao.TS030113(vo);
	}

	@Transactional
	public int TS030121(TS030101IVO vo) {
		int result = ts0301Dao.TS030141(vo);
		result = ts0301Dao.TS030131(vo);
		result = ts0301Dao.TS030121(vo);
		return result;
	}

}
