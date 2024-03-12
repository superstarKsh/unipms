package com.uni.unipms.common.DaoSupport;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

public class BaseDaoSupport {
	
	@Autowired
	protected SqlSessionDaoSupport sqlSessionDaoSupport;
		
	protected SqlSession getSqlSession(){
		return sqlSessionDaoSupport.getSqlSession();
	}

}
