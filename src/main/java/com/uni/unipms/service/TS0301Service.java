package com.uni.unipms.service;

import java.util.List;

import com.uni.unipms.model.In.TS030101IVO;
import com.uni.unipms.model.Out.TS030101OVO;

public interface TS0301Service {
	public List<TS030101OVO> TS030111(TS030101IVO vo);
	public TS030101OVO TS030113(TS030101IVO vo);
	public int TS030121(TS030101IVO vo);
}