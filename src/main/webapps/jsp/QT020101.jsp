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
<script type="text/javascript" src="../editor/js/HuskyEZCreator.js"></script>
<!-- end : include common -->

<script type="text/javascript">
function fn_Init() {
	$("#container input[type=text], #container select, #container textarea").val("");

	$("#searchPrjtID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");
	$("#searchPrjtNM").val("<%=(String) session.getAttribute("sPRJT_NM")%>");

	var sSEARCH_YN = '<%=(String) session.getAttribute("sSEARCH_YN")%>';
	
	if (sSEARCH_YN != null && sSEARCH_YN=='Y') {
		
		var sQULTY_ID = '<%=(String) session.getAttribute("sQULTY_ID")%>';
		var sQULTY_TITLE = '<%=(String) session.getAttribute("sQULTY_TITLE")%>';
		var sQULTY_CNTL_ID = '<%=(String) session.getAttribute("sQULTY_CNTL_ID")%>';

		$("#sSEARCH_YN").val(sSEARCH_YN);
		$("#sQULTY_ID").val(sQULTY_ID);
		$("#sQULTY_TITLE").val(sQULTY_TITLE);
		$("#sQULTY_CNTL_ID").val(sQULTY_CNTL_ID);
	}

	fn_InitLoad();
};

function fn_InitLoad() {
	var selYesNoYn = '<option value="">선 택</option>';
	$.each(yesNo_YN,function(key, value) {
		selYesNoYn = selYesNoYn + '<option value="' + value.label + '">' + value.value + '</option>';
		$("#sCONFRM_YN").empty().append(selYesNoYn);
	});

	fn_SessionCheck();
};

function fn_SessionCheck() {
	
	if ($("#sSEARCH_YN").val() == 'Y') {
		$("#sSEARCH_YN").val("");

		var content = "";
		content += "sSEARCH_YN=N";

		fn_AjaxSendSesUrl(content, "pms_session_qt0201.jsp", null, fn_SelectPrjtInfo);
	}
};

function fn_Init_Clear() {
	window.location = "QT020101.jsp";
};

function fn_SelectInitID () {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sQULTY_ID : $("#sQULTY_ID").val()
	};

	fn_AjaxSend(sendData, "QT020102", fn_SetDataSelectInitID, null);
};

function fn_SetDataSelectInitID(result) {
	var qultyID = result.qultyID;
	$("#sQULTY_CNTL_ID").val(qultyID.sQULTY_CNTL_ID);
};

function fn_SelectPrjtInfo() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sQULTY_ID : $("#sQULTY_ID").val(),
		sQULTY_CNTL_ID : $("#sQULTY_CNTL_ID").val()
	};

	fn_AjaxSend(sendData, "QT020113", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	var qultyInfo = result.qultyInfo;
		    
	if (qultyInfo == null)
    	return;
    else {
		$("#sQULTY_CNTL_ID").val(qultyInfo.sQULTY_CNTL_ID);
		$("#sTITLE").val(qultyInfo.sTITLE);
		$("#sSTRT_DT").val(qultyInfo.sSTRT_DT);
		$("#sCNTL_DT").val(fn_SetDateType(qultyInfo.sCNTL_DT));
		$("#sCNTL_USER_NM").val(qultyInfo.sCNTL_USER_NM);
		$("#sCNTL_USER_ID").val(qultyInfo.sCNTL_USER_ID);
		$("#sCNTL_DESC").val(qultyInfo.sCNTL_DESC);
		$("#sCORRT_DT").val(qultyInfo.sCORRT_DT);
		$("#sCONFRM_DT").val(fn_SetDateType(qultyInfo.sCONFRM_DT));
		$("#sCONFRM_YN").val(qultyInfo.sCONFRM_YN);
		$("#sISSUE_DESC").val(qultyInfo.sISSUE_DESC);
		$("#sDEV_USER_NM").val(qultyInfo.sDEV_USER_NM);
		$("#sDEV_USER_ID").val(qultyInfo.sDEV_USER_ID);
		$("#sCORRT_SCHD_DT").val(fn_SetDateType(qultyInfo.sCORRT_SCHD_DT));
		$("#sCORRT_DT").val(fn_SetDateType(qultyInfo.sCORRT_DT));
		$("#sCORRT_DESC").val(qultyInfo.sCORRT_DESC);
    }
};

