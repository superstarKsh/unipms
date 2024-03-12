package com.uni.unipms.dao;

import java.util.List;

import com.uni.unipms.model.In.DV030101IVO;
import com.uni.unipms.model.Out.DV030101OVO;

public interface DV0301Dao {
	public DV030101OVO DV030102(DV030101IVO vo);
	public List<DV030101OVO> DV030111(DV030101IVO vo);
	public int DV030121(DV030101IVO vo);
	public int DV030132(DV030101IVO vo);
	public int DV030141(DV030101IVO vo);
	public int DV030142(DV030101IVO vo);
}