package com.uni.unipms.dao;

import java.util.List;

import com.uni.unipms.model.In.WSPU010101IVO;
import com.uni.unipms.model.Out.WSPU010101OVO;

public interface WSPU0101Dao {	
	public List<WSPU010101OVO> PU010101(WSPU010101IVO vo);
}