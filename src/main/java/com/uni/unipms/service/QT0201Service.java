package com.uni.unipms.service;

import java.util.List;

import com.uni.unipms.model.In.QT020101IVO;
import com.uni.unipms.model.Out.QT020101OVO;

public interface QT0201Service {
	public List<QT020101OVO> QT020111(QT020101IVO vo);
	public QT020101OVO QT020102(QT020101IVO vo);
	public int QT020121(QT020101IVO vo);
	public int QT020141(QT020101IVO vo);
	public QT020101OVO QT020113(QT020101IVO vo);
}