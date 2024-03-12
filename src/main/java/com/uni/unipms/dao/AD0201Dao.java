package com.uni.unipms.dao;

import java.util.List;

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

public interface AD0201Dao {
	
	public List<AD020101OVO> AD020111(AD020101IVO vo);
	public AD020101OVO AD020113(AD020101IVO vo);
	public AD020101OVO AD020115(AD020101IVO vo);
	public int AD020121(AD020101IVO vo);
	public int AD020141(AD020101IVO vo);
	public List<AD020111OVO> AD020111A(AD020111IVO vo);
	public AD020111OVO AD020102A(AD020112IVO vo);
	public int AD020121A(AD020111IVO vo);
	public int AD020142A(AD020112IVO vo);
	public List<AD020121OVO> AD020111B(AD020121IVO vo);
	public AD020121OVO AD020102B(AD020122IVO vo);
	public int AD020121B(AD020121IVO vo);
	public int AD020142B(AD020122IVO vo);
	public List<AD020131OVO> AD020111C(AD020131IVO vo);
	public AD020131OVO AD020102C(AD020132IVO vo);
	public int AD020121C(AD020131IVO vo);
	public int AD020142C(AD020132IVO vo);
	public List<AD020141OVO> AD020111D(AD020141IVO vo);
	public AD020141OVO AD020102D(AD020142IVO vo);
	public int AD020121D(AD020141IVO vo);
	public int AD020142D(AD020142IVO vo);
	public List<AD020151OVO> AD020111E(AD020151IVO vo);
	public AD020151OVO AD020102E(AD020152IVO vo);
	public int AD020121E(AD020151IVO vo);
	public int AD020141E(AD020151IVO vo);
	public int AD020142E(AD020152IVO vo);

}