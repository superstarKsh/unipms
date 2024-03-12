package com.uni.unipms.service.Impl;

import java.io.File;
import java.io.FileInputStream;
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

import com.uni.unipms.dao.TS0102Dao;
import com.uni.unipms.model.In.CM004101IVO;
import com.uni.unipms.model.In.TS010201IVO;
import com.uni.unipms.model.In.TS010202IVO;
import com.uni.unipms.model.Out.TS010201OVO;
import com.uni.unipms.service.TS0102Service;

@Service
public class TS0102ServiceImpl implements TS0102Service {
	
	final static Logger logger = LoggerFactory.getLogger(TS0102ServiceImpl.class);

	@Autowired
	private TS0102Dao ts0102Dao;
	
	public TS010201OVO TS010202(TS010201IVO vo) {
		TS010201OVO result = ts0102Dao.TS010202(vo);
		return result;
	}
	
	public List<TS010201OVO> TS010212(TS010201IVO vo) {
		List<TS010201OVO> result = ts0102Dao.TS010212(vo);
		return result;

	}
	
	@Transactional
	public int TS010221(TS010201IVO vo) {

		int result = 0;
		
		TS010201OVO ts020101ovo = ts0102Dao.TS010215(vo);

		if ("0".equals(ts020101ovo.getsTEST_CASE_ID()))
			result = ts0102Dao.TS010221(vo);
		else
			result = ts0102Dao.TS010231(vo);

		return result;
	}
	
	@Transactional
	public int TS010222(TS010202IVO vo) {

		int result = ts0102Dao.TS010242(vo);

		for (TS010202IVO.TS010202IVO_SUB ts010202ivo_sub : vo.getsTEST_DETAIL() ) {

			TS010201IVO ts010201ivo = new TS010201IVO();

			ts010201ivo.setsPRJT_ID(vo.getsPRJT_ID());
			ts010201ivo.setsTEST_SCN_ID(vo.getsTEST_SCN_ID());
			ts010201ivo.setsTEST_CASE_ID(ts010202ivo_sub.getsTEST_CASE_ID());
			ts010201ivo.setsTEST_CASE_NM(ts010202ivo_sub.getsTEST_CASE_NM());
			ts010201ivo.setsTEST_CASE_DESC(ts010202ivo_sub.getsTEST_CASE_DESC());
			ts010201ivo.setsTEST_INPUT_DATA(ts010202ivo_sub.getsTEST_INPUT_DATA());
			ts010201ivo.setsTEST_RSLT(ts010202ivo_sub.getsTEST_RSLT());
			ts010201ivo.setsTEST_DT(ts010202ivo_sub.getsTEST_DT());
			ts010201ivo.setsTEST_SVRT(ts010202ivo_sub.getsTEST_SVRT());
			ts010201ivo.setsTEST_IMG_URL(ts010202ivo_sub.getsTEST_IMG_URL());
			ts010201ivo.setsTEST_USER_ID(ts010202ivo_sub.getsTEST_USER_ID());
			ts010201ivo.setsTEST_CONFRM(ts010202ivo_sub.getsTEST_CONFRM());
			ts010201ivo.setsTEST_DESC(ts010202ivo_sub.getsTEST_DESC());
			ts010201ivo.setsCORRT_SCHD_DT(ts010202ivo_sub.getsCORRT_SCHD_DT());
			ts010201ivo.setsCORRT_DT(ts010202ivo_sub.getsCORRT_DT());
			ts010201ivo.setsDEV_USER_ID(ts010202ivo_sub.getsDEV_USER_ID());
			ts010201ivo.setsCORRT_DESC(ts010202ivo_sub.getsCORRT_DESC());
			ts010201ivo.setsTEST_USER_NM(ts010202ivo_sub.getsTEST_USER_NM());
			ts010201ivo.setsDEV_USER_NM(ts010202ivo_sub.getsDEV_USER_NM());

			result = ts0102Dao.TS010221(ts010201ivo);
	
		}
		
		result = ts0102Dao.TS010232(vo);
		
		return result;
	}
	
	@Transactional
	public int TS010241(TS010201IVO vo) {
		int result = ts0102Dao.TS010241(vo);
		return result;
	}
	
