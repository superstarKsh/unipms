package com.uni.unipms.common.Util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.uni.unipms.model.In.CM004101IVO;

public class FileUtil {
	
	final static Logger logger = LoggerFactory.getLogger(FileUtil.class);

	/**
	 * 파일 저장 : 파일명 중복시 OverWrite 
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 */
	public static List<CM004101IVO> FileSave (MultipartHttpServletRequest mptRequest, String savePath) {
		
		List<CM004101IVO> result = new ArrayList<CM004101IVO>();
		
	    Iterator<String> fileIterator = mptRequest.getFileNames();

	    while (fileIterator.hasNext()) {
	    	
	    	MultipartFile mFile = mptRequest.getFile((String) fileIterator.next());
	    	if (mFile.getSize() > 0) {
	    		
	    		String saveFile = "";
	    		String fileName = mFile.getOriginalFilename();
	    		
	    		try {
		    		saveFile = savePath + fileName;
		    		
		    		logger.debug("**  saveFile : " +saveFile);
		    		
		    		File tempFile = new File(saveFile);
					OutputStream outst = new FileOutputStream(tempFile);
					
					FileCopyUtils.copy(mFile.getInputStream(), outst);
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					throw new RuntimeException("File Save Error");
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
					throw new RuntimeException("File Save Error");
				}
	    		
	    		CM004101IVO cm004101IVO = new CM004101IVO();
	    		cm004101IVO.setsFileNm(fileName);
	    		cm004101IVO.setsSaveFileNm(saveFile);
	    		
	    		cm004101IVO.setsFileType(fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length()).toLowerCase());

	    		result.add(cm004101IVO);
	    	}

	    }
		
