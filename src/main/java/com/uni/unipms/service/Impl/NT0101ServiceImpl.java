package com.uni.unipms.service.Impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.NT0101Dao;
import com.uni.unipms.model.In.NT010101IVO;
import com.uni.unipms.model.Out.NT010101OVO;
import com.uni.unipms.service.NT0101Service;

@Service
public class NT0101ServiceImpl implements NT0101Service {
	final static Logger logger = LoggerFactory.getLogger(NT0101ServiceImpl.class);

	@Autowired
	private NT0101Dao nt0101Dao;
	
	public List<NT010101OVO> NT010111(NT010101IVO vo) {
		List<NT010101OVO> result = nt0101Dao.NT010111(vo);
		return result;
	}

	public NT010101OVO NT010113(NT010101IVO vo) {
		NT010101OVO result = nt0101Dao.NT010113(vo);
		return result;

	}

	@Transactional
	public int NT010121(NT010101IVO vo) {
		int result = nt0101Dao.NT010141(vo);
		
		if (vo.getsSEQ_NO() == null || "".equals(vo.getsSEQ_NO())) {
			NT010101OVO  NT010101OVO = nt0101Dao.NT010102(vo);
			vo.setsSEQ_NO(NT010101OVO.getsSEQ_NO());
		}
			
		result = nt0101Dao.NT010121(vo);
		
		return result;

	}
	
	@Transactional
	public int NT010141(NT010101IVO vo) {
		int result = nt0101Dao.NT010141(vo);
		return result;
	}
	
}
