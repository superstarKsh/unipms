package com.uni.unipms.service;

import java.util.List;

import com.uni.unipms.model.In.CM004101IVO;
import com.uni.unipms.model.In.DV030101IVO;
import com.uni.unipms.model.In.DV030102IVO;
import com.uni.unipms.model.Out.DV030101OVO;

public interface DV0301Service {
	public DV030101OVO DV030102(DV030101IVO vo);
	public List<DV030101OVO> DV030111(DV030101IVO vo);
	public int DV030121(DV030101IVO vo);
	public int DV030122(DV030102IVO vo);
	public int DV030141(DV030101IVO vo);
	public List<DV030101OVO> DV030152(CM004101IVO vo);
}