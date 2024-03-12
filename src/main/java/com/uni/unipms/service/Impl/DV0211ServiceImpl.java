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
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uni.unipms.dao.DV0201Dao;
import com.uni.unipms.dao.DV0211Dao;
import com.uni.unipms.model.In.CM004101IVO;
import com.uni.unipms.model.In.DV020101IVO;
import com.uni.unipms.model.In.DV020103IVO;
import com.uni.unipms.model.In.DV020105IVO;
import com.uni.unipms.model.In.DV021101IVO;
import com.uni.unipms.model.Out.DV021101OVO;
import com.uni.unipms.service.DV0211Service;

@Service
public class DV0211ServiceImpl implements DV0211Service {

	final static Logger logger = LoggerFactory.getLogger(DV0211ServiceImpl.class);
	
	@Autowired
	private DV0201Dao dv0201Dao;

	@Autowired
	private DV0211Dao dv0211Dao;
	
	public List<DV021101OVO> DV021111(DV021101IVO vo) {
		List<DV021101OVO> result = dv0211Dao.DV021111(vo);
		return result;
	}

	@Transactional
	public int DV021122(DV021101IVO vo) {
		
		int result = dv0211Dao.DV021142(vo);
		result = dv0211Dao.DV021142A(vo);
		result = dv0211Dao.DV021142B(vo);
		
		for (DV021101IVO.DV021101IVO_SUB DV021101ivo_sub : vo.getsPRJT_TASK_INFO() ) {

			if(!"".equals(DV021101ivo_sub.getsTASK_ID())) {
				
				if("".equals(DV021101ivo_sub.getsSEG_ID())) {
					DV020101IVO dv020101ivo = new DV020101IVO();
					
					dv020101ivo.setsPRJT_ID(vo.getsPRJT_ID());
					dv020101ivo.setsPRJT_STAGE(vo.getsPRJT_STAGE());
					dv020101ivo.setsTASK_ID(DV021101ivo_sub.getsTASK_ID());
					dv020101ivo.setsTASK_NM(DV021101ivo_sub.getsTASK_NM());
					dv020101ivo.setsTASK_DESC(DV021101ivo_sub.getsTASK_DESC());
					dv020101ivo.setsSTRT_DT(DV021101ivo_sub.getsSTRT_DT());
					dv020101ivo.setsEND_DT(DV021101ivo_sub.getsEND_DT());
					dv020101ivo.setsCORP_MNG_ID(DV021101ivo_sub.getsCORP_MNG_ID());
					dv020101ivo.setsCORP_MNG_NM(DV021101ivo_sub.getsCORP_MNG_NM());
					dv020101ivo.setsDEF_YN(DV021101ivo_sub.getsDEF_YN());

					result = dv0201Dao.DV020121(dv020101ivo);

				} else {
					if("".equals(DV021101ivo_sub.getsSEG_SUB_ID())) {
						DV020103IVO dv020103ivo = new DV020103IVO();
						
						dv020103ivo.setsPRJT_ID(vo.getsPRJT_ID());
						dv020103ivo.setsPRJT_STAGE(vo.getsPRJT_STAGE());
						dv020103ivo.setsTASK_ID(DV021101ivo_sub.getsTASK_ID());
						dv020103ivo.setsSEG_ID(DV021101ivo_sub.getsSEG_ID());
						dv020103ivo.setsSEG_NM(DV021101ivo_sub.getsTASK_NM());
						dv020103ivo.setsSEG_DESC(DV021101ivo_sub.getsTASK_DESC());
						dv020103ivo.setsSTRT_DT(DV021101ivo_sub.getsSTRT_DT());
						dv020103ivo.setsEND_DT(DV021101ivo_sub.getsEND_DT());
						dv020103ivo.setsCORP_MNG_ID(DV021101ivo_sub.getsCORP_MNG_ID());
						dv020103ivo.setsCORP_MNG_NM(DV021101ivo_sub.getsCORP_MNG_NM());
						dv020103ivo.setsDEF_YN(DV021101ivo_sub.getsDEF_YN());
						
						result = dv0201Dao.DV020121A(dv020103ivo);
					} else {
						DV020105IVO dv020105ivo = new DV020105IVO();
						
						dv020105ivo.setsPRJT_ID(vo.getsPRJT_ID());
						dv020105ivo.setsPRJT_STAGE(vo.getsPRJT_STAGE());
						dv020105ivo.setsTASK_ID(DV021101ivo_sub.getsTASK_ID());
						dv020105ivo.setsSEG_ID(DV021101ivo_sub.getsSEG_ID());
						dv020105ivo.setsSEG_SUB_ID(DV021101ivo_sub.getsSEG_SUB_ID());
						dv020105ivo.setsSEG_SUB_NM(DV021101ivo_sub.getsTASK_NM());
						dv020105ivo.setsSEG_SUB_DESC(DV021101ivo_sub.getsTASK_DESC());
						dv020105ivo.setsSTRT_DT(DV021101ivo_sub.getsSTRT_DT());
						dv020105ivo.setsEND_DT(DV021101ivo_sub.getsEND_DT());
						dv020105ivo.setsCORP_MNG_ID(DV021101ivo_sub.getsCORP_MNG_ID());
						dv020105ivo.setsCORP_MNG_NM(DV021101ivo_sub.getsCORP_MNG_NM());
						dv020105ivo.setsDEF_YN(DV021101ivo_sub.getsDEF_YN());
						
						result = dv0201Dao.DV020121B(dv020105ivo);
					}
				}
				
			}

		}

		result = dv0211Dao.DV021131(vo);
		result = dv0211Dao.DV021131A(vo);
		result = dv0211Dao.DV021131B(vo);

		return result;
	}
	
