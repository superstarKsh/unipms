package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.QT0201Dao;
import com.uni.unipms.model.In.QT020101IVO;
import com.uni.unipms.model.Out.QT020101OVO;

@Repository
public class QT0201DaoImpl extends BaseDaoSupport implements QT0201Dao {
	public List<QT020101OVO> QT020111(QT020101IVO vo) {
		List<QT020101OVO> result = getSqlSession().selectList("QT0201Mapper.QT020111", vo);
		return result;
	}
	
	public QT020101OVO QT020102(QT020101IVO vo) {
		QT020101OVO result = getSqlSession().selectOne("QT0201Mapper.QT020102", vo);
		return result;
	}
	
	public int QT020121(QT020101IVO vo) {
		int result = getSqlSession().insert("QT0201Mapper.QT020121", vo);
		return result;
	}
	
	public int QT020141(QT020101IVO vo) {
		int result = getSqlSession().delete("QT0201Mapper.QT020141", vo);
		return result;
	}
	
	public QT020101OVO QT020113(QT020101IVO vo) {
		QT020101OVO result = getSqlSession().selectOne("QT0201Mapper.QT020113", vo);
		return result;
	}

}
