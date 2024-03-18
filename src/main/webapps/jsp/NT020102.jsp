<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- start : meta -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<!-- end : meta -->

<title></title>

<!-- start : include common -->
<jsp:include page="../common/inc_common.jsp" flush="true" />
<!-- end : include common -->
<script type="text/javascript" src="../editor/js/HuskyEZCreator.js"></script>

<script type="text/javascript">

function fn_Init() {
	$("#container input[type=text], #container select, #container textarea").val("");

	$("#searchPrjtID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");
	$("#searchPrjtNM").val("<%=(String) session.getAttribute("sPRJT_NM")%>");
	
	var sSEARCH_YN = '<%=(String) session.getAttribute("sSEARCH_YN")%>';
	
	if (sSEARCH_YN != null && sSEARCH_YN=='Y') {
		var sSEQ_NO = '<%=(String) session.getAttribute("sSEARCH_BOARD_SEQ_NO")%>';
		$("#sSEARCH_YN").val(sSEARCH_YN);
		$("#sSEQ_NO").val(sSEQ_NO);
	}
	
	$("#sUSER_ID").val('<%=(String) session.getAttribute("sUSER_ID")%>');

	fn_InitLoad();
};

function fn_InitLoad() {
	fn_SessionCheck();
};

function fn_SessionCheck() {
	
	if ($("#sSEARCH_YN").val() =='Y') {

		var content = "";
		content += "sSEARCH_YN=N";
		
		fn_AjaxSendSesUrl(content, "pms_session_nt0201.jsp", null, fn_SetDataSessionCheck);
	}
};

function fn_SetDataSessionCheck() {
	return;
};

function fn_Init_Clear() {
	window.location = "NT020102.jsp";
};

function fn_File_Clear() {
	if (brswType == 1) {
		document.getElementById("uploadFile").select();
		document.selection.clear();
	} else {
		$("#uploadFile").val("");
	}
};

function fn_InsertPrjt() {
	oEditors.getById["sCONTENTS"].exec("UPDATE_CONTENTS_FIELD", []);
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sSEQ_NO : $("#sSEQ_NO").val(),
		sTITLE : $("#sTITLE").val(),
		sCONTENTS : $("#sCONTENTS").val(),
		sREG_USER_ID : $("#sUSER_ID").val(),
		sFILE_NM : fn_GetFileName($("#sFILE_NM").val())
	};

	fn_AjaxSend(sendData, "NT020121", fn_MoveToList, PMS_PROC_INSERT);
};

function fn_InsertPrjtFile() {
	fn_InsertUploadFile("NT02", fn_InsertPrjt);
};

$(function() {
    $( "#sREG_DT" ).datepicker(setCalendar);
});

function fn_MoveToList() {
	window.location = "NT020101.jsp";
};

function pasteHTML(args){
	var sHTML = '<span><img src="../editor/uploadImg/'+args+'"></span>'; 
    oEditors.getById["sCONTENTS"].exec("PASTE_HTML", [sHTML]); 
};

function fn_SearchPrjtInfo() {
	window.open("PU010101.jsp","",popupStyle);
};

</script>
</head>

<body onload="fn_Init();" oncontextmenu="return false">
<div id="wrap">

	<!-- START : include -->
	<div>
		<jsp:include page="../common/layout_header.jsp" flush="true" />
	</div>
	<!-- END : include -->

	<div id="container">

		<div id="leftWrap">
			<jsp:include page="../common/layout_left_nt.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
    			<!-- Form -->
				<form name="contentsForm" enctype="multipart/form-data"  onsubmit="return false">
	     		    <div class="fixbox">
	
						<!-- START : title -->
	    		        <h2>[NT02] 자유게시판등록</h2>
	    		        <!-- END : title -->
	
						<!-- START : search section -->
	    		        <div class="section">
	    		            <div class="search">
	    		                <div class="box">
	    		                    <ul>
	    		                        <li class="name"><span>프로젝트ID</span></li>
	    		                        <li><input type="text" class="txtinp w100" id="searchPrjtID" name="searchPrjtID" readOnly/></li>
	    		                        <li><input type="text" class="txtinp w300" id="searchPrjtNM"  name="searchPrjtNM" readOnly/></li>
	    		                        <li><a href="javascript:fn_SearchPrjtInfo();" class="btn01">검색</a></li>
	    		                    </ul>
	    		                </div>
	    		            </div><!--//search-->
	    		        </div><!--//section-->
	    		        
	    		        <!-- END : search section -->
	
						<!-- START : input table section -->
	    		        <div class="section">
	    		            <table class="table01" border="0" cellspacing="0" summary="">
	    		                <tbody>
	    		                    <tr>
	    		                        <th class="w100">제목</th>
	    		                        <td colspan="3">
	                                        <input type="text" class="txtinp w700" id="sTITLE" name="sTITLE"/>
	                                    </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w100">내용</th>
	    		                        <td colspan="3">
	                                        <textarea class="txtinp w700" id="sCONTENTS" name="sCONTENTS" style="height:400px; display: none;"></textarea>
	                                        <script type="text/javascript">
													var oEditors = [];
													nhn.husky.EZCreator.createInIFrame({
													oAppRef: oEditors,
													elPlaceHolder: "sCONTENTS",
													sSkinURI: "../editor/SmartEditor2Skin.html",
													fCreator: "createSEditor2",
													htParams: {fOnBeforeUnload : function(){}}
													});
											</script>
	                                    </td>
	    		                    </tr>
	    		                    <tr>
										<th>첨부파일</th>
										<td colspan="3">
											<div class="inputfile">
												<input type="text" class="txtinp w590" id="sFILE_NM" name="sFILE_NM" readOnly/>
												<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sFILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>
											</div>
										</td>
									</tr>
	    		                </tbody>
	    		            </table>
	    		        </div><!--//section-->
	    		        <!-- END : input table section -->
	
						<!-- START : button section -->
	    		        <div class="section">
	    		            <ul class="btnbox right">
	    		                <li><a href="javascript:fn_MoveToList();" class="btnimg03">목록</a></li>
	    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
	    		                <li><a href="javascript:fn_InsertPrjtFile();" class="btnimg03">저장</a></li>
	    		            </ul>
	    		        </div><!--//section-->
	
	    		    </div><!--//pixbox-->
	    		    <div id="hiddenColumn">
		    		    <input type="hidden" class="inputType" id="sSEARCH_YN" name="sSEARCH_YN"/>
	    		    	<input type="hidden" class="inputType" id="sSEQ_NO" name="sSEQ_NO"/>
						<input type="hidden" class="inputType" id="sUSER_ID" name="sUSER_ID"/>
					</div>
				</form>
    		</div><!--//cont-->
		</div><!--//content-->
    </div><!--//container-->
</div><!--//wrap-->
<!--footer-->
<div id="footer">
	<jsp:include page="../common/layout_footer.jsp" flush="true" />
</div><!--//footer-->
</body>
</html>