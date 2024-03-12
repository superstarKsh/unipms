package com.uni.unipms.dao;

import java.util.List;

import com.uni.unipms.model.In.TS010201IVO;
import com.uni.unipms.model.In.TS010202IVO;
import com.uni.unipms.model.Out.TS010201OVO;

public interface TS0102Dao {
	public TS010201OVO TS010202(TS010201IVO vo);
	public List<TS010201OVO> TS010212(TS010201IVO vo);
	public TS010201OVO TS010215(TS010201IVO vo);
	public int TS010221(TS010201IVO vo);
	public int TS010231(TS010201IVO vo);
	public int TS010232(TS010202IVO vo);
	public int TS010241(TS010201IVO vo);
	public int TS010242(TS010202IVO vo);
}