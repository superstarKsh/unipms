package com.uni.unipms.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uni.unipms.dao.CS0101Dao;
import com.uni.unipms.model.In.CS010101IVO;
import com.uni.unipms.model.Out.CS010101OVO;
import com.uni.unipms.service.CS0101Service;


@Service
public class CS0101ServiceImpl implements CS0101Service {
	@Autowired
	private CS0101Dao cs0101Dao;
	
	public List<CS010101OVO> CS010111(CS010101IVO vo) {
		return cs0101Dao.CS010111(vo);
	}

}
