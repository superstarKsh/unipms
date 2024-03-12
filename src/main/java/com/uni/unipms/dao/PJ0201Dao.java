package com.uni.unipms.dao;

import java.util.List;

import com.uni.unipms.model.In.PJ020101IVO;
import com.uni.unipms.model.In.PJ020102IVO;
import com.uni.unipms.model.In.PJ020103IVO;
import com.uni.unipms.model.Out.PJ020101OVO;

public interface PJ0201Dao {
	public List<PJ020101OVO> PJ020111(PJ020101IVO vo);
	public int PJ020121(PJ020101IVO vo);
	public int PJ020142(PJ020102IVO vo);
	public int PJ020131(PJ020103IVO vo);
}