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

import com.microsoft.schemas.office.visio.x2012.main.CellType;
import com.uni.unipms.dao.DV0301Dao;
import com.uni.unipms.model.In.CM004101IVO;
import com.uni.unipms.model.In.DV030101IVO;
import com.uni.unipms.model.In.DV030102IVO;
import com.uni.unipms.model.Out.DV030101OVO;
import com.uni.unipms.service.DV0301Service;

@Service
public class DV0301ServiceImpl implements DV0301Service {
	
	final static Logger logger = LoggerFactory.getLogger(DV0301ServiceImpl.class);

	@Autowired
	private DV0301Dao dv0301Dao;

	public DV030101OVO DV030102(DV030101IVO vo) {
		DV030101OVO result = dv0301Dao.DV030102(vo);
		return result;
	}

	public List<DV030101OVO> DV030111(DV030101IVO vo) {
		List<DV030101OVO> result = dv0301Dao.DV030111(vo);
		return result;
	}
	
	@Transactional
	public int DV030121(DV030101IVO vo) {
		int result = dv0301Dao.DV030141(vo);
		result = dv0301Dao.DV030121(vo);
		return result;
	}
	
	@Transactional
	public int DV030122(DV030102IVO vo) {

		int result = 0;
		
		String strtTaskId = "";
		String endTaskId = "";
		
		for (DV030102IVO.DV030102IVO_SUB dv030102ivo_sub : vo.getsPRG_INFO() ) {
			
			DV030101IVO dv030101ivo = new DV030101IVO();
			
			strtTaskId = dv030102ivo_sub.getsTASK_ID() + dv030102ivo_sub.getsSEG_ID() + dv030102ivo_sub.getsSEG_SUB_ID();
			
			dv030101ivo.setsDOMAIN_ID(vo.getsDOMAIN_ID());
			dv030101ivo.setsPRJT_ID(vo.getsPRJT_ID());
			dv030101ivo.setsTASK_ID(dv030102ivo_sub.getsTASK_ID());
			dv030101ivo.setsSEG_ID(dv030102ivo_sub.getsSEG_ID());
			dv030101ivo.setsSEG_SUB_ID(dv030102ivo_sub.getsSEG_SUB_ID());				
			dv030101ivo.setsPRG_ID(dv030102ivo_sub.getsPRG_ID());
			dv030101ivo.setsPRG_NM(dv030102ivo_sub.getsPRG_NM());
			dv030101ivo.setsPRG_EXTN(dv030102ivo_sub.getsPRG_EXTN());
			dv030101ivo.setsPRG_TYPE(dv030102ivo_sub.getsPRG_TYPE());
			dv030101ivo.setsDEV_USER_ID(dv030102ivo_sub.getsDEV_USER_ID());
			dv030101ivo.setsIMP_RT(dv030102ivo_sub.getsIMP_RT());
			dv030101ivo.setsBEFORE_PGM(dv030102ivo_sub.getsBEFORE_PGM());
			dv030101ivo.setsAFTER_PGM(dv030102ivo_sub.getsAFTER_PGM());
			dv030101ivo.setsPRJ_PLAN_STRT_DT(dv030102ivo_sub.getsPRJ_PLAN_STRT_DT());
			dv030101ivo.setsPRJ_PLAN_END_DT(dv030102ivo_sub.getsPRJ_PLAN_END_DT());
			dv030101ivo.setsPRJ_DEV_STRT_DT(dv030102ivo_sub.getsPRJ_DEV_STRT_DT());
			dv030101ivo.setsPRJ_DEV_END_DT(dv030102ivo_sub.getsPRJ_DEV_END_DT());
			dv030101ivo.setsTEST_PLAN_STRT_DT(dv030102ivo_sub.getsTEST_PLAN_STRT_DT());
			dv030101ivo.setsTEST_PLAN_END_DT(dv030102ivo_sub.getsTEST_PLAN_END_DT());
			dv030101ivo.setsTEST_DEV_STRT_DT(dv030102ivo_sub.getsTEST_DEV_STRT_DT());
			dv030101ivo.setsTEST_DEV_END_DT(dv030102ivo_sub.getsTEST_DEV_END_DT());
			dv030101ivo.setsDEV_USER_NM(dv030102ivo_sub.getsDEV_USER_NM());
			dv030101ivo.setsIMP_RT_NM(dv030102ivo_sub.getsIMP_RT_NM());
			dv030101ivo.setsPRG_TYPE_NM(dv030102ivo_sub.getsPRG_TYPE_NM());
			dv030101ivo.setsPROGRESS_RT(dv030102ivo_sub.getsPROGRESS_RT());
			dv030101ivo.setsPM_CNFM(dv030102ivo_sub.getsPM_CNFM());
			dv030101ivo.setsCUS_CNFM(dv030102ivo_sub.getsCUS_CNFM());


			if (!strtTaskId.equals(endTaskId)) {
				result  = dv0301Dao.DV030142(dv030101ivo);
			}
			
			result = dv0301Dao.DV030121(dv030101ivo);
			
			result  = dv0301Dao.DV030132(dv030101ivo);

			endTaskId = dv030102ivo_sub.getsTASK_ID() + dv030102ivo_sub.getsSEG_ID() + dv030102ivo_sub.getsSEG_SUB_ID();

		}

		return result;
	}

