package com.uni.unipms.service;

import java.util.List;

import com.uni.unipms.model.In.MG020101IVO;
import com.uni.unipms.model.In.MG020102IVO;
import com.uni.unipms.model.Out.MG020101OVO;
import com.uni.unipms.model.Out.MG020102OVO;

public interface MG0201Service {
	public List<MG020101OVO> MG020111(MG020101IVO vo);
	public List<MG020102OVO> MG020111A(MG020101IVO vo);
	public List<MG020102OVO> MG020111B(MG020101IVO vo);
	public List<MG020102OVO> MG020111C(MG020101IVO vo);
	public int MG020132(MG020102IVO vo);
}