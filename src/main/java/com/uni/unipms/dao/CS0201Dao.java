package com.uni.unipms.dao;

import java.util.List;

import com.uni.unipms.model.In.CS020101IVO;
import com.uni.unipms.model.Out.CS020101OVO;

public interface CS0201Dao {
	public List<CS020101OVO> CS020111(CS020101IVO vo);
	public List<CS020101OVO> CS020121(CS020101IVO vo);
	public List<CS020101OVO> CS020141(CS020101IVO vo);
}