		return result;
	}

	/**
	 * 파일 저장 : 파일명 + yyyyMMddHHmmss로 생성
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 */
	public static List<CM004101IVO> NewFileSave (MultipartHttpServletRequest mptRequest, String savePath) {
		
		List<CM004101IVO> result = new ArrayList<CM004101IVO>();
		
	    Iterator<String> fileIterator = mptRequest.getFileNames();

	    while (fileIterator.hasNext()) {
	    	
	    	MultipartFile mFile = mptRequest.getFile((String) fileIterator.next());
	    	if (mFile.getSize() > 0) {
	    		
	    		String saveFile = "";
	    		String moveFile = "";
	    		String fileName = mFile.getOriginalFilename();
	    		
	    		SimpleDateFormat formatter = new SimpleDateFormat ("yyyyMMddHHmmss", java.util.Locale.KOREA);
	    		String dateString = formatter.format(new java.util.Date());
	    		String moveFileName = fileName.substring(0, fileName.lastIndexOf(".")) + '_' + dateString + fileName.substring(fileName.lastIndexOf("."));
	    		
	    		try {
		    		saveFile = savePath + fileName;
		    		moveFile = savePath + moveFileName;
		    		
		    		logger.debug("**  saveFile : " +saveFile);
		    		logger.debug("**  moveFile : " +moveFile);
		    		
		    		File tempFile = new File(saveFile);
		    		File tempMoveFile = new File(moveFile);
		    		tempFile.renameTo(tempMoveFile);

					OutputStream outst = new FileOutputStream(tempMoveFile);
					
					FileCopyUtils.copy(mFile.getInputStream(), outst);
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					throw new RuntimeException("File Save Error");
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
					throw new RuntimeException("File Save Error");
				}
	    		
	    		CM004101IVO cm004101IVO = new CM004101IVO();
	    		cm004101IVO.setsFileNm(fileName);
	    		cm004101IVO.setsSaveFileNm(saveFile);
	    		
	    		cm004101IVO.setsFileType(fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length()).toLowerCase());

	    		result.add(cm004101IVO);
	    	}

	    }
		
		return result;
	}
	
	/**
	 * 파일 저장 : 파일명 + Version으로 파일 생성 
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 */
	public static boolean FileSaveVer(MultipartHttpServletRequest mptRequest, String savePath, String saveVer) {
		
		boolean result = false;
		
		Iterator<String> fileIterator = mptRequest.getFileNames();

	    while (fileIterator.hasNext()) {
	    	
	    	MultipartFile mFile = mptRequest.getFile((String) fileIterator.next());
	    	if (mFile.getSize() > 0) {
	    		
	    		String saveFile = "";
	    		String moveFile = "";
	    		String fileName = mFile.getOriginalFilename();
	    		
	    		String moveFileName = fileName.substring(0, fileName.lastIndexOf(".")) + '_' + saveVer + fileName.substring(fileName.lastIndexOf("."));
	    		
	    		try {
		    		saveFile = savePath + fileName;
		    		moveFile = savePath + moveFileName;
		    		
		    		logger.debug("**  saveFile : " +saveFile);
		    		logger.debug("**  moveFile : " +moveFile);
		    		
		    		File tempFile = new File(saveFile);
		    		File tempMoveFile = new File(moveFile);
		    		tempFile.renameTo(tempMoveFile);

					OutputStream outst = new FileOutputStream(tempMoveFile);
					
					FileCopyUtils.copy(mFile.getInputStream(), outst);
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					throw new RuntimeException("File Save Error");
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
					throw new RuntimeException("File Save Error");
				}

	    		result = true;
	    	}

	    }
		
		return result;
	}
	
	/**
	 * 파일 저장 : 파일명 덥어쓰기
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 */
	public static boolean FileSaveTemplet(MultipartHttpServletRequest mptRequest, String savePath) {
		
		boolean result = false;
		
		Iterator<String> fileIterator = mptRequest.getFileNames();

	    while (fileIterator.hasNext()) {
	    	
	    	MultipartFile mFile = mptRequest.getFile((String) fileIterator.next());

	    	if (mFile.getSize() > 0) {
	    		
	    		String saveFile = "";
	    		String fileName = mFile.getOriginalFilename();
	    		
	    		try {
		    		saveFile = savePath + fileName;
		    		
		    		logger.debug("**  saveFile : " +saveFile);
		    		
		    		File tempFile = new File(saveFile);
					OutputStream outst = new FileOutputStream(tempFile);
					
					FileCopyUtils.copy(mFile.getInputStream(), outst);
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					throw new RuntimeException("File Save Error");
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
					throw new RuntimeException("File Save Error");
				}

	    		result = true;
	    	}

	    }
		
		return result;
	}
	
	/**
	 * 파일 저장 : 파일명 + YyyyMMdd로 파일 생성 
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 */
	public static boolean FileSaveNew(MultipartHttpServletRequest mptRequest, String savePath) {
		
		boolean result = false;
		
		Iterator<String> fileIterator = mptRequest.getFileNames();

	    while (fileIterator.hasNext()) {
	    	
	    	MultipartFile mFile = mptRequest.getFile((String) fileIterator.next());
	    	if (mFile.getSize() > 0) {
	    		
	    		String saveFile = "";
	    		String moveFile = "";
	    		String fileName = mFile.getOriginalFilename();
	    		
	    		SimpleDateFormat formatter = new SimpleDateFormat ("yyyyMMddHHmmss", java.util.Locale.KOREA);
	    		String dateString = formatter.format(new java.util.Date());
	    		String moveFileName = fileName.substring(0, fileName.lastIndexOf(".")) + '_' + dateString + fileName.substring(fileName.lastIndexOf("."));
	    		
	    		try {
		    		saveFile = savePath + fileName;
		    		moveFile = savePath + moveFileName;
		    		
		    		logger.debug("**  saveFile : " +saveFile);
		    		logger.debug("**  moveFile : " +moveFile);
		    		
		    		File tempFile = new File(saveFile);
		    		File tempMoveFile = new File(moveFile);
		    		tempFile.renameTo(tempMoveFile);

					OutputStream outst = new FileOutputStream(tempMoveFile);
					
					FileCopyUtils.copy(mFile.getInputStream(), outst);
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					throw new RuntimeException("File Save Error");
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
					throw new RuntimeException("File Save Error");
				}

	    		result = true;
	    	}

	    }
		
		return result;
	}
	
	/**
	 * 파일 저장 : 저장파일명 덥어쓰기(저장파일명추가) 
	 * @param mptRequest
	 * @param savePath
	 * @param fileName
	 * @return boolean
	 */
	public static boolean FileSaveTemplet(MultipartHttpServletRequest mptRequest, String savePath, String fileName) {
		
		boolean result = false;
		
		Iterator<String> fileIterator = mptRequest.getFileNames();

	    while (fileIterator.hasNext()) {
	    	
	    	MultipartFile mFile = mptRequest.getFile((String) fileIterator.next());

	    	if (mFile.getSize() > 0) {
	    		
	    		String saveFile = "";	    		
	    		
	    		try {
	    			File olddir = new File(savePath);
	    	    	if(!olddir.exists()){
	    	    		olddir.mkdirs();
	    	        }
		    		saveFile = savePath + fileName;
		    		
		    		logger.debug("**  saveFile : " +saveFile);
		    		
		    		File tempFile = new File(saveFile);
		    		
					OutputStream outst = new FileOutputStream(tempFile);
					
					FileCopyUtils.copy(mFile.getInputStream(), outst);
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					throw new RuntimeException("File Save Error");
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
					throw new RuntimeException("File Save Error");
				}

	    		result = true;
	    	}

	    }
		
		return result;
	}
	
	public static boolean FileDelete(HttpServletRequest request, CM004101IVO vo) {
		
		boolean result = false;
		
		String rootPath = request.getSession().getServletContext().getRealPath("/").replace("WW", "/");
		String createFileName = rootPath + vo.getsFileNm();
		
	    File f = new File(createFileName);

	    if (f.delete()) {
	    	result = true;
	    } else {
	    	result = false;
	    }
		
		return result;

	}

}

