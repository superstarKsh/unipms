package com.uni.unipms.service;

import java.util.List;

import com.uni.unipms.model.In.QT010101IVO;
import com.uni.unipms.model.Out.QT010101OVO;

public interface QT0101Service {
	public List<QT010101OVO> QT010111(QT010101IVO vo);
	public QT010101OVO QT010102(QT010101IVO vo);
	public int QT010121(QT010101IVO vo);
	public int QT010141(QT010101IVO vo);
}