package com.uni.unipms.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.AD0201Dao;
import com.uni.unipms.model.In.AD020101IVO;
import com.uni.unipms.model.In.AD020111IVO;
import com.uni.unipms.model.In.AD020112IVO;
import com.uni.unipms.model.In.AD020121IVO;
import com.uni.unipms.model.In.AD020122IVO;
import com.uni.unipms.model.In.AD020131IVO;
import com.uni.unipms.model.In.AD020132IVO;
import com.uni.unipms.model.In.AD020141IVO;
import com.uni.unipms.model.In.AD020142IVO;
import com.uni.unipms.model.In.AD020151IVO;
import com.uni.unipms.model.In.AD020152IVO;
import com.uni.unipms.model.Out.AD020101OVO;
import com.uni.unipms.model.Out.AD020111OVO;
import com.uni.unipms.model.Out.AD020121OVO;
import com.uni.unipms.model.Out.AD020131OVO;
import com.uni.unipms.model.Out.AD020141OVO;
import com.uni.unipms.model.Out.AD020151OVO;
import com.uni.unipms.service.AD0201Service;

@Service
public class AD0201ServiceImpl implements AD0201Service {

	@Autowired
	private AD0201Dao ad0201Dao;
	
	public List<AD020101OVO> AD020111(AD020101IVO vo) {
		List<AD020101OVO> result = ad0201Dao.AD020111(vo);
		return result;
	}
	
	public AD020101OVO AD020113(AD020101IVO vo) {
		AD020101OVO result = ad0201Dao.AD020113(vo);
		return result;
	}
	
	public AD020101OVO AD020115(AD020101IVO vo) {
		AD020101OVO result = ad0201Dao.AD020115(vo);
		return result;
	}
	
	@Transactional
	public int AD020121(AD020101IVO vo) {
		int result = ad0201Dao.AD020141(vo);
		result = ad0201Dao.AD020121(vo);
		return result;
	}
	
	@Transactional
	public int AD020141(AD020101IVO vo) {
		int result = ad0201Dao.AD020141(vo);
		return result;
	}

	public List<AD020111OVO> AD020111A(AD020111IVO vo) {
		List<AD020111OVO> result = ad0201Dao.AD020111A(vo);
		return result;
	}
	
	@Transactional
	public int AD020122A(AD020112IVO vo) {
		
		int result = ad0201Dao.AD020142A(vo);
		
		for (AD020112IVO.AD020112IVO_SUB ad020112ivo_sub : vo.getsACADEMIC_INFO() ) {
			
			AD020111IVO  ad020111ivo = new AD020111IVO();
			
			ad020111ivo.setsDOMAIN_ID(vo.getsDOMAIN_ID());
			ad020111ivo.setsUSER_ID(vo.getsUSER_ID());

			if (ad020112ivo_sub.getsSEQ_NO() == null || "".equals(ad020112ivo_sub.getsSEQ_NO())) {
				
				AD020111OVO  ad020111ovo = new AD020111OVO();
				ad020111ovo = ad0201Dao.AD020102A(vo);
				
				ad020111ivo.setsSEQ_NO(ad020111ovo.getsSEQ_NO());

			} else {
				ad020111ivo.setsSEQ_NO(ad020112ivo_sub.getsSEQ_NO());
			}
			
			ad020111ivo.setsSCHL_NM(ad020112ivo_sub.getsSCHL_NM());
			ad020111ivo.setsSCHL_DEPT(ad020112ivo_sub.getsSCHL_DEPT());
			ad020111ivo.setsGRAD_YYYYMM(ad020112ivo_sub.getsGRAD_YYYYMM());
			
			result = ad0201Dao.AD020121A(ad020111ivo);
		}
		
		return result;
	}
	
	public List<AD020121OVO> AD020111B(AD020121IVO vo) {
		List<AD020121OVO> result = ad0201Dao.AD020111B(vo);
		return result;
	}
	
