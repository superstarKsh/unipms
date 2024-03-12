package com.uni.unipms.common.Util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.uni.unipms.common.Cache.GetSharedCache;
import com.uni.unipms.common.Cache.GetSharedCacheObj;
import com.uni.unipms.common.Message.ConstantMessage;

public class ExcelCreate {
	
	final static Logger logger = LoggerFactory.getLogger(ExcelCreate.class);
	
	public static void excelCreate(HttpServletRequest request, List objlist){

		String rootPath = GetSharedCache.getCacheServiceInfo(ConstantMessage.FILE_BASE_PATH);
		String savePath = rootPath + File.separator + "upload/file";
		
		excelFileCreate(savePath, objlist);

	}
	
	public static String excelCreateRndm(HttpServletRequest request, List objlist){

		String rootPath = GetSharedCache.getCacheServiceInfo(ConstantMessage.FILE_BASE_PATH);
		String savePath = rootPath + File.separator + "upload/file";
		String fileName = createFileName();
		String createFileName = savePath + File.separator + createFileName();
		
		logger.debug("savefile : " + createFileName);

		excelFileCreate(createFileName, objlist);
		
		return fileName;

	}
	
	private static String createFileName(){
		
		SimpleDateFormat formatter = new SimpleDateFormat ( "yyyyMMddHHmmss", Locale.KOREA );
		Date currentTime = new Date ();
		String fileName = formatter.format(currentTime) + ".xlsx";

		return fileName;
	}
	
	private static void excelFileCreate(String fileName, List objlist){
		List<LinkedHashMap<String,Object>> objList = new ArrayList<LinkedHashMap<String,Object>>();
		
		for (int obji = 0; obji<objlist.size(); obji++ ) {
			LinkedHashMap<String, Object> objMap = new LinkedHashMap<String, Object>();
			objMap = CommonMapping.ConverObjectToLinkedHashMap(objlist.get(obji));
			objList.add(objMap);
		}
		
		List<String> columnList = new ArrayList<String>();

		if(objList !=null &&objList.size() >0){
			LinkedHashMap<String,Object> mobj = (LinkedHashMap<String, Object>) objList.get(0);
		    for(String keyData : mobj.keySet()){
		        columnList.add(keyData);
		    }
		}

		XSSFWorkbook workbook = new XSSFWorkbook();
		XSSFSheet sheet=workbook.createSheet("Uni-PMS");
		XSSFRow row=null;
		XSSFCell cell=null;
		
		if(objList !=null && objList.size() >0){
		    int i=0;
		    for(LinkedHashMap<String,Object> mapobject : objList){

		    	row=sheet.createRow((short)i);

		        if (i==0) {
			        if(columnList !=null &&columnList.size() >0){
			            for(int j=0;j<columnList.size();j++){
			                cell=row.createCell(j);
			                //cell.setCellValue(GetSharedCacheObj.getCacheServiceInfoObj("EXCEL_HEADER", String.valueOf(columnList.get(j))));
			            }
			        }
		        } else {
			        if(columnList !=null &&columnList.size() >0){
			            for(int j=0;j<columnList.size();j++){
			                cell=row.createCell(j);
			                //cell.setCellValue(String.valueOf(mapobject.get(columnList.get(j))));
			            }
			        }
		        }

		        i++;
		    }
		}

//		XSSFCellStyle style = workbook.createCellStyle();
//		XSSFFont font = workbook.createFont();
//		font.setFontName("맑은 고딕");
//		font.setFontHeightInPoints((short)10);
//		style.setFont(font);
//		cell.setCellStyle(style);
//		sheet.autoSizeColumn((short)0);

		FileOutputStream fileoutputstream = null;

		try {
			fileoutputstream = new FileOutputStream(fileName);
		//	workbook.write(fileoutputstream);
			fileoutputstream.close();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		}
	}

}
