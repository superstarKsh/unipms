package com.uni.unipms.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uni.unipms.dao.WSCM0001Dao;
import com.uni.unipms.model.In.CM000101IVO;
import com.uni.unipms.model.Out.CM000101OVO;
import com.uni.unipms.service.WSCM0001Service;

@Service
public class WSCM0001ServiceImpl implements WSCM0001Service {

	@Autowired
	private WSCM0001Dao cm0001Dao;
	
	public CM000101OVO CM000101(CM000101IVO vo) {
		CM000101OVO result = cm0001Dao.CM000101(vo);
		return result;
	};
}
