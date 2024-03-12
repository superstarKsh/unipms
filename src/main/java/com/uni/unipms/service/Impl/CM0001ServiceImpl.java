package com.uni.unipms.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uni.unipms.dao.CM0001Dao;
import com.uni.unipms.service.CM0001Service;
import com.uni.unipms.model.In.CM000101IVO;
import com.uni.unipms.model.Out.CM000101OVO;

@Service
public class CM0001ServiceImpl implements CM0001Service {

	@Autowired
	private CM0001Dao CM0001Dao;
	
	public CM000101OVO CM000101(CM000101IVO vo) {
		CM000101OVO result = CM0001Dao.CM000101(vo);
		return result;
	};
}
