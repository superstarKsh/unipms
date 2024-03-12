package com.uni.unipms.service.Impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.common.Util.DateUtil;
import com.uni.unipms.dao.NT0201Dao;
import com.uni.unipms.model.In.NT020101IVO;
import com.uni.unipms.model.In.NT020102IVO;
import com.uni.unipms.model.Out.NT020101OVO;
import com.uni.unipms.model.Out.NT020102OVO;
import com.uni.unipms.service.NT0201Service;

@Service
public class NT0201ServiceImpl implements NT0201Service {
	
	final static Logger logger = LoggerFactory.getLogger(NT0201ServiceImpl.class);

	@Autowired
	private NT0201Dao nt0201Dao;
	
	public List<NT020101OVO> NT020111(NT020101IVO vo) {
		List<NT020101OVO> result = nt0201Dao.NT020111(vo);
		return result;

	}
	
	public List<NT020102OVO> NT020112(NT020102IVO vo) {
		List<NT020102OVO> result = nt0201Dao.NT020112(vo);
		return result;

	}
	
	public NT020101OVO NT020113(NT020101IVO vo) {
		NT020101OVO result = nt0201Dao.NT020113(vo);
		return result;
	}

	@Transactional
	public int NT020121(NT020101IVO vo) {
		int result = nt0201Dao.NT020141(vo);
		
		if (vo.getsSEQ_NO() == null || "".equals(vo.getsSEQ_NO())) {
			NT020101OVO  nt020101ovo = new NT020101OVO();
			nt020101ovo = nt0201Dao.NT020102(vo);
			vo.setsSEQ_NO(nt020101ovo.getsSEQ_NO());
		}
		
		vo.setsREG_DT(DateUtil.getToday());
		vo.setsREG_TIME(DateUtil.getTime());
		result = nt0201Dao.NT020121(vo);

		return result;
	}
	
	@Transactional
	public int NT020123(NT020102IVO vo) {
		int result = 0;
		
		NT020102OVO  nt020102ovo = nt0201Dao.NT020103(vo);
			
		vo.setsSEQ_NO(nt020102ovo.getsSEQ_NO());
		vo.setsREG_DT(DateUtil.getToday());
		vo.setsREG_TIME(DateUtil.getTime());
		
		result = nt0201Dao.NT020123(vo);

		return result;
	}
	
	@Transactional
	public int NT020133(NT020102IVO vo) {
		vo.setsREG_DT(DateUtil.getToday());
		vo.setsREG_TIME(DateUtil.getTime());
		int result = nt0201Dao.NT020133(vo);
		return result;

	}
	
	@Transactional
	public int NT020141(NT020101IVO vo) {
		int result = nt0201Dao.NT020141(vo);
		result = nt0201Dao.NT020144(vo);
		return result;
	}
	
	@Transactional
	public int NT020143(NT020102IVO vo) {
		int result = nt0201Dao.NT020143(vo);
		return result;
	}
}
