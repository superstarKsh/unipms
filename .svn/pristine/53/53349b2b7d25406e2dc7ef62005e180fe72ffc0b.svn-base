package com.uni.unipms.service.Impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uni.unipms.dao.MG1401Dao;
import com.uni.unipms.model.In.MG140101IVO;
import com.uni.unipms.model.Out.MG140101OVO;
import com.uni.unipms.service.MG1401Service;

@Service
public class MG1401ServiceImpl implements MG1401Service {

	@Autowired
	private MG1401Dao MG1401Dao;
	final static Logger logger = LoggerFactory.getLogger(MG1101ServiceImpl.class);
	
	public List<MG140101OVO> MG140111(MG140101IVO vo) {
		List<MG140101OVO> result = MG1401Dao.MG140111(vo);
		return result;
	}
}
