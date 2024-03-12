package com.uni.unipms.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uni.unipms.dao.MN0101Dao;
import com.uni.unipms.model.In.MN010101IVO;
import com.uni.unipms.model.Out.MN010101OVO;
import com.uni.unipms.model.Out.MN010102OVO;
import com.uni.unipms.model.Out.MN010103OVO;
import com.uni.unipms.model.Out.MN010104OVO;
import com.uni.unipms.service.MN0101Service;

@Service
public class MN0101ServiceImpl implements MN0101Service {

	@Autowired
	private MN0101Dao MN0101Dao;
	
	public List<MN010101OVO> MN010111A(MN010101IVO vo) {
		List<MN010101OVO> result = null;
		try {
			result = MN0101Dao.MN010111A(vo);
		} catch (Exception e) {
			
		}
		return result;
	}
	
	public List<MN010102OVO> MN010111B(MN010101IVO vo) {
		List<MN010102OVO> result = null;
		try {
			result = MN0101Dao.MN010111B(vo);
		} catch (Exception e) {
			
		}
		return result;
	}
	
	public List<MN010103OVO> MN010111C(MN010101IVO vo) {
		List<MN010103OVO> result = null;
		try {
			result = MN0101Dao.MN010111C(vo);
		} catch (Exception e) {
			
		}
		return result;
	}
	
	public List<MN010104OVO> MN010111D(MN010101IVO vo) {
		List<MN010104OVO> result = null;
		try {
			result = MN0101Dao.MN010111D(vo);
		} catch (Exception e) {
			
		}
		return result;
	}
	
	public List<MN010101OVO> MN010111AA(MN010101IVO vo) {
		List<MN010101OVO> result = null;
		try {
			result = MN0101Dao.MN010111AA(vo);
		} catch (Exception e) {
			
		}
		return result;
	}
	
	public List<MN010102OVO> MN010111BA(MN010101IVO vo) {
		List<MN010102OVO> result = null;
		try {
			result = MN0101Dao.MN010111BA(vo);
		} catch (Exception e) {
			
		}
		return result;
	}
	
	public List<MN010104OVO> MN010111DA(MN010101IVO vo) {
		List<MN010104OVO> result = null;
		try {
			result = MN0101Dao.MN010111DA(vo);
		} catch (Exception e) {
			
		}
		return result;
	}
}
