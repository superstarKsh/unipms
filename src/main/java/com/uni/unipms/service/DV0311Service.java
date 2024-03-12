package com.uni.unipms.service;

import java.util.List;

import com.uni.unipms.model.In.CM004101IVO;
import com.uni.unipms.model.In.DV031101IVO;
import com.uni.unipms.model.Out.DV031101OVO;

public interface DV0311Service {
	public List<DV031101OVO> DV031154(DV031101IVO vo);
	public List<DV031101OVO> DV031154A(DV031101IVO vo);
	public List<DV031101OVO> DV031152(CM004101IVO vo);
}