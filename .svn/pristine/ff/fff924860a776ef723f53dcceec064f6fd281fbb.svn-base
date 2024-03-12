package com.uni.unipms.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uni.unipms.dao.MG0201Dao;
import com.uni.unipms.model.In.MG020101IVO;
import com.uni.unipms.model.In.MG020102IVO;
import com.uni.unipms.model.Out.MG020101OVO;
import com.uni.unipms.model.Out.MG020102OVO;
import com.uni.unipms.service.MG0201Service;

@Service
public class MG0201ServiceImpl implements MG0201Service {

	@Autowired
	private MG0201Dao mg0201Dao;
	
	public List<MG020101OVO> MG020111(MG020101IVO vo) {
		List<MG020101OVO> result = mg0201Dao.MG020111(vo);
		return result;
	}

	public List<MG020102OVO> MG020111A(MG020101IVO vo) {
		List<MG020102OVO> result = mg0201Dao.MG020111A(vo);
		return result;
	}

	public List<MG020102OVO> MG020111B(MG020101IVO vo) {
		List<MG020102OVO> result = mg0201Dao.MG020111B(vo);
		return result;
	}
	
	public List<MG020102OVO> MG020111C(MG020101IVO vo) {
		List<MG020102OVO> result = mg0201Dao.MG020111C(vo);
		return result;
	}

	public int MG020132(MG020102IVO vo) {
		int result = 0;
		
		for (MG020102IVO.MG020102IVO_SUB mg020101ivo_sub : vo.getsPRJT_TASK_INFO() ) {
			
			MG020101IVO mg020101ivo = new MG020101IVO();
			
			mg020101ivo.setsDOMAIN_ID(vo.getsDOMAIN_ID());
			mg020101ivo.setsPRJT_ID(vo.getsPRJT_ID());
			mg020101ivo.setsTASK_ID(mg020101ivo_sub.getsTASK_ID());
			mg020101ivo.setsPROGRESS_RT(mg020101ivo_sub.getsPROGRESS_RT());

			result = mg0201Dao.MG020131(mg020101ivo);

		}
		
		return result;
	}

}