	@Transactional
	public int AD020122B(AD020122IVO vo) {

		int result = ad0201Dao.AD020142B(vo);
		
		for (AD020122IVO.AD020122IVO_SUB ad020122ivo_sub : vo.getsCERTIFCT_INFO()) {
			
			AD020121IVO  ad020121ivo = new AD020121IVO();
			
			ad020121ivo.setsDOMAIN_ID(vo.getsDOMAIN_ID());
			ad020121ivo.setsUSER_ID(vo.getsUSER_ID());

			if (ad020122ivo_sub.getsSEQ_NO() == null || "".equals(ad020122ivo_sub.getsSEQ_NO())) {
				
				AD020121OVO  ad020121ovo = new AD020121OVO();
				ad020121ovo = ad0201Dao.AD020102B(vo);
				
				ad020121ivo.setsSEQ_NO(ad020121ovo.getsSEQ_NO());

			} else {
				ad020121ivo.setsSEQ_NO(ad020122ivo_sub.getsSEQ_NO());
			}
			
			ad020121ivo.setsCERTIFCT_NM(ad020122ivo_sub.getsCERTIFCT_NM());
			ad020121ivo.setsACQ_YYYYMM(ad020122ivo_sub.getsACQ_YYYYMM());
			ad020121ivo.setsPUB_ORG_NM(ad020122ivo_sub.getsPUB_ORG_NM());
			
			result = ad0201Dao.AD020121B(ad020121ivo);
		}

		return result;
	}
	
	public List<AD020131OVO> AD020111C(AD020131IVO vo) {
		List<AD020131OVO> result = ad0201Dao.AD020111C(vo);
		return result;
	}
	
	@Transactional
	public int AD020122C(AD020132IVO vo) {

		int result = ad0201Dao.AD020142C(vo);
		
		for (AD020132IVO.AD020132IVO_SUB ad020132ivo_sub : vo.getsEDUT_INFO()) {
			
			AD020131IVO  ad020131ivo = new AD020131IVO();
			
			ad020131ivo.setsDOMAIN_ID(vo.getsDOMAIN_ID());
			ad020131ivo.setsUSER_ID(vo.getsUSER_ID());

			if (ad020132ivo_sub.getsSEQ_NO() == null || "".equals(ad020132ivo_sub.getsSEQ_NO())) {
				
				AD020131OVO  ad020131ovo = new AD020131OVO();
				ad020131ovo = ad0201Dao.AD020102C(vo);
				
				ad020131ivo.setsSEQ_NO(ad020131ovo.getsSEQ_NO());

			} else {
				ad020131ivo.setsSEQ_NO(ad020132ivo_sub.getsSEQ_NO());
			}
			
			ad020131ivo.setsEDUT_NM(ad020132ivo_sub.getsEDUT_NM());
			ad020131ivo.setsEDUT_STRT_DT(ad020132ivo_sub.getsEDUT_STRT_DT());
			ad020131ivo.setsEDUT_END_DT(ad020132ivo_sub.getsEDUT_END_DT());
			ad020131ivo.setsEDUT_ORG_NM(ad020132ivo_sub.getsEDUT_ORG_NM());
			
			result = ad0201Dao.AD020121C(ad020131ivo);
		}

		return result;
	}
	
	public List<AD020141OVO> AD020111D(AD020141IVO vo) {
		List<AD020141OVO> result = ad0201Dao.AD020111D(vo);
		return result;
	}
	
	@Transactional
	public int AD020122D(AD020142IVO vo) {

		int result = ad0201Dao.AD020142D(vo);
		
		for (AD020142IVO.AD020142IVO_SUB ad020142ivo_sub : vo.getsCARR_INFO()) {
			
			AD020141IVO  ad020141ivo = new AD020141IVO();
			
			ad020141ivo.setsDOMAIN_ID(vo.getsDOMAIN_ID());
			ad020141ivo.setsUSER_ID(vo.getsUSER_ID());

			if (ad020142ivo_sub.getsSEQ_NO() == null || "".equals(ad020142ivo_sub.getsSEQ_NO())) {
				
				AD020141OVO  ad020141ovo = new AD020141OVO();
				ad020141ovo = ad0201Dao.AD020102D(vo);
				
				ad020141ivo.setsSEQ_NO(ad020141ovo.getsSEQ_NO());

			} else {
				ad020141ivo.setsSEQ_NO(ad020142ivo_sub.getsSEQ_NO());
			}
			
			ad020141ivo.setsCORP_NM(ad020142ivo_sub.getsCORP_NM());
			ad020141ivo.setsCORP_JOIN_DT(ad020142ivo_sub.getsCORP_JOIN_DT());
			ad020141ivo.setsCORP_RTRE_DT(ad020142ivo_sub.getsCORP_RTRE_DT());
			ad020141ivo.setsLAST_PSTN(ad020142ivo_sub.getsLAST_PSTN());
			ad020141ivo.setsASSGN_BIZ(ad020142ivo_sub.getsASSGN_BIZ());
			
			result = ad0201Dao.AD020121D(ad020141ivo);
		}

		return result;
	}
	
