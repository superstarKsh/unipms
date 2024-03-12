package com.uni.unipms.service;

import java.util.List;

import com.uni.unipms.model.In.DV020101IVO;
import com.uni.unipms.model.In.DV020102IVO;
import com.uni.unipms.model.In.DV020103IVO;
import com.uni.unipms.model.In.DV020104IVO;
import com.uni.unipms.model.In.DV020105IVO;
import com.uni.unipms.model.In.DV020106IVO;
import com.uni.unipms.model.Out.DV020101OVO;

public interface DV0201Service {
	public DV020101OVO DV020102(DV020101IVO vo);
	public List<DV020101OVO> DV020111(DV020101IVO vo);
	public int DV020121(DV020101IVO vo);
	public int DV020122(DV020102IVO vo);
	public int DV020141(DV020101IVO vo);
	public DV020101OVO DV020102A(DV020103IVO vo);
	public List<DV020101OVO> DV020111A(DV020103IVO vo);
	public int DV020121A(DV020103IVO vo);
	public int DV020122A(DV020104IVO vo);
	public int DV020141A(DV020103IVO vo);
	public DV020101OVO DV020102B(DV020105IVO vo);
	public List<DV020101OVO> DV020111B(DV020105IVO vo);
	public int DV020121B(DV020105IVO vo);
	public int DV020122B(DV020106IVO vo);
	public int DV020141B(DV020105IVO vo);
}