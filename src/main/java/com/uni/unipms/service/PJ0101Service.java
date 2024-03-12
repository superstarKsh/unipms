package com.uni.unipms.service;

import java.util.List;

import com.uni.unipms.model.In.PJ010101IVO;
import com.uni.unipms.model.In.PJ010111IVO;
import com.uni.unipms.model.In.PJ010112IVO;
import com.uni.unipms.model.In.PJ010121IVO;
import com.uni.unipms.model.In.PJ010122IVO;
import com.uni.unipms.model.Out.PJ010111OVO;
import com.uni.unipms.model.Out.PJ010121OVO;

public interface PJ0101Service {
	public List<PJ010111OVO> PJ010111A(PJ010111IVO vo) ;
	public int PJ010122A(PJ010112IVO vo);
	public List<PJ010121OVO> PJ010111B(PJ010121IVO vo);
	public int PJ010122B(PJ010122IVO vo);
	public int PJ010132(PJ010101IVO vo);
}