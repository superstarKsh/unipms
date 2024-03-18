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
var sSEARCH_YN;

function fn_Init() {
	$("#container input[type=text], #container select, #container textarea").val("");

	$("#searchPrjtID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");
	$("#searchPrjtNM").val("<%=(String) session.getAttribute("sPRJT_NM")%>");
	$("#sUSER_ID").val("<%=(String) session.getAttribute("sUSER_ID")%>");
	$("#sUSER_NM").val("<%=(String) session.getAttribute("sUSER_NM")%>");
	
	var sSEARCH_YN = "<%=(String) session.getAttribute("sSEARCH_YN")%>";
	
	if (sSEARCH_YN != null && sSEARCH_YN=='Y') {
		$("#sSEARCH_YN").val(sSEARCH_YN);
		$("#sSEARCH_TASK_ID").val("<%=(String) session.getAttribute("sSEARCH_TASK_ID")%>");
		$("#sSEARCH_SEG_ID").val("<%=(String) session.getAttribute("sSEARCH_SEG_ID")%>");
		$("#sSEARCH_SEG_SUB_ID").val("<%=(String) session.getAttribute("sSEARCH_SEG_SUB_ID")%>");
		$("#sSEARCH_PRG_ID").val("<%=(String) session.getAttribute("sSEARCH_PRG_ID")%>");
	}
	
	fn_InitLoad();
};

function fn_InitLoad() {

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};

	fn_AjaxSend(sendData, "TS030101", fn_SetDataInitLoad, null);
};

function fn_SetDataInitLoad(result) {
	var selTestConfrm = '<option value="">선 택</option>';
	var selTestSvrt = '<option value="">선 택</option>';

	$.each(result.prjtDevTestInfo,function(key, value) {
		selTestSvrt = selTestSvrt + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#sTEST_SVRT").empty().append(selTestSvrt);
	});
	$.each(yesNo_YN,function(key, value) {
		selTestConfrm = selTestConfrm + '<option value="' + value.value + '">' + value.label + '</option>';
		$("#sTEST_CONFRM").empty().append(selTestConfrm);
	});

	fn_SessionCheck();
};

function fn_Init_Clear() {
	window.location = "TS030102.jsp";
};

function fn_SessionCheck() {
	sSEARCH_YN = $("#sSEARCH_YN").val();
	$("#sTASK_ID").val($("#sSEARCH_TASK_ID").val());
	$("#sSEG_ID").val($("#sSEARCH_SEG_ID").val());
	$("#sSEG_SUB_ID").val($("#sSEARCH_SEG_SUB_ID").val());
	$("#sPRG_ID").val($("#sSEARCH_PRG_ID").val());
	
	if ($("#sSEARCH_YN").val() == "Y") {
		var content = "";
		content += "sSEARCH_YN=N";
		
		fn_AjaxSendSesUrl(content, "pms_session_ts0301.jsp", null, fn_SelectPrjtInfo);
	}
};

function fn_SelectPrjtInfo() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sTASK_ID : $("#sTASK_ID").val(),
		sSEG_ID : $("#sSEG_ID").val(),
		sSEG_SUB_ID : $("#sSEG_SUB_ID").val(),
		sPRG_ID : $("#sPRG_ID").val()
	};

	fn_AjaxSend(sendData, "TS030113", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	var prjtDevTestInfo = result.prjtDevTestInfo;
		  		
	$("#sTASK_ID").val(prjtDevTestInfo.sTASK_ID);
	$("#sTASK_NM").val(prjtDevTestInfo.sTASK_NM);
	$("#sSEG_ID").val(prjtDevTestInfo.sSEG_ID);
	$("#sSEG_NM").val(prjtDevTestInfo.sSEG_NM);
	$("#sSEG_SUB_ID").val(prjtDevTestInfo.sSEG_SUB_ID);
	$("#sSEG_SUB_NM").val(prjtDevTestInfo.sSEG_SUB_NM);
	$("#sPRG_ID").val(prjtDevTestInfo.sPRG_ID);
	$("#sPRG_NM").val(prjtDevTestInfo.sPRG_NM);
	$("#sPRJ_DEV_STRT_DT").val(fn_SetDateType(prjtDevTestInfo.sPRJ_DEV_STRT_DT));
	$("#sPRJ_DEV_END_DT").val(fn_SetDateType(prjtDevTestInfo.sPRJ_DEV_END_DT));
	$("#sTEST_PLAN_STRT_DT").val(fn_SetDateType(prjtDevTestInfo.sTEST_PLAN_STRT_DT));
	$("#sTEST_PLAN_END_DT").val(fn_SetDateType(prjtDevTestInfo.sTEST_PLAN_END_DT));
	$("#sTEST_INPUT_DATA").val(prjtDevTestInfo.sTEST_INPUT_DATA);
	$("#sTEST_RSLT").val(prjtDevTestInfo.sTEST_RSLT);
	$("#sTEST_USER_ID").val(prjtDevTestInfo.sTEST_USER_ID);
	$("#sTEST_USER_NM").val(prjtDevTestInfo.sTEST_USER_NM);
	$("#sTEST_DT").val(fn_SetDateType(prjtDevTestInfo.sTEST_DT));
	$("#sTEST_CONFRM").val(prjtDevTestInfo.sTEST_CONFRM);
	$("#sTEST_SVRT").val(prjtDevTestInfo.sTEST_SVRT);
	$("#sTEST_DESC").val(prjtDevTestInfo.sTEST_DESC);
	$("#sDEV_USER_ID").val(prjtDevTestInfo.sDEV_USER_ID);
	$("#sDEV_USER_NM").val(prjtDevTestInfo.sDEV_USER_NM);
	$("#sCORRT_SCHD_DT").val(fn_SetDateType(prjtDevTestInfo.sCORRT_SCHD_DT));
	$("#sCORRT_DT").val(fn_SetDateType(prjtDevTestInfo.sCORRT_DT));
	$("#sCORRT_DESC").val(prjtDevTestInfo.sCORRT_DESC);

	if ($("#sTEST_USER_ID").val() == "") {
		$("#sTEST_USER_ID").val($("#sUSER_ID").val());
		$("#sTEST_USER_NM").val($("#sUSER_NM").val());
	}
			
	if ($("#sDEV_USER_ID").val() == "") {
		$("#sDEV_USER_ID").val($("#sUSER_ID").val());
		$("#sDEV_USER_NM").val($("#sUSER_NM").val());
	}
};

