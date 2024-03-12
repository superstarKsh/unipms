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

import com.uni.unipms.dao.DV0311Dao;
import com.uni.unipms.model.In.CM004101IVO;
import com.uni.unipms.model.In.DV031101IVO;
import com.uni.unipms.model.Out.DV031101OVO;
import com.uni.unipms.service.DV0311Service;

@Service
public class DV0311ServiceImpl implements DV0311Service {
	
	final static Logger logger = LoggerFactory.getLogger(DV0311ServiceImpl.class);

	@Autowired
	private DV0311Dao dv0311Dao;
	
	public List<DV031101OVO> DV031154(DV031101IVO vo) {
		List<DV031101OVO> result = dv0311Dao.DV031154(vo);
		return result;
	}
	
	public List<DV031101OVO> DV031154A(DV031101IVO vo) {

		List<DV031101OVO> result = new ArrayList<DV031101OVO>();
		
		DV031101OVO dv031101ovo = new DV031101OVO();

		dv031101ovo.setsTASK_ID("");
		dv031101ovo.setsSEG_ID("");
		dv031101ovo.setsSEG_SUB_ID("");
		dv031101ovo.setsTASK_NM("");
		dv031101ovo.setsSEG_NM("");
		dv031101ovo.setsSEG_SUB_NM("");
		dv031101ovo.setsPRG_ID("");
		dv031101ovo.setsPRG_NM("");
		dv031101ovo.setsPRG_EXTN("");
		dv031101ovo.setsPRG_TYPE_NM("");
		dv031101ovo.setsIMP_RT_NM("");
		dv031101ovo.setsPRJ_PLAN_STRT_DT("");
		dv031101ovo.setsPRJ_PLAN_END_DT("");
		dv031101ovo.setsPRJ_DEV_STRT_DT("");
		dv031101ovo.setsPRJ_DEV_END_DT("");
		dv031101ovo.setsBEFORE_PGM("");
		dv031101ovo.setsAFTER_PGM("");
		dv031101ovo.setsTEST_PLAN_STRT_DT("");
		dv031101ovo.setsTEST_PLAN_END_DT("");
		dv031101ovo.setsTEST_DEV_STRT_DT("");
		dv031101ovo.setsTEST_DEV_END_DT("");
		dv031101ovo.setsDEV_USER_NM("");
		dv031101ovo.setsPM_CNFM("");
		dv031101ovo.setsCUS_CNFM("");
		dv031101ovo.setsPROGRESS_RT("");
		
		result.add(dv031101ovo);
		
		return result;
	}
	
