package com.uni.unipms.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.QT0101Dao;
import com.uni.unipms.model.In.QT010101IVO;
import com.uni.unipms.model.Out.QT010101OVO;
import com.uni.unipms.service.QT0101Service;

@Service
public class QT0101ServiceImpl implements QT0101Service {
	@Autowired
	private QT0101Dao qt0101Dao;
	
	public List<QT010101OVO> QT010111(QT010101IVO vo) {
		List<QT010101OVO> result = qt0101Dao.QT010111(vo);
		return result;
	}
	
	public QT010101OVO QT010102(QT010101IVO vo) {
		QT010101OVO result = qt0101Dao.QT010102(vo);
		return result;
	}
	
	@Transactional
	public int QT010121(QT010101IVO vo) {
		int result = qt0101Dao.QT010141(vo);
		result = qt0101Dao.QT010121(vo);

		return result;
	}
	
	@Transactional
	public int QT010141(QT010101IVO vo) {
		int result = qt0101Dao.QT010141(vo);
		return result;
	}

}