function fn_InsertPrjt() {
	oEditors.getById["sTEST_DESC"].exec("UPDATE_CONTENTS_FIELD", []);
	oEditors.getById["sCORRT_DESC"].exec("UPDATE_CONTENTS_FIELD", []);

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sTASK_ID : $("#sTASK_ID").val(),
		sSEG_ID : $("#sSEG_ID").val(),
		sSEG_SUB_ID : $("#sSEG_SUB_ID").val(),
		sPRG_ID : $("#sPRG_ID").val(),
		sTEST_INPUT_DATA : $("#sTEST_INPUT_DATA").val(),
		sTEST_RSLT : $("#sTEST_RSLT").val(),
		sTEST_USER_ID : $("#sTEST_USER_ID").val(),
		sTEST_DT : $("#sTEST_DT").val(),
		sTEST_CONFRM : $("#sTEST_CONFRM").val(),
		sTEST_SVRT : $("#sTEST_SVRT").val(),
		sTEST_DESC : $("#sTEST_DESC").val(),
		sDEV_USER_ID : $("#sDEV_USER_ID").val(),
		sCORRT_SCHD_DT : $("#sCORRT_SCHD_DT").val(),
		sCORRT_DT : $("#sCORRT_DT").val(),
		sCORRT_DESC : $("#sCORRT_DESC").val()
	};

	fn_AjaxSend(sendData, "TS030121", fn_MoveToList, PMS_PROC_INSERT);
};

function pasteHTML(args){
	var sHTML = '<span><img src="../editor/uploadImg/'+args+'"></span>'; 
    oEditors.getById["sTEST_DESC"].exec("PASTE_HTML", [sHTML]); 
};

function fn_MoveToList() {
	window.location = "TS030101.jsp";
};

$(function() {
    $( "#sTEST_DT" ).datepicker(setCalendar);
    $( "#sCORRT_SCHD_DT" ).datepicker(setCalendar);
    $( "#sCORRT_DT" ).datepicker(setCalendar);
});

function fn_SearchPrjtInfo() {
	window.open("PU010101.jsp","",popupStyle);
};