function fn_InsertPrjt() {
	oEditors.getById["sCNTL_DESC"].exec("UPDATE_CONTENTS_FIELD", []);
	oEditors2.getById["sISSUE_DESC"].exec("UPDATE_CONTENTS_FIELD", []);
	oEditors3.getById["sCORRT_DESC"].exec("UPDATE_CONTENTS_FIELD", []);
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sQULTY_ID : $("#sQULTY_ID").val(),
		sQULTY_CNTL_ID : $("#sQULTY_CNTL_ID").val(),
		sTITLE : $("#sTITLE").val(),
		sCNTL_DESC : $("#sCNTL_DESC").val(),
		sISSUE_DESC : $("#sISSUE_DESC").val(),
		sCNTL_DT : $("#sCNTL_DT").val(),
		sCNTL_USER_ID : $("#sCNTL_USER_ID").val(),
		sDEV_USER_ID : $("#sDEV_USER_ID").val(),
		sCORRT_DESC : $("#sCORRT_DESC").val(),
		sCORRT_SCHD_DT : $("#sCORRT_SCHD_DT").val(),
		sCORRT_DT : $("#sCORRT_DT").val(),
		sCONFRM_YN : $("#sCONFRM_YN").val(),
		sCONFRM_DT : $("#sCONFRM_DT").val()
	};

	fn_AjaxSend(sendData, "QT020121", fn_Init_Clear, PMS_PROC_INSERT);
};

function fn_DeletePrjt() {
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sQULTY_ID : $("#sQULTY_ID").val(),
		sQULTY_CNTL_ID : $("#sQULTY_CNTL_ID").val()
	};

	fn_AjaxSend(sendData, "QT020141", fn_Init_Clear, PMS_PROC_DELETE);
};

$(function() {
    $( "#sCNTL_DT" ).datepicker(setCalendar);
    $( "#sCONFRM_DT" ).datepicker(setCalendar);
    $( "#sCORRT_SCHD_DT" ).datepicker(setCalendar);
    $( "#sCORRT_DT" ).datepicker(setCalendar);
});

function fn_SearchPrjtInfo() {
	window.open("PU010101.jsp","",popupStyle);
};

function fn_SearchUser(args) {
	var popUpUrl = "PU010112.jsp?QT020101="+args; 
	window.open(popUpUrl,"",popupStyle);
};

