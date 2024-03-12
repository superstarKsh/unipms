package com.uni.unipms.dao;

import java.util.List;

import com.uni.unipms.model.In.MG130101IVO;
import com.uni.unipms.model.Out.MG130101OVO;

public interface MG1301Dao {
	public MG130101OVO MG130102(MG130101IVO vo);
	public List<MG130101OVO> MG130111(MG130101IVO vo);
	public List<MG130101OVO> MG130112(MG130101IVO vo);
	public int MG130121(MG130101IVO vo);
	public int MG130141(MG130101IVO vo);
	public int MG130131(MG130101IVO vo);
	public int MG130133(MG130101IVO vo);
}