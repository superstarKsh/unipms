<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
<%@ page import="java.util.*, java.io.File, java.io.IOException, com.oreilly.servlet.MultipartRequest, com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
 
<%
	String encType="utf-8";
	int sizeLimit=100*1024*1024;
	
	HashMap<String, String> path = new HashMap<String, String>();
	path.put("AD02"		, "upload/image");

	String rootPath = request.getSession().getServletContext().getRealPath("/").replace("WW", "/");
	
	try {
		String sCategory = request.getParameter("sCategory");
		String savePath = rootPath + path.get(sCategory);
		
		MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8");
		
		String originalFileName = multi.getOriginalFileName("uploadFile");
		String fileName = multi.getFilesystemName("uploadFile"); 
	
	} catch(IOException e){

	}
%>
