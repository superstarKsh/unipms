package com.uni.unipms.service;

import java.util.List;

import com.uni.unipms.model.In.NT030101IVO;
import com.uni.unipms.model.Out.NT030101OVO;

public interface NT0301Service {
	public List<NT030101OVO> NT030111(NT030101IVO vo);
	public NT030101OVO NT030113(NT030101IVO vo);
	public int NT030121(NT030101IVO vo);
	public int NT030141(NT030101IVO vo);
}