	public List<DV031101OVO> DV031152(CM004101IVO vo) {
		
		List<DV031101OVO> dv031101ovoList = new ArrayList<DV031101OVO>();
		
		File excelFile = new File(vo.getsSaveFileNm());

		logger.debug("vo.getsFileType() : " + vo.getsFileType());
		
		try {
			
			if ("xls".equals(vo.getsFileType())) {
	
				HSSFWorkbook XLSworkbook = new HSSFWorkbook(new POIFSFileSystem(new FileInputStream(excelFile)));
				HSSFSheet sheet = XLSworkbook.getSheetAt(0);
	
				int strtRow  = sheet.getFirstRowNum() + 1;
				int endRow   = sheet.getLastRowNum();
				int cellsCnt = 0;

				for (int i=strtRow; i<=endRow; i++) {
	
					DV031101OVO  dv031101ovo = new DV031101OVO();
					HSSFRow hssRow = sheet.getRow(i);
	
					if (hssRow != null){
						
						//cellsCnt = hssRow.getPhysicalNumberOfCells();
						cellsCnt = hssRow.getLastCellNum();
						
						for(int cellNum=0; cellNum< cellsCnt; cellNum++){

							String strValue = "";
							HSSFCell cell = hssRow.getCell(cellNum);

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
							
							if (cellNum == 1)
								dv031101ovo.setsTASK_ID(strValue);
							else if (cellNum == 2)
								dv031101ovo.setsSEG_ID(strValue);
							else if (cellNum == 3)
								dv031101ovo.setsSEG_SUB_ID(strValue);
							else if (cellNum == 4)
								strValue = strValue;
							else if (cellNum == 5)
								strValue = strValue;
							else if (cellNum == 6)
								strValue = strValue;	
							else if (cellNum == 7)
								dv031101ovo.setsPRG_ID(strValue);
							else if (cellNum == 8)
								dv031101ovo.setsPRG_NM(strValue);
							else if (cellNum == 9)
								dv031101ovo.setsPRG_EXTN(strValue);
							else if (cellNum == 10)
								dv031101ovo.setsPRG_TYPE_NM(strValue);
							else if (cellNum == 11)
								dv031101ovo.setsIMP_RT_NM(strValue);
							else if (cellNum == 12)
								dv031101ovo.setsPRJ_PLAN_STRT_DT(strValue);
							else if (cellNum == 13)
								dv031101ovo.setsPRJ_PLAN_END_DT(strValue);
							else if (cellNum == 14)
								dv031101ovo.setsPRJ_DEV_STRT_DT(strValue);
							else if (cellNum == 15)
								dv031101ovo.setsPRJ_DEV_END_DT(strValue);
							else if (cellNum == 16)
								dv031101ovo.setsBEFORE_PGM(strValue);
							else if (cellNum == 17)
								dv031101ovo.setsAFTER_PGM(strValue);
							else if (cellNum == 18)
								dv031101ovo.setsTEST_PLAN_STRT_DT(strValue);
							else if (cellNum == 19)
								dv031101ovo.setsTEST_PLAN_END_DT(strValue);
							else if (cellNum == 20)
								dv031101ovo.setsTEST_DEV_STRT_DT(strValue);
							else if (cellNum == 21)
								dv031101ovo.setsTEST_DEV_END_DT(strValue);
							else if (cellNum == 22)
								dv031101ovo.setsDEV_USER_NM(strValue);
							else if (cellNum == 23)
								dv031101ovo.setsPM_CNFM(strValue);
							else if (cellNum == 24)
								dv031101ovo.setsCUS_CNFM(strValue);
						}

					}
					
					if ("".equals(dv031101ovo.getsTASK_ID()) || "".equals(dv031101ovo.getsSEG_ID()) || "".equals(dv031101ovo.getsSEG_SUB_ID())) {
					} else if ("".equals(dv031101ovo.getsPRG_ID())) {
					} else {
						dv031101ovoList.add(dv031101ovo);
					}
				}
			}else{
				XSSFWorkbook XLSXworkbook = new XSSFWorkbook(new FileInputStream(excelFile));
				XSSFSheet sheet = XLSXworkbook.getSheetAt(0) ;
				
				int strtRow  = sheet.getFirstRowNum() + 1;
				int endRow   = sheet.getLastRowNum();
				int cellsCnt = 0;

				for (int i=strtRow; i<=endRow; i++) {
	
					DV031101OVO  dv031101ovo = new DV031101OVO();
					Row row = sheet.getRow(i);		
					
					if (row != null){
						
						//cellsCnt = Xssrow.getPhysicalNumberOfCells();
						cellsCnt = row.getLastCellNum();
						
						for(int cellNum=0; cellNum< cellsCnt; cellNum++){

							String strValue = "";
							//XSSFCell cell = Xssrow.getCell(cellNum);
							Cell cell = row.getCell(cellNum);
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
							
							if (cellNum == 1)
								dv031101ovo.setsTASK_ID(strValue);
							else if (cellNum == 2)
								dv031101ovo.setsSEG_ID(strValue);
							else if (cellNum == 3)
								dv031101ovo.setsSEG_SUB_ID(strValue);
							else if (cellNum == 4)
								strValue = strValue;
							else if (cellNum == 5)
								strValue = strValue;
							else if (cellNum == 6)
								strValue = strValue;	
							else if (cellNum == 7)
								dv031101ovo.setsPRG_ID(strValue);
							else if (cellNum == 8)
								dv031101ovo.setsPRG_NM(strValue);
							else if (cellNum == 9)
								dv031101ovo.setsPRG_EXTN(strValue);
							else if (cellNum == 10)
								dv031101ovo.setsPRG_TYPE_NM(strValue);
							else if (cellNum == 11)
								dv031101ovo.setsIMP_RT_NM(strValue);
							else if (cellNum == 12)
								dv031101ovo.setsPRJ_PLAN_STRT_DT(strValue);
							else if (cellNum == 13)
								dv031101ovo.setsPRJ_PLAN_END_DT(strValue);
							else if (cellNum == 14)
								dv031101ovo.setsPRJ_DEV_STRT_DT(strValue);
							else if (cellNum == 15)
								dv031101ovo.setsPRJ_DEV_END_DT(strValue);
							else if (cellNum == 16)
								dv031101ovo.setsBEFORE_PGM(strValue);
							else if (cellNum == 17)
								dv031101ovo.setsAFTER_PGM(strValue);
							else if (cellNum == 18)
								dv031101ovo.setsTEST_PLAN_STRT_DT(strValue);
							else if (cellNum == 19)
								dv031101ovo.setsTEST_PLAN_END_DT(strValue);
							else if (cellNum == 20)
								dv031101ovo.setsTEST_DEV_STRT_DT(strValue);
							else if (cellNum == 21)
								dv031101ovo.setsTEST_DEV_END_DT(strValue);
							else if (cellNum == 22)
								dv031101ovo.setsDEV_USER_NM(strValue);
							else if (cellNum == 23)
								dv031101ovo.setsPM_CNFM(strValue);
							else if (cellNum == 24)
								dv031101ovo.setsCUS_CNFM(strValue);
						}

					}

					if ("".equals(dv031101ovo.getsTASK_ID()) || "".equals(dv031101ovo.getsSEG_ID()) || "".equals(dv031101ovo.getsSEG_SUB_ID())) {
					} else if ("".equals(dv031101ovo.getsPRG_ID())) {
					} else {
						dv031101ovoList.add(dv031101ovo);
					}
				}
			}
		}  catch (Exception e){
			//e.printStackTrace();
		} finally {
			excelFile.delete();
		}

		return dv031101ovoList;
	}
	
}
