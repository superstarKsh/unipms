package com.uni.unipms.dao;

import java.util.List;

import com.uni.unipms.model.In.AD050101IVO;
import com.uni.unipms.model.In.AD050102IVO;
import com.uni.unipms.model.Out.AD050101OVO;

public interface AD0501Dao {

	public List<AD050101OVO> AD050111(AD050101IVO vo);
	public List<AD050101OVO> AD050112(AD050101IVO vo);
	public int AD050121(AD050101IVO vo);
	public int AD050141(AD050101IVO vo);
	public int AD050142(AD050102IVO vo);
	
}