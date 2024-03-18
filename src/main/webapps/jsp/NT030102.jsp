<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<script type="text/javascript" src="../editor/js/HuskyEZCreator.js"></script>
<!-- end : include common -->

<script type="text/javascript">

function fn_Init() {
	$("#container input[type=text], #container select, #container textarea").val("");

	$("#sPRJT_ID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");
	$("#sUSER_ID").val("<%=(String) session.getAttribute("sUSER_ID")%>");
	
	var sSEARCH_YN = '<%=(String) session.getAttribute("sSEARCH_YN")%>';
	
	if (sSEARCH_YN != null && sSEARCH_YN=='Y') {
		$("#sSEARCH_YN").val(sSEARCH_YN);
		$("#sSEQ_NO").val('<%=(String) session.getAttribute("sSEQ_NO")%>');
		$("#sCURR_DT").val(fn_SetDateType('<%=(String) session.getAttribute("sCURR_DT")%>'));
	}

	fn_InitLoad();
};

function fn_InitLoad() {
	$("#sDPL_TYPE").empty();
	
	var sendData = {
		sPRJT_ID : $("#sPRJT_ID").val()
	};

	fn_AjaxSend(sendData, "NT030101", fn_SetDataInitLoad, null);
};

function fn_SetDataInitLoad(result) {
	var selDplType = '<option value="">선 택</option>';
	$.each(result.diaryDisplay,function(key, value) {
		selDplType = selDplType + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#sDPL_TYPE").empty().append(selDplType);
	});

	fn_SessionCheck();
};

function fn_SessionCheck() {
	if ($("#sSEARCH_YN").val() == 'Y') {
		$("#sSEARCH_YN").val("");
		var content = "";
		content += "sSEARCH_YN=N";
		
		fn_AjaxSendSesUrl(content, "pms_session_nt0301.jsp", null, fn_SelectPrjtInfo);
	}else{
		$("#sCURR_DT").val(fn_GetDate('.'));
		$("#sDIARY_TIME").val(fn_GetHour());
	}	
};

function fn_Init_Clear() {
	window.location = "NT030102.jsp";
};

function fn_SelectPrjtInfo() {

	$("#sDIARY_TIME").val(fn_GetHour());

	var sendData = {
		sPRJT_ID : $("#sPRJT_ID").val(),
		sUSER_ID : $("#sUSER_ID").val(),
		sCURR_DT : $("#sCURR_DT").val(),
		sSEQ_NO : $("#sSEQ_NO").val()
	};

	fn_AjaxSend(sendData, "NT030113", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	if (result.diaryInfo != null && result.diaryInfo != 'undefined') {
		var diaryInfo = result.diaryInfo;				
		$("#sSEQ_NO").val(diaryInfo.sSEQ_NO);
		$("#sDPL_TYPE").val(diaryInfo.sDPL_TYPE);
		$("#sDIARY_TIME").val(fn_SetTimeType(diaryInfo.sDIARY_TIME));
		$("#sTITLE").val(diaryInfo.sTITLE);
		$("#sCONTENTS").val(diaryInfo.sCONTENTS);
	}
};

function fn_InsertPrjt() {
	oEditors.getById["sCONTENTS"].exec("UPDATE_CONTENTS_FIELD", []);
	
	var sendData = {
		sPRJT_ID : $("#sPRJT_ID").val(),
		sUSER_ID : $("#sUSER_ID").val(),
		sCURR_DT : $("#sCURR_DT").val(),
		sSEQ_NO : $("#sSEQ_NO").val(),
		sDIARY_TIME : $("#sDIARY_TIME").val(),
		sTITLE : $("#sTITLE").val(),
		sCONTENTS : $("#sCONTENTS").val(),
		sDPL_TYPE : $("#sDPL_TYPE").val()
	};

	fn_AjaxSend(sendData, "NT030121", fn_MoveToList, PMS_PROC_INSERT);
};

function fn_DeletePrjt() {
	var sendData = {
		sPRJT_ID : $("#sPRJT_ID").val(),
		sUSER_ID : $("#sUSER_ID").val(),
		sCURR_DT : $("#sCURR_DT").val(),
		sSEQ_NO : $("#sSEQ_NO").val()
	};

	fn_AjaxSend(sendData, "NT030141", fn_MoveToList, PMS_PROC_DELETE);
};

$(function() {
    $( "#sCURR_DT" ).datepicker(setCalendar);
});

function fn_MoveToList() {
	window.location = "NT030101.jsp";
};

function pasteHTML(args){
	var sHTML = '<span><img src="../editor/uploadImg/'+args+'"></span>'; 
    oEditors.getById["sCONTENTS"].exec("PASTE_HTML", [sHTML]); 
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
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[NT03] 다이어리</h2>
    		        <!-- END : title -->

					<!-- START : input table section -->
    		        <div class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100"><pk>*</pk> 일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sCURR_DT" id="sCURR_DT"/>
    		                        </td>
    		                        <th class="w100">시간</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sDIARY_TIME" id="sDIARY_TIME"/>
    		                        </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">공유설정</th>
    		                        <td>
    		                        	<select class="selectbox" name="selectbox" id="sDPL_TYPE" name="sDPL_TYPE">
										</select>
    		                        </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">제목</th>
    		                        <td colspan="3">
    		                        	<input type="text" class="txtinp w700" name="sTITLE" id="sTITLE"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">내용</th>
    		                        <td colspan="3">
                                        <textarea class="txtinp w700" id="sCONTENTS" name="sCONTENTS" style="height:500px; display: none;"></textarea>
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
    		               </tbody>
    		            </table>
    		        </div><!--//section-->
    		        <!-- END : input table section -->

					<!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_MoveToList();" class="btnimg03">목록</a></li>
    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
    		                <li><a href="javascript:fn_InsertPrjt();" class="btnimg03">저장</a></li>
    		                <li><a href="javascript:fn_DeletePrjt();" class="btnimg04">삭제</a></li>
    		            </ul>
    		        </div><!--//section-->
    		        <!-- END : button section -->

    		    </div><!--//pixbox-->
    		    <div id="hiddenColumn">
    		     	<input type="hidden" class="inputType" id="sPRJT_ID" name="sPRJT_ID"/>
					<input type="hidden" class="inputType" id="sUSER_ID" name="sUSER_ID"/>
					<input type="hidden" class="inputType" id="sSEARCH_YN" name="sSEARCH_YN"/>
					<input type="hidden" class="inputType" id="sSEQ_NO" name="sSEQ_NO"/>
				</div>
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