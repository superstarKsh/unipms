package com.uni.unipms.common.Licence;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.uni.unipms.common.Cache.GetSharedCache;
import com.uni.unipms.common.Cript.AES256Cipher;
import com.uni.unipms.common.Message.ConstantMessage;
import com.uni.unipms.common.Util.DateUtil;

public class CheckRun {

	final static Logger logger = LoggerFactory.getLogger(CheckRun.class);
	
	@SuppressWarnings("static-access")
	public static boolean CheckProcessRun (HttpServletRequest request) {

		String rootPath = request.getSession().getServletContext().getRealPath("/").replace("WW", "/");
		String licFilePath = rootPath + ConstantMessage.LIC_FILE_PATH;

		String strLicTxt = null;
		
		try {
			BufferedReader in = new BufferedReader(new FileReader(licFilePath));
			String s = null;

			while ((s = in.readLine()) != null) {
				strLicTxt = s;
			}

			in.close();
		} catch (FileNotFoundException e) {
			logger.error("FileNotFound Exception");
		} catch (IOException e) {
			logger.error("File IO Exception");
		}

		String strHostID = GetSharedCache.getCacheServiceInfo(ConstantMessage.HOST_ID);
		String strUserName = GetSharedCache.getCacheServiceInfo(ConstantMessage.USER_NAME);
		String strServiceStart = GetSharedCache.getCacheServiceInfo(ConstantMessage.SERVICE_START);
		String strServiceEnd = GetSharedCache.getCacheServiceInfo(ConstantMessage.SERVICE_END);
		String strProjectID = GetSharedCache.getCacheServiceInfo(ConstantMessage.SERVICE_PROJECT_ID);
		String strCheckLic = null;
		
		//strCheckLic = "uniITech" + strHostID + strUserName;
		//strCheckLic = "uniITech" + strServiceStart + strServiceEnd + strProjectID + strHostID + strUserName;
		strCheckLic = "uniITech" + strServiceStart + strServiceEnd + strHostID + strUserName;
		AES256Cipher asc = new AES256Cipher();
		String encryptStr = null;
		
		try {
			long lToDate = DateUtil.transDateStrToLong(DateUtil.getToday());
			long lStartDate = DateUtil.transDateStrToLong(strServiceStart);
			long lEndDate = DateUtil.transDateStrToLong(strServiceEnd);
			
			logger.info("[JWKIM] lToDate : " + lToDate + ", lStartDate : " + lStartDate + ", lEndDate : " + lEndDate);

			if (!(lToDate>= lStartDate && lToDate <= lEndDate) )
			{
				logger.info("[JWKIM] result : false" );
				return false;
			}else{
				logger.info("[JWKIM] result : true" );
				return true;
			}
		} catch (Exception e) {
			logger.error("encrypt Exception");
		}
		
		
		try {
			encryptStr = asc.encrypt(strCheckLic);
		} catch (Exception e) {
			logger.error("encrypt Exception");
		}
		
		if (encryptStr.equals(strLicTxt))
			return true;
		else
			return false;
	}

}
