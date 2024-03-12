package com.uni.unipms.dao;

import java.util.List;

import com.uni.unipms.model.In.MG010101IVO;
import com.uni.unipms.model.In.MG010102IVO;
import com.uni.unipms.model.Out.MG010101OVO;

public interface MG0101Dao {
	public MG010101OVO MG010102(MG010101IVO vo);
	public List<MG010101OVO> MG010111(MG010101IVO vo);
	public int MG010121(MG010101IVO vo);
	public int MG010141(MG010101IVO vo);
	public int MG010142(MG010102IVO vo);
	public int MG010132(MG010102IVO vo);
	public List<MG010101OVO> MG010115(MG010101IVO vo);
	public List<MG010101OVO> MG010115A(MG010101IVO vo);
	public int MG010131(MG010101IVO vo);
	public int MG010132A(MG010101IVO vo);
}