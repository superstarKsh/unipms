package com.uni.unipms.service.Impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.DV0201Dao;
import com.uni.unipms.model.In.DV020101IVO;
import com.uni.unipms.model.In.DV020102IVO;
import com.uni.unipms.model.In.DV020103IVO;
import com.uni.unipms.model.In.DV020104IVO;
import com.uni.unipms.model.In.DV020105IVO;
import com.uni.unipms.model.In.DV020106IVO;
import com.uni.unipms.model.Out.DV020101OVO;
import com.uni.unipms.service.DV0201Service;

@Service
public class DV0201ServiceImpl implements DV0201Service {

	final static Logger logger = LoggerFactory.getLogger(DV0201ServiceImpl.class);
	
	@Autowired
	private DV0201Dao dv0201Dao;
	
	public DV020101OVO DV020102(DV020101IVO vo) {
		DV020101OVO result = dv0201Dao.DV020102(vo);
		return result;
	}
	
	public List<DV020101OVO> DV020111(DV020101IVO vo) {
		List<DV020101OVO> result = dv0201Dao.DV020111(vo);
		return result;
	}
	
	@Transactional
	public int DV020121(DV020101IVO vo) {
		
		int result = dv0201Dao.DV020141(vo);
		result =  dv0201Dao.DV020121(vo);

		return result;
	}

	@Transactional
	public int DV020122(DV020102IVO vo) {
		
		int result = dv0201Dao.DV020142(vo);
		
		for (DV020102IVO.DV020102IVO_SUB dv020102ivo_sub : vo.getsPRJT_TASK_INFO() ) {
			
			DV020101IVO DV020101ivo = new DV020101IVO();
			 
			DV020101ivo.setsPRJT_ID(vo.getsPRJT_ID());
			DV020101ivo.setsPRJT_STAGE(vo.getsPRJT_STAGE());
			DV020101ivo.setsTASK_ID(dv020102ivo_sub.getsTASK_ID());
			DV020101ivo.setsTASK_NM(dv020102ivo_sub.getsTASK_NM());
			DV020101ivo.setsTASK_DESC(dv020102ivo_sub.getsTASK_DESC());
			DV020101ivo.setsSTRT_DT(dv020102ivo_sub.getsSTRT_DT());
			DV020101ivo.setsEND_DT(dv020102ivo_sub.getsEND_DT());
			DV020101ivo.setsCORP_MNG_ID(dv020102ivo_sub.getsCORP_MNG_ID());
			DV020101ivo.setsCORP_MNG_NM(dv020102ivo_sub.getsCORP_MNG_NM());
			DV020101ivo.setsDEF_YN(dv020102ivo_sub.getsDEF_YN());

			result = dv0201Dao.DV020121(DV020101ivo);
		}
		
		return result;
	}
	
	@Transactional
	public int DV020141(DV020101IVO vo) {
		int result = dv0201Dao.DV020141(vo);
		return result;
	}
	
	public DV020101OVO DV020102A(DV020103IVO vo) {
		DV020101OVO result = dv0201Dao.DV020102A(vo);
		return result;
	}
	
	public List<DV020101OVO> DV020111A(DV020103IVO vo) {
		List<DV020101OVO> result = dv0201Dao.DV020111A(vo);
		return result;
	}
	
	@Transactional
	public int DV020121A(DV020103IVO vo) {
		
		int result = dv0201Dao.DV020141A(vo);
		result =  dv0201Dao.DV020121A(vo);

		return result;
	}

	@Transactional
	public int DV020122A(DV020104IVO vo) {
		
		int result = dv0201Dao.DV020142A(vo);

		for (DV020104IVO.DV020104IVO_SUB dv020104ivo_sub : vo.getsPRJT_TASK_SEG_INFO() ) {
			
			DV020103IVO DV020103ivo = new DV020103IVO();
			 
			DV020103ivo.setsPRJT_ID(vo.getsPRJT_ID());
			DV020103ivo.setsPRJT_STAGE(vo.getsPRJT_STAGE());
			DV020103ivo.setsTASK_ID(vo.getsTASK_ID());
			DV020103ivo.setsSEG_ID(dv020104ivo_sub.getsSEG_ID());
			DV020103ivo.setsSEG_NM(dv020104ivo_sub.getsSEG_NM());
			DV020103ivo.setsSEG_DESC(dv020104ivo_sub.getsSEG_DESC());
			DV020103ivo.setsSTRT_DT(dv020104ivo_sub.getsSTRT_DT());
			DV020103ivo.setsEND_DT(dv020104ivo_sub.getsEND_DT());
			DV020103ivo.setsCORP_MNG_ID(dv020104ivo_sub.getsCORP_MNG_ID());
			DV020103ivo.setsCORP_MNG_NM(dv020104ivo_sub.getsCORP_MNG_NM());
			DV020103ivo.setsDEF_YN(dv020104ivo_sub.getsDEF_YN());

			result = dv0201Dao.DV020121A(DV020103ivo);
		}
		
		return result;
	}

	@Transactional
	public int DV020141A(DV020103IVO vo) {
		int result = dv0201Dao.DV020141A(vo);
		return result;
	}
	
	public DV020101OVO DV020102B(DV020105IVO vo) {
		DV020101OVO result = dv0201Dao.DV020102B(vo);
		return result;
	}
	
	public List<DV020101OVO> DV020111B(DV020105IVO vo) {
		List<DV020101OVO> result = dv0201Dao.DV020111B(vo);
		return result;
	}
	
	@Transactional
	public int DV020121B(DV020105IVO vo) {
		
		int result = dv0201Dao.DV020141B(vo);
		result =  dv0201Dao.DV020121B(vo);

		return result;
	}

	@Transactional
	public int DV020122B(DV020106IVO vo) {
		
		int result = dv0201Dao.DV020142B(vo);
		
		for (DV020106IVO.DV020106IVO_SUB dv020106ivo_sub : vo.getsPRJT_TASK_SEG_SUB_INFO() ) {
			
			DV020105IVO DV020105ivo = new DV020105IVO();
			 
			DV020105ivo.setsPRJT_ID(vo.getsPRJT_ID());
			DV020105ivo.setsPRJT_STAGE(vo.getsPRJT_STAGE());
			DV020105ivo.setsTASK_ID(vo.getsTASK_ID());
			DV020105ivo.setsSEG_ID(vo.getsSEG_ID());
			DV020105ivo.setsSEG_SUB_ID(dv020106ivo_sub.getsSEG_SUB_ID());
			DV020105ivo.setsSEG_SUB_NM(dv020106ivo_sub.getsSEG_SUB_NM());
			DV020105ivo.setsSEG_SUB_DESC(dv020106ivo_sub.getsSEG_SUB_DESC());
			DV020105ivo.setsSTRT_DT(dv020106ivo_sub.getsSTRT_DT());
			DV020105ivo.setsEND_DT(dv020106ivo_sub.getsEND_DT());
			DV020105ivo.setsCORP_MNG_ID(dv020106ivo_sub.getsCORP_MNG_ID());
			DV020105ivo.setsCORP_MNG_NM(dv020106ivo_sub.getsCORP_MNG_NM());
			DV020105ivo.setsDEF_YN(dv020106ivo_sub.getsDEF_YN());

			result = dv0201Dao.DV020121B(DV020105ivo);
		}
		
		return result;
	}

	@Transactional
	public int DV020141B(DV020105IVO vo) {
		int result = dv0201Dao.DV020141B(vo);
		return result;
	}

}
