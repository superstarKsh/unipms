package com.uni.unipms.dao;

import java.util.List;

import com.uni.unipms.model.In.DV021101IVO;
import com.uni.unipms.model.Out.DV021101OVO;

public interface DV0211Dao {
	public List<DV021101OVO> DV021111(DV021101IVO vo);
	public int DV021142(DV021101IVO vo);
	public int DV021142A(DV021101IVO vo);
	public int DV021142B(DV021101IVO vo);
	public int DV021131(DV021101IVO vo);
	public int DV021131A(DV021101IVO vo);
	public int DV021131B(DV021101IVO vo);
}