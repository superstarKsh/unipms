package com.uni.unipms.service.Impl;

import java.io.File;
import java.io.FileInputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.MG0101Dao;
import com.uni.unipms.model.In.CM004101IVO;
import com.uni.unipms.model.In.MG010101IVO;
import com.uni.unipms.model.In.MG010102IVO;
import com.uni.unipms.model.Out.MG010101OVO;
import com.uni.unipms.service.MG0101Service;

@Service
public class MG0101ServiceImpl implements MG0101Service {

	final static Logger logger = LoggerFactory.getLogger(MG0101ServiceImpl.class);
	
	@Autowired
	private MG0101Dao mg0101Dao;
	
	public MG010101OVO MG010102(MG010101IVO vo) {
		MG010101OVO result = mg0101Dao.MG010102(vo);
		return result;
	}
	
	public List<MG010101OVO> MG010111(MG010101IVO vo) {
		List<MG010101OVO> result = mg0101Dao.MG010111(vo);
		return result;
	}
	
	@Transactional
	public int MG010121(MG010101IVO vo) {
		int result = mg0101Dao.MG010141(vo);
		result =  mg0101Dao.MG010121(vo);
		return result;
	}
	
	@Transactional
	public int MG010141(MG010101IVO vo) {
		int result = mg0101Dao.MG010141(vo);
		return result;
	}
	
	@Transactional
	public int MG010122(MG010102IVO vo) {
		
		int result = 0;
		result = mg0101Dao.MG010142(vo);
		
		for (MG010102IVO.MG010102IVO_SUB mg010102ivo_sub : vo.getsPRJT_TASK_INFO() ) {
			MG010101IVO mg010101ivo = new MG010101IVO();
			
			mg010101ivo.setsPRJT_ID(vo.getsPRJT_ID());
			mg010101ivo.setsTASK_LEVEL(mg010102ivo_sub.getsTASK_LEVEL());
			mg010101ivo.setsTASK_ID(mg010102ivo_sub.getsTASK_ID());
			mg010101ivo.setsUPPER_TASK_ID(mg010102ivo_sub.getsUPPER_TASK_ID());
			mg010101ivo.setsTASK_NM(mg010102ivo_sub.getsTASK_NM());
			mg010101ivo.setsTASK_DESC(mg010102ivo_sub.getsTASK_DESC());
			mg010101ivo.setsBEFORE_TASK_ID(mg010102ivo_sub.getsBEFORE_TASK_ID());
			mg010101ivo.setsSTRT_DT(mg010102ivo_sub.getsSTRT_DT());
			mg010101ivo.setsEND_DT(mg010102ivo_sub.getsEND_DT());
			mg010101ivo.setsPROGRESS_RT(mg010102ivo_sub.getsPROGRESS_RT());
			mg010101ivo.setsOUTPUT_LIST(mg010102ivo_sub.getsOUTPUT_LIST());
			mg010101ivo.setsMEMO(mg010102ivo_sub.getsMEMO());

			result = mg0101Dao.MG010121(mg010101ivo);
		}
		
		return result;
	}
	
	@Transactional
	public int MG010122A(MG010102IVO vo) {
		
		int result = 0;
		result = mg0101Dao.MG010142(vo);
		
		for (MG010102IVO.MG010102IVO_SUB mg010102ivo_sub : vo.getsPRJT_TASK_INFO() ) {

			MG010101IVO mg010101ivo = new MG010101IVO();
			
			mg010101ivo.setsPRJT_ID(vo.getsPRJT_ID());
			mg010101ivo.setsTASK_LEVEL(mg010102ivo_sub.getsTASK_LEVEL());
			
			MG010101OVO mg010101ovo = new MG010101OVO();
			mg010101ovo = mg0101Dao.MG010102(mg010101ivo);
			
			mg010101ivo.setsPRJT_ID(vo.getsPRJT_ID());
			mg010101ivo.setsTASK_LEVEL(mg010102ivo_sub.getsTASK_LEVEL());
			mg010101ivo.setsTASK_ID(mg010101ovo.getsTASK_ID());
			mg010101ivo.setsSEQ(mg010102ivo_sub.getsTASK_ID());
			mg010101ivo.setsBEFORE_SEQ(mg010102ivo_sub.getsBEFORE_TASK_ID());
			mg010101ivo.setsUPPER_TASK_ID("");
			mg010101ivo.setsTASK_NM(mg010102ivo_sub.getsTASK_NM());
			mg010101ivo.setsTASK_DESC(mg010102ivo_sub.getsTASK_DESC());
			mg010101ivo.setsBEFORE_TASK_ID("");
			mg010101ivo.setsSTRT_DT(mg010102ivo_sub.getsSTRT_DT());
			mg010101ivo.setsEND_DT(mg010102ivo_sub.getsEND_DT());
			mg010101ivo.setsPROGRESS_RT(mg010102ivo_sub.getsPROGRESS_RT());
			mg010101ivo.setsOUTPUT_LIST(mg010102ivo_sub.getsOUTPUT_LIST());
			mg010101ivo.setsMEMO(mg010102ivo_sub.getsMEMO());

			result = mg0101Dao.MG010121(mg010101ivo);
		}
		
		result = mg0101Dao.MG010132(vo);

		return result;
	}
	
