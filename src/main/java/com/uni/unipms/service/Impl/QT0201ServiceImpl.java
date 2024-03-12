package com.uni.unipms.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.QT0201Dao;
import com.uni.unipms.model.In.QT020101IVO;
import com.uni.unipms.model.Out.QT020101OVO;
import com.uni.unipms.service.QT0201Service;

@Service
public class QT0201ServiceImpl implements QT0201Service {
	@Autowired
	private QT0201Dao QT0201Dao;
	
	public List<QT020101OVO> QT020111(QT020101IVO vo) {
		List<QT020101OVO> result = QT0201Dao.QT020111(vo);
		return result;
	}
	
	public QT020101OVO QT020102(QT020101IVO vo) {
		QT020101OVO result = QT0201Dao.QT020102(vo);
		return result;
	}
	
	@Transactional
	public int QT020121(QT020101IVO vo) {
		int result = QT0201Dao.QT020141(vo);
		result = QT0201Dao.QT020121(vo);
		return result;
	}

	@Transactional
	public int QT020141(QT020101IVO vo) {
		int result = QT0201Dao.QT020141(vo);
		return result;
	}

	public QT020101OVO QT020113(QT020101IVO vo) {
		QT020101OVO result = QT0201Dao.QT020113(vo);
		return result;
	}
}
