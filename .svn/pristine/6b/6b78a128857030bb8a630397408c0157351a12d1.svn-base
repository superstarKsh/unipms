package com.uni.unipms.service.Impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.MG1101Dao;
import com.uni.unipms.model.In.MG110101IVO;
import com.uni.unipms.model.In.MG110102IVO;
import com.uni.unipms.model.In.MG110103IVO;
import com.uni.unipms.model.Out.MG110101OVO;
import com.uni.unipms.model.Out.MG110102OVO;
import com.uni.unipms.service.MG1101Service;

@Service
public class MG1101ServiceImpl implements MG1101Service {

	final static Logger logger = LoggerFactory.getLogger(MG1101ServiceImpl.class);
	
	@Autowired
	private MG1101Dao MG0101Dao;
	
	public MG110102OVO MG110102(MG110102IVO vo) {
		MG110102OVO result = MG0101Dao.MG110102(vo);
		return result;
	}
	
	public List<MG110101OVO> MG110111(MG110101IVO vo) {

		List<MG110101OVO> result = MG0101Dao.MG110111(vo);

		return result;
	}

	public List<MG110102OVO> MG110112(MG110102IVO vo) {
		List<MG110102OVO> result = MG0101Dao.MG110112(vo);

		return result;
	}
	
	@Transactional
	public int MG110121(MG110102IVO vo) {
		int result = 0;
		result = MG0101Dao.MG110141(vo);
		result = MG0101Dao.MG110121(vo);
		return result;
	}
	
	@Transactional
	public int MG110141(MG110102IVO vo) {
		int  result = MG0101Dao.MG110141(vo);
		return result;
	}

	@Transactional
	public int MG110122(MG110103IVO vo) {
		int result = MG0101Dao.MG110142(vo);
		
		for (MG110103IVO.MG110103IVO_SUB mg110103ivo_sub : vo.getsACTIVITY_LIST() ) {
			
			MG110102IVO mg110102ivo =  new MG110102IVO();
			
			mg110102ivo.setsDOMAIN_ID(vo.getsDOMAIN_ID());
			mg110102ivo.setsPRJT_ID(vo.getsPRJT_ID());
			mg110102ivo.setsMNG_STAGE(vo.getsMNG_STAGE());
			mg110102ivo.setsACTIVITY_ID(mg110103ivo_sub.getsACTIVITY_ID());
			mg110102ivo.setsACTIVITY_NM(mg110103ivo_sub.getsACTIVITY_NM());
			mg110102ivo.setsACTIVITY_BIT(mg110103ivo_sub.getsACTIVITY_BIT());
			mg110102ivo.setsACTIVITY_DESC(mg110103ivo_sub.getsACTIVITY_DESC());
			mg110102ivo.setsCMPL_DT(mg110103ivo_sub.getsCMPL_DT());
			mg110102ivo.setsCMPL_YN(mg110103ivo_sub.getsCMPL_YN());
			mg110102ivo.setsDEF_FILE_NM(mg110103ivo_sub.getsDEF_FILE_NM());
			mg110102ivo.setsCMPL_FILE_VER(mg110103ivo_sub.getsCMPL_FILE_VER());
			mg110102ivo.setsCMPL_FILE_NM(mg110103ivo_sub.getsCMPL_FILE_NM());

			result = MG0101Dao.MG110121(mg110102ivo);
		}	

		return result;
	}

}
