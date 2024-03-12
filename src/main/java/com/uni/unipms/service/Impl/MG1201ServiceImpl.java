package com.uni.unipms.service.Impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.MG1201Dao;
import com.uni.unipms.model.In.MG120101IVO;
import com.uni.unipms.model.In.MG120102IVO;
import com.uni.unipms.model.Out.MG120101OVO;
import com.uni.unipms.model.Out.MG120102OVO;
import com.uni.unipms.service.MG1201Service;

@Service
public class MG1201ServiceImpl implements MG1201Service {

	@Autowired
	private MG1201Dao MG1201Dao;
	final static Logger logger = LoggerFactory.getLogger(MG1201ServiceImpl.class);
	
	public MG120102OVO MG120102(MG120101IVO vo) {
		MG120102OVO result = MG1201Dao.MG120102(vo);
		return result;
	}
	
	public List<MG120101OVO> MG120111(MG120101IVO vo) {
		List<MG120101OVO> result = MG1201Dao.MG120111(vo);
		return result;
	}

	public List<MG120102OVO> MG120112(MG120101IVO vo) {
		List<MG120102OVO> result = MG1201Dao.MG120112(vo);
		return result;
	}

	@Transactional
	public int MG120121(MG120101IVO vo) {
		int result = 0;
		result = MG1201Dao.MG120141(vo);
		result = MG1201Dao.MG120121(vo);
		
		return result;
	}

	@Transactional
	public int MG120141(MG120101IVO vo) {
		int result = MG1201Dao.MG120141(vo);
		return result;
	}

	@Transactional
	public int MG120122(MG120102IVO vo) {
		int result = MG1201Dao.MG120142(vo);

		for (MG120102IVO.MG120102IVO_SUB mg120102ivo_sub : vo.getsTASK_LIST() ) {
			MG120101IVO mg120101ivo = new MG120101IVO();
			
			mg120101ivo.setsDOMAIN_ID(vo.getsDOMAIN_ID());
			mg120101ivo.setsPRJT_ID(vo.getsPRJT_ID());
			mg120101ivo.setsMNG_STAGE(vo.getsMNG_STAGE());
			mg120101ivo.setsACTIVITY_ID(vo.getsACTIVITY_ID());
			mg120101ivo.setsTASK_ID(mg120102ivo_sub.getsTASK_ID());
			mg120101ivo.setsTASK_NM(mg120102ivo_sub.getsTASK_NM());
			mg120101ivo.setsTASK_BIT(mg120102ivo_sub.getsTASK_BIT());
			mg120101ivo.setsTASK_DESC(mg120102ivo_sub.getsTASK_DESC());
			mg120101ivo.setsCMPL_DT(mg120102ivo_sub.getsCMPL_DT());
			mg120101ivo.setsCMPL_YN(mg120102ivo_sub.getsCMPL_YN());
			mg120101ivo.setsDEF_FILE_NM(mg120102ivo_sub.getsDEF_FILE_NM());
			mg120101ivo.setsCMPL_FILE_NM(mg120102ivo_sub.getsCMPL_FILE_NM());
			mg120101ivo.setsCMPL_FILE_VER(mg120102ivo_sub.getsCMPL_FILE_VER());
			
			result = MG1201Dao.MG120121(mg120101ivo);
		}

		return result;
	}
}
