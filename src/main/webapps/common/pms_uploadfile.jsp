<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
<%@ page import="java.util.*, java.io.File, java.io.IOException, com.oreilly.servlet.MultipartRequest, com.oreilly.servlet.multipart.DefaultFileRenamePolicy, com.unique.common.Cache.GetSharedCache, com.unique.common.Message.ConstantMessage"%>
 
<%
	String encType="utf-8";
	int sizeLimit=100*1024*1024;
	
	HashMap<String, String> path = new HashMap<String, String>();
	path.put("AD04"		,"/pms_templet/output/devtemplet");
	path.put("MG01IN"	,"/upload/output/mngoutput");
	path.put("MG01OUT"	,"/upload/file");
	path.put("MG11"		,"/pms_templet/output/mngtemplet");
	path.put("MG12"		,"/pms_templet/output/mngtemplet");
	path.put("MG13"		,"/upload/output/mngoutput");
	path.put("DV0211"	,"/upload/file");
	path.put("DV03"		,"/upload/file");
	path.put("DV0311"	,"/upload/file");
	path.put("DV05"		,"/pms_templet/output/devtemplet");
	path.put("DV06"		,"/upload/output/devoutput");
	path.put("CF01"		,"/upload/report");
	path.put("CF02"		,"/upload/proceeding");
	path.put("CF03"		,"/upload/issue");
	path.put("TS0102"	,"/upload/file");
	path.put("NT01"		,"/upload/notice");
	path.put("NT02"		,"/upload/freeboard");

	String rootPath = GetSharedCache.getCacheServiceInfo(ConstantMessage.FILE_BASE_PATH);
	
	try {
		String sCategory = request.getParameter("sCategory");
		String savePath = rootPath + path.get(sCategory);
		
		MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8");
		
		String originalFileName = multi.getOriginalFileName("uploadFile");
		String fileName = multi.getFilesystemName("uploadFile"); 
	
	} catch(IOException e){

	}
%>
