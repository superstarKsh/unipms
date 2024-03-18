<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
<%@ page import="java.util.*, java.io.*, java.io.File, java.io.IOException, com.oreilly.servlet.MultipartRequest, com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%

StringBuffer buffer = new StringBuffer();
String filename = "";
String rootPath = request.getSession().getServletContext().getRealPath("/").replace("WW", "/");
String savePath = rootPath + "editor/uploadImg";


if(request.getContentLength() > 10*1024*1024 ){

%>
	<script>alert("업로드 용량(총 10Mytes)을 초과하였습니다.");history.back();</script>
<%
	return;
} else {
	MultipartRequest multi=new MultipartRequest(request, savePath, 10*1024*1024, "UTF-8", new DefaultFileRenamePolicy());

	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat ("yyyy_MM_dd_HHmmss", java.util.Locale.KOREA);
	int cnt = 1;

	String upfile = multi.getFilesystemName("Filedata");

	if (upfile != null && !upfile.equals("")) {
		String dateString = formatter.format(new java.util.Date());
		String moveFileName = dateString + upfile.substring(upfile.lastIndexOf(".") );
		String fileExt = upfile.substring(upfile.lastIndexOf(".") + 1);
		File sourceFile = new File(savePath + File.separator + upfile);
		File targetFile = new File(savePath + File.separator + moveFileName);
		sourceFile.renameTo(targetFile);
		filename = moveFileName;
		
		System.out.println("filename : " + filename);
		System.out.println("savePath : " + savePath);
		
%>
		<form id="fileform" name="fileform" method="post">
			<input type="hidden" name="filename" value="<%=filename%>">
			<input type="hidden" name="uploadPath" value="<%=savePath%>">
			<input type="hidden" name="uploadFile" value="<%=targetFile%>">
		</form>
<%
	}
}
%>

<script type="text/javascript">

	function fileAttach(){ 
		f = document.fileform;
	    fcode = f.filename.value;
	    try{
            opener.parent.pasteHTML(fcode); 
	    }catch(e){ 
            alert("error : "+ e );
	    } 
	} 
	fileAttach();
	this.window.close();
</script>
