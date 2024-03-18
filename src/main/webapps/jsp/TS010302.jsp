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
<!-- end : include common -->
<script type="text/javascript" src="../editor/js/HuskyEZCreator.js"></script>
<script type="text/javascript">

function fn_Init() {
	$("#container input[type=text], #container select, #container textarea").val("");

	$("#searchPrjtID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");
	$("#searchPrjtNM").val("<%=(String) session.getAttribute("sPRJT_NM")%>");
	$("#sTEST_STAGE").val("<%=(String) session.getAttribute("sTEST_STAGE")%>");
	$("#sUSER_ID").val("<%=(String) session.getAttribute("sUSER_ID")%>");

	var sSEARCH_YN = '<%=(String) session.getAttribute("sSEARCH_YN")%>';

	if (sSEARCH_YN != null && sSEARCH_YN=='Y') {
		$("#sSEARCH_YN").val(sSEARCH_YN);
		$("#sSEARCH_TEST_SCN_ID").val("<%=(String) session.getAttribute("sSEARCH_TEST_SCN_ID")%>");
		$("#sSEARCH_TEST_CASE_ID").val("<%=(String) session.getAttribute("sSEARCH_TEST_CASE_ID")%>");
		$("#sHISTORY_BACK").val("<%=(String) session.getAttribute("sHISTORY_BACK")%>");
	}

	fn_InitLoad();
};

function fn_InitLoad() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};

	fn_AjaxSend(sendData, "TS010301", fn_SetDataInitLoad, null);
};

function fn_SetDataInitLoad(result) {
	var selTestConfrm = '<option value="">선 택</option>';
	var selTestSvrt = '<option value="">선 택</option>';
		  	
	$.each(result.prjtTestSvrt,function(key, value) {
		selTestSvrt = selTestSvrt + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#sTEST_SVRT").empty().append(selTestSvrt);
	});
			
	$.each(yesNo_YN,function(key, value) {
		selTestConfrm = selTestConfrm + '<option value="' + value.value + '">' + value.label + '</option>';
		$("#sTEST_CONFRM").empty().append(selTestConfrm);
	});

	if ($("#sSEARCH_YN").val() == "Y") {
		$("#sTEST_SCN_ID").val($("#sSEARCH_TEST_SCN_ID").val());
		$("#sTEST_CASE_ID").val($("#sSEARCH_TEST_CASE_ID").val());
	}

	fn_SessionCheck();
};

function fn_Init_Clear() {
	window.location = "TS010302.jsp";
};

function fn_Init_Data() {
	$("#testSection input[type=text], #testSection select, #testSection textarea").val("");
	
	oEditors.getById["sTEST_DESC"].exec("SET_CONTENTS", [""]);
	oEditors.getById["sCORRT_DESC"].exec("SET_CONTENTS", [""]);
};

function fn_SessionCheck() {

	if ($("#sSEARCH_YN").val() == 'Y') {
		$("#sSEARCH_YN").val("");
		var content = "";
		content += "sSEARCH_YN=N";

		fn_AjaxSendSesUrl(content, "pms_session_ts0103.jsp", null, fn_SelectPrjtInfo);
	}
};

