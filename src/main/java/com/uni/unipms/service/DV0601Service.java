package com.uni.unipms.service;

import java.util.List;

import com.uni.unipms.model.In.DV060101IVO;
import com.uni.unipms.model.Out.DV060101OVO;
import com.uni.unipms.model.Out.DV060102OVO;

public interface DV0601Service {
	public DV060102OVO DV060102(DV060101IVO vo);
	public List<DV060101OVO> DV060111(DV060101IVO vo);
	public List<DV060102OVO> DV060112(DV060101IVO vo);
	public DV060102OVO DV060113(DV060101IVO vo);
	public int DV060121(DV060101IVO vo);
	public int DV060121A(DV060101IVO vo);
}