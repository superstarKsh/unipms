package com.uni.unipms.service;

import java.util.List;

import com.uni.unipms.model.In.AD030101IVO;
import com.uni.unipms.model.Out.AD030101OVO;

public interface AD0301Service {
	public AD030101OVO AD030102(AD030101IVO vo);
	public List<AD030101OVO> AD030111(AD030101IVO vo);
	public AD030101OVO AD030113(AD030101IVO vo);
	public int AD030121(AD030101IVO vo);
	public int AD030141(AD030101IVO vo);
}