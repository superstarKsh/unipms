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
		var sPROCD_NO = '<%=(String) session.getAttribute("sPROCD_NO")%>';
		$("#sSEARCH_YN").val(sSEARCH_YN);
		$("#sPROCD_NO").val(sPROCD_NO);
	}

	fn_InitLoad();
};

function fn_InitLoad() {
	$("#sPROCD_DT").val(fn_GetDate('.'));
	$("#sPROCD_TIME").val(fn_GetHour());

	fn_SessionCheck();
};

function fn_SessionCheck() {
	if ($("#sSEARCH_YN").val() == 'Y') {
		var content = "";
		content += "sSEARCH_YN=N";
		
		fn_AjaxSendSesUrl(content, "pms_session_cf0201.jsp", null, fn_SelectPrjtInfo);
	}
};

function fn_Init_Clear() {
	window.location = "CF020102.jsp";
};

function fn_SelectPrjtInfo() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPROCD_NO : $("#sPROCD_NO").val()
	};
	
	fn_AjaxSend(sendData, "CF020113", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	var procdInfo = result.procdInfo;
	$("#sPROCD_DT").val(fn_SetDateType(procdInfo.sPROCD_DT));
	$("#sPROCD_NO").val(procdInfo.sPROCD_NO);
	$("#sPROCD_TIME").val(fn_SetTimeType(procdInfo.sPROCD_TIME));
	$("#sPROCD_PLACE").val(procdInfo.sPROCD_PLACE);
	$("#sTITLE").val(procdInfo.sTITLE);
	$("#sATT_USER").val(procdInfo.sATT_USER);
	$("#sCONTENTS").val(procdInfo.sCONTENTS);
	$("#sFILE_NM1").val(procdInfo.sFILE_NM1);
};

function fn_InsertPrjt() {
	oEditors.getById["sCONTENTS"].exec("UPDATE_CONTENTS_FIELD", []);
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sPROCD_DT : $("#sPROCD_DT").val().replace(/\./g,""),
		sPROCD_NO : $("#sPROCD_NO").val(),
		sPROCD_TIME : $("#sPROCD_TIME").val().replace(/\:/g,""),
		sPROCD_PLACE : $("#sPROCD_PLACE").val(),
		sTITLE : $("#sTITLE").val(),
		sATT_USER : $("#sATT_USER").val(),
		sCONTENTS : $("#sCONTENTS").val(),
		sFILE_NM1 : fn_GetFileName($("#sFILE_NM1").val())
	};
	
	fn_AjaxSend(sendData, "CF020121", fn_MoveToList, PMS_PROC_INSERT);
};

function fn_InsertPrjtFile() {
	fn_InsertUploadFile("CF02", fn_InsertPrjt);
};

$(function() {
    $( "#sPROCD_DT" ).datepicker(setCalendar);
});

function fn_MoveToList() {
	window.location = "CF020101.jsp";
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
			<jsp:include page="../common/layout_left_cf.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
    			<form name="contentsForm" enctype="multipart/form-data"  onsubmit="return false">
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[CF02] 회의록 작성</h2>
    		        <!-- END : title -->
    		        <!-- START : input table section -->
    		        <div class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
								<tr>
									<th class="w100"><pk>*</pk> 프로젝트ID</th>
									<td>
										<input type="text" class="txtinp w100" id="searchPrjtID" name="searchPrjtID" readOnly/>
										<input  type="text" class="txtinp w300" id="searchPrjtNM"  name="searchPrjtNM" readOnly/>
										<a href="javascript:fn_SearchPrjtInfo();" class="btn01">검 색</a>
									</td>
								</tr>
								<tr>
									<th class="w100">일시</th>
									<td >
										<input  type="text" class="txtinp w100" id="sPROCD_DT" name="sPROCD_DT"/>
										<input  type="text" class="txtinp w50" id="sPROCD_TIME" name="sPROCD_TIME"/>
									</td>
								</tr>
								<tr>	
									<th class="w100">장소</th>
									<td >
										<input  type="text" class="txtinp w700" id="sPROCD_PLACE" name="sPROCD_PLACE"/>
									</td>
								</tr>
								<tr>
									<th class="w100">주제</th>
									<td>
										<input  type="text" class="txtinp w700" id="sTITLE" name="sTITLE"/>
									</td>
								</tr>
								<tr>
									<th class="w100">참석자</th>
									<td>
										<input type="text" class="txtinp w700" id="sATT_USER" name="sATT_USER"/>
									</td>
								</tr>
								<tr>
									<th class="w100">내용</th>
    		                        <td>
    		                        	<textarea id="sCONTENTS" class="txtinp w700" cols="100" rows="5"  name="sCONTENTS" style="height:450px; display: none;" ></textarea>
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
											<input type="text" class="txtinp w590" id="sFILE_NM1" name="sFILE_NM1" readOnly/>
											<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sFILE_NM1').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>
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
					<input type="hidden" class="inputType" id="sPROCD_NO" name="sPROCD_NO"/>
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