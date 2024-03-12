package com.uni.unipms.service.Impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.MG1301Dao;
import com.uni.unipms.model.In.MG130101IVO;
import com.uni.unipms.model.Out.MG130101OVO;
import com.uni.unipms.service.MG1301Service;

@Service
public class MG1301ServiceImpl implements MG1301Service {

	@Autowired
	private MG1301Dao mg1301Dao;
	final static Logger logger = LoggerFactory.getLogger(MG1101ServiceImpl.class);
	
	public MG130101OVO MG130102(MG130101IVO vo) {
		MG130101OVO result = mg1301Dao.MG130102(vo);
		return result;
	}
	
	public List<MG130101OVO> MG130111(MG130101IVO vo) {
		List<MG130101OVO> result = mg1301Dao.MG130111(vo);
		return result;
	}

	public List<MG130101OVO> MG130112(MG130101IVO vo) {
		List<MG130101OVO> result = mg1301Dao.MG130112(vo);
		return result;
	}

	@Transactional
	public int MG130121(MG130101IVO vo) {
		int result = 0;
		
		if (vo.getsCMPL_YN() == "")
			vo.setsCMPL_YN("N");
		
		if(vo.getsQTYPE().equals("ACT")){
			result = mg1301Dao.MG130131(vo);
		}else if(vo.getsQTYPE().equals("TSK")){
			result = mg1301Dao.MG130133(vo);
		}
	
		result = mg1301Dao.MG130141(vo);
		result = mg1301Dao.MG130121(vo);
		
		return result;
	}
	
}
