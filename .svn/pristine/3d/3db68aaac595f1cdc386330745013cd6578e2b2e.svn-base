package com.uni.unipms.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uni.unipms.dao.WSPU0101Dao;
import com.uni.unipms.model.In.WSPU010101IVO;
import com.uni.unipms.model.Out.WSPU010101OVO;
import com.uni.unipms.service.WSPU0101Service;

@Service
public class WSPU0101ServiceImpl implements WSPU0101Service {

	@Autowired
	private WSPU0101Dao pu0101Dao;
	
	public List<WSPU010101OVO> PU010101(WSPU010101IVO vo) {

		List<WSPU010101OVO> result = pu0101Dao.PU010101(vo);
		return result;
	}
}
