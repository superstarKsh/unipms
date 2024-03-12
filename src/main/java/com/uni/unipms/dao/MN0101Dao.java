package com.uni.unipms.dao;

import java.util.List;

import com.uni.unipms.model.In.MN010101IVO;
import com.uni.unipms.model.Out.MN010101OVO;
import com.uni.unipms.model.Out.MN010102OVO;
import com.uni.unipms.model.Out.MN010103OVO;
import com.uni.unipms.model.Out.MN010104OVO;

public interface MN0101Dao {
	public List<MN010101OVO> MN010111A(MN010101IVO vo);
	public List<MN010102OVO> MN010111B(MN010101IVO vo);
	public List<MN010103OVO> MN010111C(MN010101IVO vo);
	public List<MN010104OVO> MN010111D(MN010101IVO vo);
	public List<MN010101OVO> MN010111AA(MN010101IVO vo);
	public List<MN010102OVO> MN010111BA(MN010101IVO vo);
	public List<MN010104OVO> MN010111DA(MN010101IVO vo);
}