	@Transactional
	public int DV030141(DV030101IVO vo) {
		int result = dv0301Dao.DV030141(vo);
		return result;
	}
	
	public List<DV030101OVO> DV030152(CM004101IVO vo) {
		
		List<DV030101OVO> dv030101ovoList = new ArrayList<DV030101OVO>();
		
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
	
					DV030101OVO dv030101ovo = new DV030101OVO();
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
								
								logger.debug("strValue : " + strValue);
							}
							
							if (cellNum == 0)
								dv030101ovo.setsPRG_ID(strValue);
							else if (cellNum == 1)
								dv030101ovo.setsPRG_NM(strValue);
							else if (cellNum == 2)
								dv030101ovo.setsPRG_EXTN(strValue);
							else if (cellNum == 3) {
								dv030101ovo.setsPRG_TYPE(strValue);
								dv030101ovo.setsPRG_TYPE_NM(strValue);
							}
							else if (cellNum == 4) {
								dv030101ovo.setsIMP_RT(strValue);
								dv030101ovo.setsIMP_RT_NM(strValue);
							}
							else if (cellNum == 5)
								dv030101ovo.setsPRJ_PLAN_STRT_DT(strValue);
							else if (cellNum == 6)
								dv030101ovo.setsPRJ_PLAN_END_DT(strValue);
							else if (cellNum == 7)
								dv030101ovo.setsPRJ_DEV_STRT_DT(strValue);
							else if (cellNum == 8)
								dv030101ovo.setsPRJ_DEV_END_DT(strValue);
							else if (cellNum == 9)
								dv030101ovo.setsBEFORE_PGM(strValue);
							else if (cellNum == 10)
								dv030101ovo.setsAFTER_PGM(strValue);
							else if (cellNum == 11)
								dv030101ovo.setsTEST_PLAN_STRT_DT(strValue);
							else if (cellNum == 12)
								dv030101ovo.setsTEST_PLAN_END_DT(strValue);
							else if (cellNum == 13)
								dv030101ovo.setsTEST_DEV_STRT_DT(strValue);
							else if (cellNum == 14)
								dv030101ovo.setsTEST_DEV_END_DT(strValue);
							else if (cellNum == 15)
								dv030101ovo.setsDEV_USER_NM(strValue);
							else if (cellNum == 16)
								dv030101ovo.setsPROGRESS_RT(strValue);
						}

					}
					
					dv030101ovoList.add(dv030101ovo);
				}
			}else{
				XSSFWorkbook XLSXworkbook = new XSSFWorkbook(new FileInputStream(excelFile));
				XSSFSheet sheet = XLSXworkbook.getSheetAt(0) ;
				
				int strtRow  = sheet.getFirstRowNum() + 2;
				int endRow   = sheet.getLastRowNum();
				int cellsCnt = 0;

				for (int i=strtRow; i<=endRow; i++) {
	
					DV030101OVO  dv030101ovo = new DV030101OVO();
					Row row = sheet.getRow(i);		
					
					if (row != null){
						
						//cellsCnt = Xssrow.getPhysicalNumberOfCells();
						cellsCnt = row.getLastCellNum();
						
						for(int cellNum=0; cellNum< cellsCnt; cellNum++){

							String strValue = "";
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
								
								logger.debug("strValue : " + strValue);
							}
							
							if (cellNum == 0)
								dv030101ovo.setsPRG_ID(strValue);
							else if (cellNum == 1)
								dv030101ovo.setsPRG_NM(strValue);
							else if (cellNum == 2)
								dv030101ovo.setsPRG_EXTN(strValue);
							else if (cellNum == 3) {
								dv030101ovo.setsPRG_TYPE(strValue);
								dv030101ovo.setsPRG_TYPE_NM(strValue);
							}
							else if (cellNum == 4) {
								dv030101ovo.setsIMP_RT(strValue);
								dv030101ovo.setsIMP_RT_NM(strValue);
							}
							else if (cellNum == 5)
								dv030101ovo.setsPRJ_PLAN_STRT_DT(strValue);
							else if (cellNum == 6)
								dv030101ovo.setsPRJ_PLAN_END_DT(strValue);
							else if (cellNum == 7)
								dv030101ovo.setsPRJ_DEV_STRT_DT(strValue);
							else if (cellNum == 8)
								dv030101ovo.setsPRJ_DEV_END_DT(strValue);
							else if (cellNum == 9)
								dv030101ovo.setsBEFORE_PGM(strValue);
							else if (cellNum == 10)
								dv030101ovo.setsAFTER_PGM(strValue);
							else if (cellNum == 11)
								dv030101ovo.setsTEST_PLAN_STRT_DT(strValue);
							else if (cellNum == 12)
								dv030101ovo.setsTEST_PLAN_END_DT(strValue);
							else if (cellNum == 13)
								dv030101ovo.setsTEST_DEV_STRT_DT(strValue);
							else if (cellNum == 14)
								dv030101ovo.setsTEST_DEV_END_DT(strValue);
							else if (cellNum == 15)
								dv030101ovo.setsDEV_USER_NM(strValue);
							else if (cellNum == 16)
								dv030101ovo.setsPROGRESS_RT(strValue);
						}

					}
					dv030101ovoList.add(dv030101ovo);
				}
			}
		}  catch (Exception e){
			e.printStackTrace();
		} finally {
			excelFile.delete();
		}
		
		return dv030101ovoList;
	}
}