	public List<DV021101OVO> DV021152(CM004101IVO vo) {
		
		List<DV021101OVO> DV021101ovoList = new ArrayList<DV021101OVO>();
		
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
	
					DV021101OVO  DV021101ovo = new DV021101OVO();
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
								
								logger.debug("strValue : " + cellNum);
							} else {
								System.out.println("###"+cellNum);
							}
	
							if (cellNum == 0)
								DV021101ovo.setsTASK_ID(strValue);
							else if (cellNum == 1)
								DV021101ovo.setsSEG_ID(strValue);
							else if (cellNum == 2)
								DV021101ovo.setsSEG_SUB_ID(strValue);
							else if (cellNum == 3)
								DV021101ovo.setsTASK_NM(strValue);
							else if (cellNum == 4)
								DV021101ovo.setsTASK_DESC(strValue);
							else if (cellNum == 5)
								DV021101ovo.setsCORP_MNG_NM(strValue);
							else if (cellNum == 6)
								DV021101ovo.setsSTRT_DT(strValue);
							else if (cellNum == 7)
								DV021101ovo.setsEND_DT(strValue);
							else if (cellNum == 8)
								DV021101ovo.setsDEF_YN(strValue);
						}
	
					}
					
					DV021101ovoList.add(DV021101ovo);
				}
			}else{
				XSSFWorkbook XLSXworkbook = new XSSFWorkbook(new FileInputStream(excelFile));
				XSSFSheet sheet = XLSXworkbook.getSheetAt(0) ;
				
				int strtRow  = sheet.getFirstRowNum() + 1;
				int endRow   = sheet.getLastRowNum();
				int cellsCnt = 0;
	
				for (int i=strtRow; i<=endRow; i++) {
	
					DV021101OVO  DV021101ovo = new DV021101OVO();
					
					XSSFRow Xssrow = sheet.getRow(i);		
					
					if (Xssrow != null){
						
						//cellsCnt = Xssrow.getPhysicalNumberOfCells();
						cellsCnt = Xssrow.getLastCellNum();
						
						for(int cellNum=0; cellNum< cellsCnt; cellNum++){
	
							String strValue = "";
							
							XSSFCell cell = Xssrow.getCell(cellNum);
							
							if(null != cell) {
								switch (cell.getColumnIndex()) {
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
								DV021101ovo.setsTASK_ID(strValue);
							else if (cellNum == 1)
								DV021101ovo.setsSEG_ID(strValue);
							else if (cellNum == 2)
								DV021101ovo.setsSEG_SUB_ID(strValue);
							else if (cellNum == 3)
								DV021101ovo.setsTASK_NM(strValue);
							else if (cellNum == 4)
								DV021101ovo.setsTASK_DESC(strValue);
							else if (cellNum == 5)
								DV021101ovo.setsCORP_MNG_NM(strValue);
							else if (cellNum == 6)
								DV021101ovo.setsSTRT_DT(strValue);
							else if (cellNum == 7)
								DV021101ovo.setsEND_DT(strValue);
							else if (cellNum == 8)
								DV021101ovo.setsDEF_YN(strValue);
						}
					}
					DV021101ovoList.add(DV021101ovo);
				}
			}
		}  catch (Exception e){
		    e.printStackTrace();
		} finally {
			excelFile.delete();
		}
		
		return DV021101ovoList;
	 }
	
}