function fn_SelectPrjtInfo() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sTEST_SCN_ID : $("#sTEST_SCN_ID").val(),
		sTEST_CASE_ID : $("#sTEST_CASE_ID").val()
	};

	fn_AjaxSend(sendData, "TS010313", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	if (result.prjtTestDetailInfo != null && result.prjtTestDetailInfo != 'undefined') {
		var prjtTestDetailInfo = result.prjtTestDetailInfo;
		$("#sTEST_SCN_ID").val(prjtTestDetailInfo.sTEST_SCN_ID);
		$("#sTEST_CASE_ID").val(prjtTestDetailInfo.sTEST_CASE_ID);
		$("#sTEST_CASE_NM").val(prjtTestDetailInfo.sTEST_CASE_NM);
		$("#sTEST_CASE_DESC").val(prjtTestDetailInfo.sTEST_CASE_NM);
		$("#sTEST_INPUT_DATA").val(prjtTestDetailInfo.sTEST_INPUT_DATA);
		$("#sTEST_RSLT").val(prjtTestDetailInfo.sTEST_RSLT);

		if ($("#sUSER_ID").val() != prjtTestDetailInfo.sTEST_USER_ID) {
			document.getElementById("tTEST_USER_ID").innerHTML = fn_GetInputInnerHtml("sTEST_USER_NM", "sTEST_USER_ID");
			document.getElementById("tTEST_DT").innerHTML = fn_GetInputInnerHtml("sTEST_DT", null);
			document.getElementById("tTEST_CONFRM").innerHTML = fn_GetInputInnerHtml("sTEST_CONFRM", null);
			document.getElementById("tTEST_SVRT").innerHTML = fn_GetInputInnerHtml("sTEST_SVRT_NM", "sTEST_SVRT");
			document.getElementById("tTEST_DESC").innerHTML = fn_GetInnerHtml("sTEST_DESC", prjtTestDetailInfo.sTEST_DESC);
		}

		$("#sTEST_USER_ID").val(prjtTestDetailInfo.sTEST_USER_ID);
		$("#sTEST_USER_NM").val(prjtTestDetailInfo.sTEST_USER_NM);
		$("#sTEST_DT").val(fn_SetDateType(prjtTestDetailInfo.sTEST_DT, "."));
		$("#sTEST_CONFRM").val(prjtTestDetailInfo.sTEST_CONFRM);
		$("#sTEST_SVRT").val(prjtTestDetailInfo.sTEST_SVRT);
		$("#sTEST_SVRT_NM").val(prjtTestDetailInfo.sTEST_SVRT_NM);
		$("#sTEST_DESC").val(prjtTestDetailInfo.sTEST_DESC);

		if ($("#sTEST_DT").val() == "")
			document.getElementById("modSection").setAttribute("style", "display:none");

		if (prjtTestDetailInfo.sDEV_USER_ID != "" && $("#sUSER_ID").val() != prjtTestDetailInfo.sDEV_USER_ID) {
			document.getElementById("tDEV_USER_ID").innerHTML = fn_GetInputInnerHtml("sDEV_USER_NM", "sDEV_USER_ID");
			document.getElementById("tCORRT_SCHD_DT").innerHTML = fn_GetInputInnerHtml("sCORRT_SCHD_DT", null);
			document.getElementById("tCORRT_DT").innerHTML = fn_GetInputInnerHtml("sCORRT_DT", null);
			document.getElementById("tCORRT_DESC").innerHTML = fn_GetInnerHtml("sCORRT_DESC", prjtTestDetailInfo.sCORRT_DESC);
		}

		$("#sDEV_USER_ID").val(prjtTestDetailInfo.sDEV_USER_ID);
		$("#sDEV_USER_NM").val(prjtTestDetailInfo.sDEV_USER_NM);
		$("#sCORRT_SCHD_DT").val(fn_SetDateType(prjtTestDetailInfo.sCORRT_SCHD_DT, "."));
		$("#sCORRT_DT").val(fn_SetDateType(prjtTestDetailInfo.sCORRT_DT, "."));
		$("#sCORRT_DESC").val(prjtTestDetailInfo.sCORRT_DESC);
	}
};

function fn_InsertPrjt() {

	try {
		oEditors.getById["sTEST_DESC"].exec("UPDATE_CONTENTS_FIELD", []);
	} catch (exception) {	
	}
	try {
		oEditors.getById["sCORRT_DESC"].exec("UPDATE_CONTENTS_FIELD", []);
	} catch (exception) {	
	}

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sTEST_SCN_ID : $("#sTEST_SCN_ID").val(),
		sTEST_CASE_ID : $("#sTEST_CASE_ID").val(),
		sTEST_DT : $("#sTEST_DT").val(),
		sTEST_USER_ID : $("#sTEST_USER_ID").val(),
		sTEST_CONFRM : $("#sTEST_CONFRM option:selected").val(),
		sTEST_SVRT : $("#sTEST_SVRT option:selected").val(),
		sTEST_DESC : $("#sTEST_DESC").val(),
		sDEV_USER_ID : $("#sDEV_USER_ID").val(),
		sCORRT_SCHD_DT : $("#sCORRT_SCHD_DT").val(),
		sCORRT_DT : $("#sCORRT_DT").val(),
		sCORRT_DESC : $("#sCORRT_DESC").val()
	};

	fn_AjaxSend(sendData, "TS010331", fn_MoveToList, PMS_PROC_INSERT);
};

function pasteHTML(args){
	var sHTML = '<span><img src="../editor/uploadImg/'+args+'"></span>'; 
    oEditors.getById["sTEST_DESC"].exec("PASTE_HTML", [sHTML]); 
};

