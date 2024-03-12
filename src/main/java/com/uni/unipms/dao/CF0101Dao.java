package com.uni.unipms.dao;

import java.util.List;

import com.uni.unipms.model.In.CF010101IVO;
import com.uni.unipms.model.Out.CF010101OVO;

public interface CF0101Dao {
	public List<CF010101OVO> CF010111(CF010101IVO vo);
	public CF010101OVO CF010113(CF010101IVO vo);
	public int CF010121(CF010101IVO vo);
	public int CF010141(CF010101IVO vo);
	public CF010101OVO CF010181A(CF010101IVO vo);
	public List<CF010101OVO> CF010181B(CF010101IVO vo);
	public List<CF010101OVO> CF010181C(CF010101IVO vo);
	public List<CF010101OVO> CF010182(CF010101IVO vo);
}