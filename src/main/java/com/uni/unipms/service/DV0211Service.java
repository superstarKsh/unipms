package com.uni.unipms.service;

import java.util.List;

import com.uni.unipms.model.In.CM004101IVO;
import com.uni.unipms.model.In.DV021101IVO;
import com.uni.unipms.model.Out.DV021101OVO;

public interface DV0211Service {
	public List<DV021101OVO> DV021111(DV021101IVO vo);
	public int DV021122(DV021101IVO vo);
	public List<DV021101OVO> DV021152(CM004101IVO vo);
}