	@Transactional
	public int MG010132(MG010101IVO vo) {
		
		int result = mg0101Dao.MG010132A(vo);
	
		List<MG010101OVO> updateList = mg0101Dao.MG010115(vo);
		     
		for (MG010101OVO selectvo : updateList ) {
			
			MG010101IVO mg010101ivo = new MG010101IVO();
			
			mg010101ivo.setsDOMAIN_ID(selectvo.getsDOMAIN_ID());
			mg010101ivo.setsPRJT_ID(selectvo.getsPRJT_ID());
			mg010101ivo.setsTASK_LEVEL(selectvo.getsTASK_LEVEL());
			
			List<MG010101OVO> calList = mg0101Dao.MG010115A(mg010101ivo);
			
			for (MG010101OVO calvo : calList ) {
				MG010101IVO updatevo = new MG010101IVO();
				
				updatevo.setsDOMAIN_ID(calvo.getsDOMAIN_ID());
				updatevo.setsPRJT_ID(calvo.getsPRJT_ID());
				updatevo.setsTASK_ID(calvo.getsTASK_ID());
				updatevo.setsPURPOSE_RT(calvo.getsPURPOSE_RT());
				updatevo.setsPROGRESS_RT(calvo.getsPROGRESS_RT());

				result = mg0101Dao.MG010131(updatevo);
			}
			
		}
		
		return result;
	}
	
