package com.uni.unipms.dao;

import java.util.List;

import com.uni.unipms.model.In.CF030101IVO;
import com.uni.unipms.model.Out.CF030101OVO;

public interface CF0301Dao {
	public CF030101OVO CF030102(CF030101IVO vo);
	public int CF030121(CF030101IVO vo);
	public int CF030141(CF030101IVO vo);
	public CF030101OVO CF030113(CF030101IVO vo);
	public List<CF030101OVO> CF030111(CF030101IVO vo);
}