$(function() {
    $( "#sCORRT_SCHD_DT" ).datepicker(setCalendar);
    $( "#sCORRT_DT" ).datepicker(setCalendar);
});

$(function() {
    $( "#sTEST_DT" ).datepicker(setCalendar);
});

function fn_MoveToList() {
	var movePage = $("#sHISTORY_BACK").val();
	window.location = movePage + ".jsp";
};

function fn_SearchUser(args) {
	var popUpUrl = "PU010112.jsp?TS010302="+args; 
	window.open(popUpUrl,"",popupStyle);
};

</script>
</head>

<body onload="fn_Init();">
<div id="wrap">
	<!-- START : include -->
	<div>
		<jsp:include page="../common/layout_header.jsp" flush="true" />
	</div>
	<!-- END : include -->
	<div id="container">
		<div id="leftWrap">
			<jsp:include page="../common/layout_left_ts.jsp" flush="true" />
		</div>
	   	<div class="content">
    		<div class="cont">
    			<!-- Form -->
    		    <div class="fixbox">
					<!-- START : title -->
    		        <h2>[TS01] 통합테스트 결과 등록</h2>
    		        <!-- END : title -->
					<!-- START : search section -->
    		        <div id="searchSection" class="section">
    		            <div class="search">
    		                <div class="box">
    		                    <ul>
    		                        <li class="name"><span>프로젝트ID</span></li>
    		                        <li><input type="text" class="txtinp w100" id="searchPrjtID" name="searchPrjtID" readOnly/></li>
    		                        <li><input type="text" class="txtinp w300" id="searchPrjtNM"  name="searchPrjtNM" readOnly/></li>
    		                    </ul>
    		                </div>
    		            </div><!--//search-->
    		        </div><!--//section-->
    		        <!-- START : input table section -->
    		        <div id="section" class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
	    		                    <th class="w120"><pk>*</pk> 테스트시나리오 ID</th>
	    		                    <td>
	    		                        <input type="text" class="txtinpd" id="sTEST_SCN_ID" name="sTEST_SCN_ID" readOnly/>
	    		                    </td>
	    		                    <th class="w120"><pk>*</pk> 테스트케이스 ID</th>
	    		                    <td>
	    		                        <input type="text" class="txtinpd" id="sTEST_CASE_ID" name="sTEST_CASE_ID" readOnly/>
	    		                    </td>
	    		                </tr>
	    		                <tr>
	    		                    <th class="w120">테스트케이스 명</th>
	    		                    <td colspan="3">
	    		                        <input type="text" class="txtinpd" id="sTEST_CASE_NM" name="sTEST_CASE_NM" readOnly/>
	    		                    </td>
	    		                </tr>
	    		                <tr>
	    		                    <th class="w120">테스트케이스 설명</th>
	    		                    <td colspan="3">
	    		                        <input type="text" class="txtinpd" id="sTEST_CASE_DESC" name="sTEST_CASE_DESC" readOnly></textarea>
	    		                    </td>
	    		                </tr>
	    		                <tr>
	    		                    <th class="w120">입력 데이터</th>
	    		                    <td colspan="3">
	    		                        <input type="text" class="txtinpd" id="sTEST_INPUT_DATA" name="sTEST_INPUT_DATA" readOnly></textarea>
	    		                    </td>
	    		                </tr>
	    		                <tr>
	    		                    <th class="w120">예상결과</th>
	    		                    <td colspan="3">
	    		                        <input type="text" class="txtinpd" id="sTEST_RSLT" name="sTEST_RSLT" readOnly></textarea>
	    		                    </td>
	    		                </tr>
							</tbody>
    		            </table>
    		        </div><!--//section-->
					<div id="testSection" class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
	    		                <tr>
	    		                    <th class="w120">테스트담당자</th>
	    		                    <td id="tTEST_USER_ID">
	    		                        <input type="text" class="txtinp w100" id="sTEST_USER_NM" name="sTEST_USER_NM" readOnly/>
	    		                        <input type="hidden" class="txtinp w100" id="sTEST_USER_ID" name="sTEST_USER_ID"/>
										<a href="javascript:fn_SearchUser('sTEST_USER_ID');" class="btn01">검 색</a>
	    		                    </td>
	    		                    <th class="w120">테스트일자</th>
	    		                    <td id="tTEST_DT">
	    		                        <input type="text" class="txtinp w100" id="sTEST_DT" name="sTEST_DT" readOnly/>
	    		                    </td>
	    		                </tr>
    		                    <tr>
    		                        <th class="w120">테스트결과</th>
    		                        <td id="tTEST_CONFRM">
    		                        	<select class="selectbox" id="sTEST_CONFRM" name="sTEST_CONFRM">
										</select>
    		                        </td>
    		                        <th class="w120">심각도</th>
    		                        <td id="tTEST_SVRT">
    		                        	<select class="selectbox" id="sTEST_SVRT" name="sTEST_SVRT">
										</select>
										<input type="hidden" class="txtinp w100" id="sTEST_SVRT_NM" name="sTEST_SVRT_NM"/>
    		                        </td>
								</tr>
    		                    <tr>
    		                        <th class="w120">테스트 내용</th>
    		                        <td id="tTEST_DESC" colspan="3">
    		                        	<textarea class="txtinp w700" cols="100" rows="5"  id="sTEST_DESC" name="sTEST_DESC" style="height:300px; display: none;" ></textarea>
	    		                        <script type="text/javascript">
												var oEditors = [];
												nhn.husky.EZCreator.createInIFrame({
												oAppRef: oEditors,
												elPlaceHolder: "sTEST_DESC",
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
					<div id="modSection" class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                	<tr>
    		                        <th class="w120">담당자</th>
    		                        <td id="tDEV_USER_ID" colspan="3">
    		                        	<ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sDEV_USER_NM" name="sDEV_USER_NM" readOnly/></li>
	    		                            <li><a href="javascript:fn_SearchUser('sDEV_USER_ID');" class="btn01">검색</a></li>
	    		                            <li><input type="hidden" class="txtinp w100" id="sDEV_USER_ID" name="sDEV_USER_ID"/></li>
										</ul>
    		                        </td>
								</tr>
    		                    <tr>
    		                        <th class="w120">수정예정일자</th>
    		                        <td id="tCORRT_SCHD_DT">
                                        <input type="text" class="txtinp w100" id="sCORRT_SCHD_DT" name="sCORRT_SCHD_DT"/>
                                    </td>
                                    <th class="w120">수정완료일자</th>
    		                        <td id="tCORRT_DT">
    		                        	<input type="text" class="txtinp w100" id="sCORRT_DT" name="sCORRT_DT"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w120">담당자의견</th>
    		                        <td id="tCORRT_DESC" colspan="3">
    		                        	<textarea class="txtinp w700" cols="100" rows="5" id="sCORRT_DESC" name="sCORRT_DESC" style="height:300px; display: none;"></textarea>
	    		                        <script type="text/javascript">
		    		                        var oEditors2 = [];
		    								nhn.husky.EZCreator.createInIFrame({
		    								oAppRef: oEditors,
		    								elPlaceHolder: "sCORRT_DESC",
		    								sSkinURI: "../editor/SmartEditor3Skin.html",
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
    		                <li><a href="javascript:fn_Init_Data();" class="btnimg02">초기화</a></li>
    		                <li><a href="javascript:fn_InsertPrjt();" class="btnimg03">저장</a></li>
    		            </ul>
    		        </div><!--//section-->
				</div><!--//pixbox-->
    		   	<div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sTEST_STAGE" name="sTEST_STAGE"/>
					<input type="hidden" class="inputType" id="sSEARCH_YN" name="sSEARCH_YN"/>
					<input type="hidden" class="inputType" id="sSEARCH_TEST_SCN_ID" name="sSEARCH_TEST_SCN_ID"/>
					<input type="hidden" class="inputType" id="sSEARCH_TEST_CASE_ID" name="sSEARCH_TEST_CASE_ID"/>
					<input type="hidden" class="inputType" id="sHISTORY_BACK" name="sHISTORY_BACK"/>
					<input type="hidden" class="inputType" id="sUSER_ID" name="sUSER_ID"/>
				</div>
    		</div><!--//cont-->
		</div><!--//content-->
    </div><!--//container-->
	<div>
		<iframe id="dnjsp" name="dnjsp" frameborder="0" width="0" height="0"></iframe>
	</div>
</div><!--//wrap-->
<!--footer-->
<div id="footer">
	<jsp:include page="../common/layout_footer.jsp" flush="true" />
</div><!--//footer-->
</body>
</html>