	public AD020151OVO AD020102E(AD020152IVO vo) {
		AD020151OVO result = ad0201Dao.AD020102E(vo);
		return result;
	}
	
	public List<AD020151OVO> AD020111E(AD020151IVO vo) {
		List<AD020151OVO> result = ad0201Dao.AD020111E(vo);
		return result;
	}
	
	@Transactional
	public int AD020122E(AD020152IVO vo) {

		int result = ad0201Dao.AD020142E(vo);
		
		for (AD020152IVO.AD020152IVO_SUB ad020152ivo_sub : vo.getsPRJT_CARR_INFO()) {
			
			AD020151IVO  ad020151ivo = new AD020151IVO();
			
			ad020151ivo.setsDOMAIN_ID(vo.getsDOMAIN_ID());
			ad020151ivo.setsUSER_ID(vo.getsUSER_ID());

			if (ad020152ivo_sub.getsSEQ_NO() == null || "".equals(ad020152ivo_sub.getsSEQ_NO())) {
				
				AD020151OVO  ad020151ovo = new AD020151OVO();
				ad020151ovo = ad0201Dao.AD020102E(vo);
				
				ad020151ivo.setsSEQ_NO(ad020151ovo.getsSEQ_NO());

			} else {
				ad020151ivo.setsSEQ_NO(ad020152ivo_sub.getsSEQ_NO());
			}
			
			ad020151ivo.setsPRJT_NM(ad020152ivo_sub.getsPRJT_NM());
			ad020151ivo.setsSTRT_YYYYMM(ad020152ivo_sub.getsSTRT_YYYYMM());
			ad020151ivo.setsEND_YYYYMM(ad020152ivo_sub.getsEND_YYYYMM());
			ad020151ivo.setsORDER_ORG_NM(ad020152ivo_sub.getsORDER_ORG_NM());
			ad020151ivo.setsEXEC_ORG_NM(ad020152ivo_sub.getsEXEC_ORG_NM());
			ad020151ivo.setsPRJT_PSTN(ad020152ivo_sub.getsPRJT_PSTN());
			ad020151ivo.setsASSGN_BIZ(ad020152ivo_sub.getsASSGN_BIZ());
			ad020151ivo.setsSERVER(ad020152ivo_sub.getsSERVER());
			ad020151ivo.setsOS(ad020152ivo_sub.getsOS());
			ad020151ivo.setsPRG_LANG(ad020152ivo_sub.getsPRG_LANG());
			ad020151ivo.setsDBMS(ad020152ivo_sub.getsDBMS());
			ad020151ivo.setsETC_INFO(ad020152ivo_sub.getsETC_INFO());
			
			result = ad0201Dao.AD020121E(ad020151ivo);
		}

		return result;
	}
	
	@Transactional
	public int AD020121E(AD020151IVO vo) {

		int result = ad0201Dao.AD020141E(vo);
		
		if (vo.getsSEQ_NO() == null || "".equals(vo.getsSEQ_NO())) {
			
			AD020152IVO ad020152ivo = new AD020152IVO();
			ad020152ivo.setsDOMAIN_ID(vo.getsDOMAIN_ID());
			ad020152ivo.setsUSER_ID(vo.getsUSER_ID());
			
			AD020151OVO  ad020151ovo = new AD020151OVO();			
			ad020151ovo = ad0201Dao.AD020102E(ad020152ivo);
			
			vo.setsSEQ_NO(ad020151ovo.getsSEQ_NO());

		}
		
		result = ad0201Dao.AD020121E(vo);

		return result;
	}
	
	@Transactional
	public int AD020141E(AD020151IVO vo) {
		int result = ad0201Dao.AD020141E(vo);
		return result;
	}

}