function fn_SearchQultyInfo() {
	window.open("PU010141.jsp","",popupStyle);
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
			<jsp:include page="../common/layout_left_qt.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[QT02] 품질관리</h2>
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
    		        <div class="section">
                        <ul class="btnbox right">
                        	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
                     	</ul>
                    </div>
    		        <!-- END : search section -->

					<!-- START : input table section -->
    		        <div class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100"><pk>*</pk> 품질관리 일정</th>
    		                        <td colspan="3">
                                        <ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sQULTY_ID" name="sQULTY_ID" readOnly/></li>
	    		                            <li><input type="text" class="txtinp w400" id="sQULTY_TITLE" name="sQULTY_TITLE" readOnly/></li>
	    		                            <li><a href="javascript:fn_SearchQultyInfo();" class="btn01">검색</a></li>
										</ul>
                                    </td>
    		                    </tr>
    		                </tbody>
    		            </table>
    		        </div>
    		        <div class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100"><pk>*</pk> 품질점검 ID</th>
    		                        <td colspan="3">
    		                        	<input type="text" class="txtinp w100"  id="sQULTY_CNTL_ID" name="sQULTY_CNTL_ID"/>
    		                        </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">품질점검 제목</th>
    		                        <td colspan="3">
    		                        	<input type="text" class="txtinp w700"  id="sTITLE" name="sTITLE"/>
                                    </td>
    		                    </tr>
    		                    <tr>
                                    <th class="w100">점검일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sCNTL_DT" name="sCNTL_DT"/>
                                    </td>
    		                        <th class="w100">점검자</th>
    		                        <td>
                                        <ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sCNTL_USER_NM" name="sCNTL_USER_NM" readOnly/></li>
	    		                            <li><a href="javascript:fn_SearchUser('sCNTL_USER_ID');" class="btn01">검색</a></li>
	    		                            <li><input type="hidden" class="txtinp w100" id="sCNTL_USER_ID" name="sCNTL_USER_ID"/></li>
										</ul>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">점검사항</th>
    		                        <td colspan="3">
										<textarea class="txtinp w700" id="sCNTL_DESC" name="sCNTL_DESC" style="height:150px; display: none;"></textarea>
									</td>
									<script type="text/javascript">
											var oEditors = [];
											nhn.husky.EZCreator.createInIFrame({
											oAppRef: oEditors,
											elPlaceHolder: "sCNTL_DESC",
											sSkinURI: "../editor/SmartEditor3Skin.html",
											fCreator: "createSEditor2",
											htParams: {fOnBeforeUnload : function(){}}
											});
									</script>
    		                    </tr>
    		                    <tr>
                                    <th class="w100">점검완료일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sCONFRM_DT" name="sCONFRM_DT"/>
                                    </td>
    		                        <th class="w100">점검완료구분</th>
    		                        <td>
                                        <select class="selectbox" name="selectbox" id="sCONFRM_YN" name="sCONFRM_YN">
										</select>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">결함사항</th>
    		                        <td colspan="3">
										<textarea class="txtinp w700" id="sISSUE_DESC" name="sISSUE_DESC" style="height:150px; display: none;"></textarea>
									</td>
									<script type="text/javascript">
											var oEditors2 = [];
											nhn.husky.EZCreator.createInIFrame({
											oAppRef: oEditors2,
											elPlaceHolder: "sISSUE_DESC",
											sSkinURI: "../editor/SmartEditor3Skin.html",
											fCreator: "createSEditor2",
											htParams: {fOnBeforeUnload : function(){}}
											});
									</script>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">담당자</th>
    		                        <td colspan="3">
                                        <ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sDEV_USER_NM" name="sDEV_USER_NM" readOnly/></li>
	    		                            <li><a href="javascript:fn_SearchUser('sDEV_USER_ID');" class="btn01">검색</a></li>
	    		                            <li><input type="hidden" class="txtinp w100" id="sDEV_USER_ID" name="sDEV_USER_ID"/></li>
										</ul>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                    	<th class="w100">수정예정일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sCORRT_SCHD_DT" name="sCORRT_SCHD_DT"/>
                                    </td>
    		                        <th class="w100">수정완료일자</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" id="sCORRT_DT" name="sCORRT_DT"/>
                                    </td>
                                </tr>
    		                    <tr>
    		                        <th class="w100">담당자의견</th>
    		                        <td colspan="3">
										<textarea class="txtinp w700"  id="sCORRT_DESC" name="sCORRT_DESC" style="height:150px; display: none;"></textarea>
									</td>
									<script type="text/javascript">
											var oEditors3 = [];
											nhn.husky.EZCreator.createInIFrame({
											oAppRef: oEditors3,
											elPlaceHolder: "sCORRT_DESC",
											sSkinURI: "../editor/SmartEditor3Skin.html",
											fCreator: "createSEditor2",
											htParams: {fOnBeforeUnload : function(){}}
											});
									</script>
    		                    </tr>
    		                </tbody>
    		            </table>
    		        </div><!--//section-->
    		        <!-- END : input table section -->

					<!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
    		                <li><a href="javascript:fn_InsertPrjt();" class="btnimg03">저장</a></li>
    		                <li><a href="javascript:fn_DeletePrjt();" class="btnimg04">삭제</a></li>
    		            </ul>
    		        </div><!--//section-->

    		    </div><!--//pixbox-->
    		    <div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sSEARCH_YN" name="sSEARCH_YN"/>
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