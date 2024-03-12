package com.uni.unipms.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uni.unipms.dao.WSPJ0201Dao;
import com.uni.unipms.model.In.PJ020101IVO;
import com.uni.unipms.model.Out.WSPJ020101OVO;
import com.uni.unipms.service.WSPJ0201Service;

@Service
public class WSPJ0201ServiceImpl implements WSPJ0201Service {

	@Autowired
	private WSPJ0201Dao pj0201Dao;
	
	public WSPJ020101OVO WSPJ020113(PJ020101IVO vo) {
		WSPJ020101OVO result = pj0201Dao.WSPJ020113(vo);
		return result;
	}

}