	public List<TS010201OVO> TS010252(CM004101IVO vo) {

		List<TS010201OVO> ts010201ovoList =  new ArrayList<TS010201OVO>();
		
		File excelFile = new File(vo.getsSaveFileNm());

		try {
			
			if ("xls".equals(vo.getsFileType())) {
	
				HSSFWorkbook XLSworkbook = new HSSFWorkbook(new POIFSFileSystem(new FileInputStream(excelFile)));
				HSSFSheet sheet = XLSworkbook.getSheetAt(0);
	
				int strtRow  = sheet.getFirstRowNum() + 1;
				int endRow   = sheet.getLastRowNum();
				int cellsCnt = 0;

				for (int i=strtRow; i<=endRow; i++) {
	
					TS010201OVO  ts010201ovo = new TS010201OVO();
					Row hssRow = sheet.getRow(i);
	
					if (hssRow != null){
						
						cellsCnt = hssRow.getPhysicalNumberOfCells();
						
						for(int cellNum=0; cellNum< cellsCnt; cellNum++){

							String strValue = "";
							Cell cell = hssRow.getCell(cellNum);
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
								
								logger.debug("strValue : " + strValue);
							}
							
							if (cellNum == 0)
								ts010201ovo.setsTEST_CASE_ID(strValue);
							else if (cellNum == 1)
								ts010201ovo.setsTEST_CASE_NM(strValue);
							else if (cellNum == 2)
								ts010201ovo.setsTEST_CASE_DESC(strValue);
							else if (cellNum == 3)
								ts010201ovo.setsTEST_INPUT_DATA(strValue);
							else if (cellNum == 4)
								ts010201ovo.setsTEST_RSLT(strValue);
							else if (cellNum == 5) {
								ts010201ovo.setsTEST_USER_ID(strValue);
								ts010201ovo.setsTEST_USER_NM(strValue);
							}
							else if (cellNum == 6)
								ts010201ovo.setsTEST_DT(strValue);
							else if (cellNum == 7)
								ts010201ovo.setsTEST_CONFRM(strValue);
							else if (cellNum == 8)
								ts010201ovo.setsTEST_DESC(strValue);
							else if (cellNum == 9) {
								ts010201ovo.setsDEV_USER_ID(strValue);
								ts010201ovo.setsDEV_USER_NM(strValue);
							}
							else if (cellNum == 10)
								ts010201ovo.setsCORRT_SCHD_DT(strValue);
							else if (cellNum == 11)
								ts010201ovo.setsCORRT_DT(strValue);
							else if (cellNum == 12)
								ts010201ovo.setsCORRT_DESC(strValue);

						}

					}
					
					ts010201ovoList.add(ts010201ovo);
				}
			}else{
				XSSFWorkbook XLSXworkbook = new XSSFWorkbook(new FileInputStream(excelFile));
				XSSFSheet sheet = XLSXworkbook.getSheetAt(0) ;
				
				int strtRow  = sheet.getFirstRowNum() + 2;
				int endRow   = sheet.getLastRowNum();
				int cellsCnt = 0;

				for (int i=strtRow; i<=endRow; i++) {
	
					TS010201OVO  ts010201ovo = new TS010201OVO();
					Row Xssrow = sheet.getRow(i);		
					
					if (Xssrow != null){
						
						String strValue = "";
						cellsCnt = Xssrow.getPhysicalNumberOfCells();
						
						for(int cellNum=0; cellNum< cellsCnt; cellNum++){

							Cell cell = Xssrow.getCell(cellNum);
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
							
							logger.debug("strValue : " + strValue);
						}
						
						if (cellNum == 0)
							ts010201ovo.setsTEST_CASE_ID(strValue);
						else if (cellNum == 1)
							ts010201ovo.setsTEST_CASE_NM(strValue);
						else if (cellNum == 2)
							ts010201ovo.setsTEST_CASE_DESC(strValue);
						else if (cellNum == 3)
							ts010201ovo.setsTEST_INPUT_DATA(strValue);
						else if (cellNum == 4)
							ts010201ovo.setsTEST_RSLT(strValue);
						else if (cellNum == 5) {
							ts010201ovo.setsTEST_USER_ID(strValue);
							ts010201ovo.setsTEST_USER_NM(strValue);
						}
						else if (cellNum == 6)
							ts010201ovo.setsTEST_DT(strValue);
						else if (cellNum == 7)
							ts010201ovo.setsTEST_CONFRM(strValue);
						else if (cellNum == 8)
							ts010201ovo.setsTEST_DESC(strValue);
						else if (cellNum == 9) {
							ts010201ovo.setsDEV_USER_ID(strValue);
							ts010201ovo.setsDEV_USER_NM(strValue);
						}
						else if (cellNum == 10)
							ts010201ovo.setsCORRT_SCHD_DT(strValue);
						else if (cellNum == 11)
							ts010201ovo.setsCORRT_DT(strValue);
						else if (cellNum == 12)
							ts010201ovo.setsCORRT_DESC(strValue);

						}
					}
					
					ts010201ovoList.add(ts010201ovo);
				}
			}	
							
		}  catch (Exception e){
			//e.printStackTrace();
		} finally {
			excelFile.delete();
		}
		
		return ts010201ovoList;
	}
}
