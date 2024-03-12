package com.uni.unipms.service;

import java.util.List;

import com.uni.unipms.model.In.TS010101IVO;
import com.uni.unipms.model.In.TS010102IVO;
import com.uni.unipms.model.Out.TS010101OVO;

public interface TS0101Service {
	public TS010101OVO TS010102(TS010101IVO vo);
	public List<TS010101OVO> TS010111(TS010101IVO vo);
	public int TS010121(TS010101IVO vo);
	public int TS010122(TS010102IVO vo);
	public int TS010141(TS010101IVO vo);
}