function fn_SearchUser(args) {
	var popUpUrl = "PU010112.jsp?TS030102="+args; 
	window.open(popUpUrl,"",popupStyle);
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
			<jsp:include page="../common/layout_left_ts.jsp" flush="true" />
		</div>
	   	<div class="content">
    		<div class="cont">
    			<!-- Form -->
    		    <div class="fixbox">
					<!-- START : title -->
    		        <h2>[TS03] 단위테스트 결과등록</h2>
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
	    		                    <th class="w100"><pk>*</pk> TASK ID</th>
    		                        <td colspan="3">
										<input type="text" class="txtinp w100" id="sTASK_ID" name="sTASK_ID" readonly/>
										<input type="text" class="txtinp w400" id="sTASK_NM" name="sTASK_NM" readonly/>
    		                        </td>
	    		                </tr>
    		                    <tr>
    		                        <th class="w100">SEG ID</th>
    		                        <td colspan="3">
										<input type="text" class="txtinp w100" id="sSEG_ID" name="sSEG_ID" readonly/>
										<input type="text" class="txtinp w400" id="sSEG_NM" name="sSEG_NM" readonly/>
    		                        </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">SEG SUB ID</th>
    		                        <td colspan="3">
										<input type="text" class="txtinp w100" id="sSEG_SUB_ID" name="sSEG_SUB_ID" readonly/>
										<input type="text" class="txtinp w400" id="sSEG_SUB_NM" name="sSEG_SUB_NM" readonly/>
    		                        </td>
    		                    </tr>
    		                    <tr>
    		                    	<th class="w100">프로그램명</th>
    		                        <td colspan="3">
										<input type="text" class="txtinp w100" id="sPRG_ID" name="sPRG_ID" readonly/>
										<input type="text" class="txtinp w400" id="sPRG_NM" name="sPRG_NM" readonly/>
    		                        </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">개발시작일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sPRJ_DEV_STRT_DT" name="sPRJ_DEV_STRT_DT" readonly/>
    		                        </td>
    		                        <th class="w100">개발종료일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sPRJ_DEV_END_DT" name="sPRJ_DEV_END_DT" readonly/>
    		                        </td>
								</tr>
   								<tr>
    		                        <th class="w100">테스트 시작예정일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sTEST_PLAN_STRT_DT" name="sTEST_PLAN_STRT_DT" readonly/>
    		                        </td>
    		                        <th class="w100">테스트 종료예정일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sTEST_PLAN_END_DT" name="sTEST_PLAN_END_DT" readonly/>
    		                        </td>
								</tr>
								<tr>
	    		                    <th class="w120">입력 데이터</th>
	    		                    <td colspan="3">
	    		                        <textarea class="txtinp wp99" cols="100" rows="7" name="sTEST_INPUT_DATA" id="sTEST_INPUT_DATA"></textarea>
	    		                    </td>
	    		                </tr>
	    		                <tr>
	    		                    <th class="w120">예상결과</th>
	    		                    <td colspan="3">
	    		                        <textarea class="txtinp wp99" cols="100" rows="5" name="sTEST_RSLT" id="sTEST_RSLT"></textarea>
	    		                    </td>
	    		                </tr>
	    		                <tr>
	    		                    <th class="w120">테스트담당자</th>
	    		                    <td>
	    		                        <input type="text" class="txtinp w100" name="sTEST_USER_NM" id="sTEST_USER_NM" readOnly/>
	    		                        <input type="hidden" class="txtinp w100" name="sTEST_USER_ID" id="sTEST_USER_ID"/>
										<a href="javascript:fn_SearchUser('sTEST_USER_ID');" class="btn01">검 색</a>
	    		                    </td>
	    		                    <th class="w120">테스트일자</th>
	    		                    <td>
	    		                        <input type="text" class="txtinp w100" name="sTEST_STRT_DT" id="sTEST_DT"/>
	    		                    </td>
	    		                </tr>
    		                    <tr>
    		                        <th class="w120">테스트결과</th>
    		                        <td>
    		                        	<select class="selectbox" id="sTEST_CONFRM" name="sTEST_CONFRM">
										</select>
    		                        </td>
    		                        <th class="w120">심각도</th>
    		                        <td>
    		                        	<select class="selectbox" id="sTEST_SVRT" name="sTEST_SVRT">
										</select>
    		                        </td>
								</tr>
    		                    <tr>
    		                        <th class="w120">테스트 내용</th>
    		                        <td colspan="3">
    		                        	<textarea id="sTEST_DESC" class="txtinp w700" cols="100" rows="5"  name="sTEST_DESC" style="height:300px; display: none;" ></textarea>
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
    		                    <tr>
    		                        <th class="w120">담당자</th>
    		                        <td colspan="3">
    		                        	<ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sDEV_USER_NM" name="sDEV_USER_NM" readOnly/></li>
	    		                            <li><a href="javascript:fn_SearchUser('sDEV_USER_ID');" class="btn01">검색</a></li>
	    		                            <li><input type="hidden" class="txtinp w100" id="sDEV_USER_ID" name="sDEV_USER_ID"/></li>
										</ul>
    		                        </td>
								</tr>
    		                    <tr>
    		                        <th class="w120">수정예정일자</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" name="sCORRT_SCHD_DT" id="sCORRT_SCHD_DT"/>
                                    </td>
                                    <th class="w120">수정완료일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sCORRT_DT" id="sCORRT_DT"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w120">담당자의견</th>
    		                        <td colspan="3">
    		                        	<textarea id="sCORRT_DESC" class="txtinp w700" cols="100" rows="5"  name="sCORRT_DESC" style="height:300px; display: none;"></textarea>
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
    		                <li><a href="javascript:fn_InsertPrjt();" class="btnimg03">저장</a></li>
    		            </ul>
    		        </div><!--//section-->
			</div><!--//pixbox-->
    		   	<div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sSEARCH_YN" name="sSEARCH_YN"/>
					<input type="hidden" class="inputType" id="sSEARCH_TASK_ID" name="sSEARCH_TASK_ID"/>
					<input type="hidden" class="inputType" id="sSEARCH_SEG_ID" name="sSEARCH_SEG_ID"/>
					<input type="hidden" class="inputType" id="sSEARCH_SEG_SUB_ID" name="sSEARCH_SEG_SUB_ID"/>
					<input type="hidden" class="inputType" id="sSEARCH_PRG_ID" name="sSEARCH_PRG_ID"/>
					<input type="hidden" class="inputType" id="sUSER_ID" name="sUSER_ID"/>
					<input type="hidden" class="inputType" id="sUSER_NM" name="sUSER_NM"/>
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
</div>
<!--//footer-->


</body>
</html>