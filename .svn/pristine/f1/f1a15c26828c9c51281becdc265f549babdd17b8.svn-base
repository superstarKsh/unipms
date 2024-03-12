package com.uni.unipms.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.uni.unipms.common.DaoSupport.BaseDaoSupport;
import com.uni.unipms.dao.QT0101Dao;
import com.uni.unipms.model.In.QT010101IVO;
import com.uni.unipms.model.Out.QT010101OVO;

@Repository
public class QT0101DaoImpl extends BaseDaoSupport implements QT0101Dao {
	public List<QT010101OVO> QT010111(QT010101IVO vo) {
		List<QT010101OVO> result = getSqlSession().selectList("QT0101Mapper.QT010111", vo);
		return result;
	}
	
	public QT010101OVO QT010102(QT010101IVO vo) {
		QT010101OVO result = getSqlSession().selectOne("QT0101Mapper.QT010102", vo);
		return result;
	}
	
	public int QT010121(QT010101IVO vo) {
		int result = getSqlSession().insert("QT0101Mapper.QT010121", vo);
		return result;
	}
	
	public int QT010141(QT010101IVO vo) {
		int result = getSqlSession().delete("QT0101Mapper.QT010141", vo);
		return result;
	}

}
