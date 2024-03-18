<%@page import="java.io.FileInputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.io.File, java.io.IOException, java.io.BufferedOutputStream, java.io.BufferedInputStream, com.unique.common.Cache.GetSharedCache, com.unique.common.Message.ConstantMessage"%>

<%
	HashMap<String, String> path = new HashMap<String, String>();
	path.put("AD04" 		, "/pms_templet/output/devtemplet");
	path.put("MN01_RP" 		, "/upload/report");
	path.put("MN01_IS" 		, "/upload/issue");
	path.put("MG02"	    	, "/upload/output/mngoutput");
	path.put("MG11" 		, "/pms_templet/output/mngtemplet");
	path.put("MG12" 		, "/pms_templet/output/mngtemplet");
	path.put("MG13" 		, "/upload/output/mngoutput");
	path.put("DV0211" 		, "/pms_templet/devtemplet");
	path.put("DV03" 		, "/pms_templet/devtemplet");
	path.put("DV0311" 		, "/upload/file");
	path.put("DV0311_TL"	, "/pms_templet/devtemplet");
	path.put("DV04" 		, "/upload/file");
	path.put("DV05" 		, "/pms_templet/output/devtemplet");
	path.put("DV06" 		, "/upload/output/devoutput");
	path.put("TS0102" 		, "/pms_templet/devtemplet");
	path.put("CF01" 		, "/upload/report");
	path.put("CF02" 		, "/upload/proceeding");
	path.put("CF03" 		, "/upload/issue");
	path.put("NT01" 		, "/upload/notice");
	path.put("NT02" 		, "/upload/freeboard");
	
	String sCategory = request.getParameter("sCategory");
	
	String strFileNm = new String(request.getParameter("filename").getBytes("8859_1"),"UTF-8");
	
	String rootPath = GetSharedCache.getCacheServiceInfo(ConstantMessage.FILE_BASE_PATH);
	String filePath = rootPath + path.get(sCategory);
	
	String downFile = filePath + File.separator + strFileNm;
	
	File file = null;
	BufferedInputStream bis = null;
	BufferedOutputStream bos = null;
	
	try {
		
		file = new File(downFile);
	
		response.setContentType("application/octet-stream");
		response.setHeader("Content-Transfer-Encoding", "binary");
		
	   	response.setHeader("Content-Disposition", "attachment; filename=" + java.net.URLEncoder.encode(file.getName(),"UTF-8").replaceAll("\\+", "%20") + ";");
	
	    if (file != null) {
	
	    	out.clear();
	    	out = pageContext.pushBody();
	
	    	bis = new BufferedInputStream(new FileInputStream(file));
	    	bos = new BufferedOutputStream(response.getOutputStream());
	
			int read = 0;
	 
			while ((read = bis.read()) != -1) {
				bos.write(read);
			}
	    }
	    
	} catch (Exception e) {
		
	} finally {
		if (bis != null) bis.close();
		if (bos != null) bos.close();
	}
%>

