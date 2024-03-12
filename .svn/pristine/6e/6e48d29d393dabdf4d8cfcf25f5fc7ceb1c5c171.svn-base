package com.uni.unipms.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uni.unipms.dao.CM0011Dao;
import com.uni.unipms.model.In.CM001101IVO;
import com.uni.unipms.model.Out.CM001101OVO;
import com.uni.unipms.service.CM0011Service;

@Service
public class CM0011ServiceImpl implements CM0011Service {
	@Autowired
	private CM0011Dao cm0011Dao;
	
	public List<CM001101OVO> CM001101(CM001101IVO vo) {
		List<CM001101OVO> result = cm0011Dao.CM001101(vo);
		return result;
	}

	public List<CM001101OVO> CM001102(CM001101IVO vo) {
		List<CM001101OVO> result = cm0011Dao.CM001102(vo);
		return result;
	}

}