	public List<MG010101OVO> MG010152(CM004101IVO vo) {
		
		List<MG010101OVO> mg010101ovoList = new ArrayList<MG010101OVO>();
		
		File excelFile = new File(vo.getsSaveFileNm());

		logger.debug("vo.getsFileType() : " + vo.getsFileType());
		
		try {
			
			if ("xls".equals(vo.getsFileType())) {
	
				HSSFWorkbook XLSworkbook = new HSSFWorkbook(new POIFSFileSystem(new FileInputStream(excelFile)));
				HSSFSheet sheet = XLSworkbook.getSheetAt(0);
	
				int strtRow  = sheet.getFirstRowNum() + 2;
				int endRow   = sheet.getLastRowNum();
				int cellsCnt = 0;

				for (int i=strtRow; i<=endRow; i++) {
	
					MG010101OVO mg010101ovo = new MG010101OVO();
					HSSFRow hssRow = sheet.getRow(i);
	
					if (hssRow != null){
						
						String strValue = "";
						//cellsCnt = hssRow.getPhysicalNumberOfCells();
						cellsCnt = hssRow.getLastCellNum();
						
						for(int cellNum=0; cellNum< cellsCnt; cellNum++){

							strValue = "";
							HSSFCell cell = hssRow.getCell(cellNum);
							
							// 시작, 완료일짜 String 또는 Numeric 에 따라서 분기처리
							if(cellNum >= 5 && cellNum <= 6) {
								if(null != cell) {
									switch (cell.getCellType()) {
										case Cell.CELL_TYPE_FORMULA:				            	
							            	strValue = String.valueOf(new Double(cell.getNumericCellValue()).longValue());
							                break;
							                   
							            case Cell.CELL_TYPE_STRING:
							            	strValue = cell.getStringCellValue();
							            	try {
							            		if(strValue.length() > 0) {
							            			if("20".equals(strValue.substring(0, 2))) {
							            				if ("-".equals(strValue.substring(2, 3)))
							            					strValue = "20" + strValue.substring(0,2) + strValue.substring(3,5) + strValue.substring(6,8);
							            				else
							            					strValue = strValue.substring(0,4) + strValue.substring(6,8) + strValue.substring(10,12);
							            			} else if("19".equals(strValue.substring(0, 2))) {
								            				if ("-".equals(strValue.substring(2, 3)))
								            					strValue = "20" + strValue.substring(0,2) + strValue.substring(3,5) + strValue.substring(6,8);
								            				else
								            					strValue = strValue.substring(0,4) + strValue.substring(6,8) + strValue.substring(10,12);
							            			} else {
							            				if ("9".equals(strValue.substring(2, 3)))
							            					strValue = "19" + strValue.substring(0,2) + strValue.substring(3,5) + strValue.substring(6,8);
							            				else if ("8".equals(strValue.substring(2, 3)))
							            					strValue = "19" + strValue.substring(0,2) + strValue.substring(3,5) + strValue.substring(6,8);
							            				else
							            					strValue = "20" + strValue.substring(0,2) + strValue.substring(3,5) + strValue.substring(6,8);
							            			}
							            		} else {
							            			strValue = "";
							            		}
							            	} catch(Exception e) { strValue = ""; }
							                break;
							                  
							            case Cell.CELL_TYPE_BLANK:
							            	strValue = String.valueOf(cell.getStringCellValue());
							                break;
							                  
							            case Cell.CELL_TYPE_ERROR :
							                strValue = String.valueOf(cell.getErrorCellValue());
							                break;
							                
							            case Cell.CELL_TYPE_NUMERIC :				            	
							            	strValue = String.valueOf(new Double(cell.getNumericCellValue()).longValue());
							            	try {
								                SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd"); 
								                strValue = formatter.format(cell.getDateCellValue());
							            	} catch(Exception e) { strValue = ""; }
							                break;
							                
							            case Cell.CELL_TYPE_BOOLEAN :
							                strValue = String.valueOf(cell.getBooleanCellValue());
							                break;
							            
							            default:
							                break;
							        }

								}
								
							} else {

								if(null != cell) {
									switch (cell.getCellType()) {
										case Cell.CELL_TYPE_FORMULA:				            	
							            	strValue = String.valueOf(new Double(cell.getNumericCellValue()).longValue());
							                break;
							                   
							            case Cell.CELL_TYPE_STRING:
							            	strValue = cell.getStringCellValue();
							                break;
							                  
							            case Cell.CELL_TYPE_BLANK:
							            	strValue = String.valueOf(cell.getStringCellValue());
							                break;
							                  
							            case Cell.CELL_TYPE_ERROR :
							                strValue = String.valueOf(cell.getErrorCellValue());
							                break;
							                
							            case Cell.CELL_TYPE_NUMERIC :				            	
							            	strValue = String.valueOf(new Double(cell.getNumericCellValue()).longValue());
							                break;
							                
							            case Cell.CELL_TYPE_BOOLEAN :
							                strValue = String.valueOf(cell.getBooleanCellValue());
							                break;
							            
							            default:
							                break;
							        }
									
									
								}
								logger.debug("strValue : " + strValue);
							}
							
							if (cellNum == 0) {
								mg010101ovo.setsTASK_ID(strValue);
								mg010101ovo.setsUPPER_TASK_ID(strValue);
							}
							else if (cellNum == 3)
								mg010101ovo.setsTASK_NM(strValue);
							else if (cellNum == 5)
								mg010101ovo.setsSTRT_DT(strValue);
							else if (cellNum == 6)
								mg010101ovo.setsEND_DT(strValue);
							else if (cellNum == 7)
								mg010101ovo.setsBEFORE_TASK_ID(strValue);
							else if (cellNum == 8)
								mg010101ovo.setsTASK_LEVEL(strValue);
							else if (cellNum == 9)
								mg010101ovo.setsMEMO(strValue);
						}
					}

					mg010101ovoList.add(mg010101ovo);
				}
			}else{
				XSSFWorkbook XLSXworkbook = new XSSFWorkbook(new FileInputStream(excelFile));
				XSSFSheet sheet = XLSXworkbook.getSheetAt(0) ;
				
				int strtRow  = sheet.getFirstRowNum() + 2;
				int endRow   = sheet.getLastRowNum();
				int cellsCnt = 0;

				for (int i=strtRow; i<=endRow; i++) {
	
					MG010101OVO mg010101ovo = new MG010101OVO();
					Row Xssrow = sheet.getRow(i);		
					
					if (Xssrow != null){
						
						String strValue = "";
						//cellsCnt = Xssrow.getPhysicalNumberOfCells();
						cellsCnt = Xssrow.getLastCellNum();
						
						for(int cellNum=0; cellNum< cellsCnt; cellNum++){

							strValue = "";
							Cell cell = Xssrow.getCell(cellNum);

							// 시작, 완료일짜 String 또는 Numeric 에 따라서 분기처리
							if(cellNum >= 5 && cellNum <= 6) {
								if(null != cell) {
									switch (cell.getCellType()) {
										case Cell.CELL_TYPE_FORMULA:				            	
							            	strValue = String.valueOf(new Double(cell.getNumericCellValue()).longValue());
							                break;
							                   
							            case Cell.CELL_TYPE_STRING:
							            	strValue = cell.getStringCellValue();
							            	try {
							            		if(strValue.length() > 0) {
							            			if("2".equals( strValue.substring(0, 1)) ) {
							            				strValue = strValue.substring(0,4) + strValue.substring(6,8) + strValue.substring(10,12);
							            			} else {
							            				strValue = "20" + strValue.substring(0,2) + strValue.substring(3,5) + strValue.substring(6,8);
							            			}
							            		} else {
							            			strValue = "";
							            		}
							            	} catch(Exception e) { strValue = ""; }
							                break;
							                  
							            case Cell.CELL_TYPE_BLANK:
							            	strValue = String.valueOf(cell.getStringCellValue());
							                break;
							                  
							            case Cell.CELL_TYPE_ERROR :
							                strValue = String.valueOf(cell.getErrorCellValue());
							                break;
							                
							            case Cell.CELL_TYPE_NUMERIC :				            	
							            	strValue = String.valueOf(new Double(cell.getNumericCellValue()).longValue());
							            	try {
								                SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd"); 
								                strValue = formatter.format(cell.getDateCellValue());
							            	} catch(Exception e) { strValue = ""; }
							                break;
							                
							            case Cell.CELL_TYPE_BOOLEAN :
							                strValue = String.valueOf(cell.getBooleanCellValue());
							                break;
							            
							            default:
							                break;
							        }

								}
								
							} else {

								if(null != cell) {
									switch (cell.getCellType()) {
										case Cell.CELL_TYPE_FORMULA:				            	
							            	strValue = String.valueOf(new Double(cell.getNumericCellValue()).longValue());
							                break;
							                   
							            case Cell.CELL_TYPE_STRING:
							            	strValue = cell.getStringCellValue();
							                break;
							                  
							            case Cell.CELL_TYPE_BLANK:
							            	strValue = String.valueOf(cell.getStringCellValue());
							                break;
							                  
							            case Cell.CELL_TYPE_ERROR :
							                strValue = String.valueOf(cell.getErrorCellValue());
							                break;
							                
							            case Cell.CELL_TYPE_NUMERIC :				            	
							            	strValue = String.valueOf(new Double(cell.getNumericCellValue()).longValue());
							                break;
							                
							            case Cell.CELL_TYPE_BOOLEAN :
							                strValue = String.valueOf(cell.getBooleanCellValue());
							                break;
							            
							            default:
							                break;
							        }
									
									
								}
								logger.debug("strValue : " + strValue);
							}

							if (cellNum == 0) {
								mg010101ovo.setsTASK_ID(strValue);
								mg010101ovo.setsUPPER_TASK_ID(strValue);
							}
							else if (cellNum == 3)
								mg010101ovo.setsTASK_NM(strValue);
							else if (cellNum == 5)
								mg010101ovo.setsSTRT_DT(strValue);
							else if (cellNum == 6)
								mg010101ovo.setsEND_DT(strValue);
							else if (cellNum == 7)
								mg010101ovo.setsBEFORE_TASK_ID(strValue);
							else if (cellNum == 8)
								mg010101ovo.setsTASK_LEVEL(strValue);
							else if (cellNum == 9)
								mg010101ovo.setsMEMO(strValue);
						}
					}

					mg010101ovoList.add(mg010101ovo);
				}
			}
		}  catch (Exception e){
			e.printStackTrace();
		} finally {
			excelFile.delete();
		}
		
		return mg010101ovoList;
	}
}
