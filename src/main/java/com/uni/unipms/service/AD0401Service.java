package com.uni.unipms.service;

import java.util.List;

import com.uni.unipms.model.In.AD040101IVO;
import com.uni.unipms.model.In.AD040102IVO;
import com.uni.unipms.model.Out.AD040101OVO;

public interface AD0401Service {
	public AD040101OVO AD040102(AD040101IVO vo);
	public List<AD040101OVO> AD040111(AD040101IVO vo);
	public int AD040121(AD040101IVO vo);
	public int AD040122(AD040102IVO vo);
	public int AD040141(AD040101IVO vo);
}