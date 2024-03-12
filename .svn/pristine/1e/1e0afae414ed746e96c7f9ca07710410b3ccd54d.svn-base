package com.uni.unipms.service.Impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.NT0301Dao;
import com.uni.unipms.model.In.NT030101IVO;
import com.uni.unipms.model.Out.NT030101OVO;
import com.uni.unipms.service.NT0301Service;

@Service
public class NT0301ServiceImpl implements NT0301Service {
	
	final static Logger logger = LoggerFactory.getLogger(NT0301ServiceImpl.class);

	@Autowired
	private NT0301Dao NT0301Dao;
	
	public List<NT030101OVO> NT030111(NT030101IVO vo) {
		List<NT030101OVO> result = NT0301Dao.NT030111(vo);
		return result;
	}
	
	public NT030101OVO NT030113(NT030101IVO vo) {
		NT030101OVO result = NT0301Dao.NT030113(vo);
		return result;
	}
	
	@Transactional
	public int NT030121(NT030101IVO vo) {
		int result = NT0301Dao.NT030141(vo);
		
		if (vo.getsSEQ_NO() == null || "".equals(vo.getsSEQ_NO())) {
			NT030101OVO  NT030101OVO = NT0301Dao.NT030102(vo);
			vo.setsSEQ_NO(NT030101OVO.getsSEQ_NO());
		}
		
		result = NT0301Dao.NT030121(vo);
		return result;
	}
	
	@Transactional
	public int NT030141(NT030101IVO vo) {
		int result = NT0301Dao.NT030141(vo);
		return result;
	}
	
}
