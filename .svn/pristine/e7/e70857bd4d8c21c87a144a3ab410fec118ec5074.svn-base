package com.uni.unipms.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.CF0201Dao;
import com.uni.unipms.model.In.CF020101IVO;
import com.uni.unipms.model.Out.CF020101OVO;
import com.uni.unipms.service.CF0201Service;

@Service
public class CF0201ServiceImpl implements CF0201Service {
	@Autowired
	private CF0201Dao cf0201Dao;
	
	public List<CF020101OVO> CF020111(CF020101IVO vo) {
		List<CF020101OVO> result = cf0201Dao.CF020111(vo);
		return result;
	}

	@Transactional
	public int CF020121(CF020101IVO vo) {
		int result = cf0201Dao.CF020141(vo);
		
		if (vo.getsPROCD_NO() == null || "".equals(vo.getsPROCD_NO())) {
			CF020101OVO resultvo = cf0201Dao.CF020102(vo);
			vo.setsPROCD_NO(resultvo.getsPROCD_NO());
		}
		
		result = cf0201Dao.CF020121(vo);
		return result;
	}
	
	public CF020101OVO CF020113(CF020101IVO vo) {
		CF020101OVO result = cf0201Dao.CF020113(vo);
		return result;
	}	
}
