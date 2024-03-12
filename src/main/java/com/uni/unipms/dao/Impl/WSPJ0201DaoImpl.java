package com.uni.unipms.dao.Impl;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.WSPJ0201Dao;
import com.uni.unipms.model.In.PJ020101IVO;
import com.uni.unipms.model.Out.WSPJ020101OVO;

@Repository
public class WSPJ0201DaoImpl extends BaseDaoSupport implements WSPJ0201Dao {

	public WSPJ020101OVO WSPJ020113(PJ020101IVO vo) {
		WSPJ020101OVO result = getSqlSession().selectOne("WSPJ0201Mapper.WSPJ020113", vo);
		return result;
	}

}
