package com.uni.unipms.dao;

import java.util.List;

import com.uni.unipms.model.In.DV040101IVO;
import com.uni.unipms.model.Out.DV040101OVO;
import com.uni.unipms.model.Out.DV040102OVO;
import com.uni.unipms.model.Out.DV040103OVO;

public interface DV0401Dao {
	public List<DV040101OVO> DV040111(DV040101IVO vo);
	public List<DV040102OVO> DV040115(DV040101IVO vo);
	public int DV040131(DV040101IVO vo);
	public List<DV040103OVO> DV040154(DV040101IVO vo);
}