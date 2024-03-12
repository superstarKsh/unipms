package com.uni.unipms.service;

import com.uni.unipms.model.In.CM010101IVO;
import com.uni.unipms.model.Out.CM010101OVO;

public interface CM0101Service {
	public int CM010101(CM010101IVO vo);
	public int CM010102(CM010101IVO vo);
	public CM010101OVO CM010115(CM010101IVO vo);
	public int CM010121(CM010101IVO vo);
	public int CM010131(CM010101IVO vo);
	public int CM010141(CM010101IVO vo);
}