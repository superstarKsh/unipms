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

<script type="text/javascript">
function fn_Init() {
	
	$("#container input[type=text], #container select, #container textarea").val("");

	$("#searchCoopID").val('<%=(String) session.getAttribute("sSEARCH_COOP_ID")%>');
	$("#searchCoopNM").val('<%=(String) session.getAttribute("sSEARCH_COOP_NM")%>');

	fn_InitLoad();
};

function fn_InitLoad() {

	var sendData = {
	};

	fn_AjaxSend(sendData, "AD030102", fn_SetDataInitLoad, null);
};

function fn_SetDataInitLoad(result) {
	var coopID = result.coopID;
	$("#sCOOP_ID").val(coopID.sCOOP_ID);

	var selCoopTypeInfo = '<option value="99">선 택</option>';
	$.each(result.coopType,function(key, value) {
		selCoopTypeInfo = selCoopTypeInfo + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';
		$("#sCOOP_TYPE").empty().append(selCoopTypeInfo);
	});

	if($("#searchCoopID").val() != "" ){
		fn_SelectPrjtInfo();
	}
};

function fn_Init_Clear() {
	var content = "";
	content += "sSEARCH_YN=N";
	
	fn_AjaxSendSesUrl(content, "pms_session_ad0301.jsp", "AD030101.jsp?p=" + paramP, null);
};

function fn_SelectPrjtInfo() {

	var sendData = {
		sCOOP_ID : $("#searchCoopID").val()
	};
	
	fn_AjaxSend(sendData, "AD030113", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	var coopInfo = result.coopInfo;
	if (coopInfo == null)
		return;

	$("#sCOOP_ID").val(coopInfo.sCOOP_ID);
	$("#sCOOP_NM").val(coopInfo.sCOOP_NM);
	$("#sCOOP_REG_NUM").val(coopInfo.sCOOP_REG_NUM);
	$("#sCOOP_TYPE").val(coopInfo.sCOOP_TYPE);
	$("#sPHONE_NUM").val(coopInfo.sPHONE_NUM);
	$("#sFAX_NUM").val(coopInfo.sFAX_NUM);
	$("#sCOOP_EMAIL").val(coopInfo.sCOOP_EMAIL);
	$("#sCOOP_HOMEPAGE").val(coopInfo.sCOOP_HOMEPAGE);
	$("#sZIP_CD_JI").val(coopInfo.sZIP_CD_JI);
	$("#sADDR_JI").val(coopInfo.sADDR_JI);
	$("#sZIP_CD_DO").val(coopInfo.sZIP_CD_DO);
	$("#sADDR_DO").val(coopInfo.sADDR_DO);
};

function fn_InsertPrjt() {
	var sendData = {
		sCOOP_ID : $("#sCOOP_ID").val(),
		sCOOP_NM : $("#sCOOP_NM").val(),
		sCOOP_REG_NUM : $("#sCOOP_REG_NUM").val(),
		sCOOP_TYPE : $("#sCOOP_TYPE option:selected").val(),
		sPHONE_NUM : $("#sPHONE_NUM").val(),
		sFAX_NUM : $("#sFAX_NUM").val(),
		sCOOP_EMAIL : $("#sCOOP_EMAIL").val(),
		sCOOP_HOMEPAGE : $("#sCOOP_HOMEPAGE").val(),
		sZIP_CD_JI : $("#sZIP_CD_JI").val(),
		sADDR_JI : $("#sADDR_JI").val(),
		sZIP_CD_DO : $("#sZIP_CD_DO").val(),
		sADDR_DO : $("#sADDR_DO").val()
	};

	fn_AjaxSend(sendData, "AD030121", fn_Init_Clear, PMS_PROC_INSERT);
};

function fn_DeletePrjt() {

	var sendData = {
		sCOOP_ID : $("#sCOOP_ID").val()
	};

	fn_AjaxSend(sendData, "AD030141", fn_Init_Clear, PMS_PROC_DELETE);
};

function fn_MoveToList() {
	var content = "";
	content += "sSEARCH_YN=N";
	
	fn_AjaxSendSesUrl(content, "pms_session_ad0301.jsp", "AD030101.jsp?p=" + paramP, null);
};

function fn_SearchCoop(args) {
	window.open("PU010121.jsp","",popupStyle);
};

</script>
</head>

<%
	String getParam = request.getParameter("p");
%>
<body onload="fn_Init();" oncontextmenu="return false">
<div id="wrap">

	<!-- START : include -->
	<div>
<%
	if ("AD".equals(getParam)) {
%>
		<jsp:include page="../common/layout_header_admin.jsp" flush="true" />
<%
	} else {
%>
		<jsp:include page="../common/layout_header.jsp" flush="true" />
<%
	}
%>
	</div>
	<!-- END : include -->

	<div id="container">

		<div id="leftWrap">
<%
	if ("AD".equals(getParam)) {
%>
			<jsp:include page="../common/layout_left_ad.jsp" flush="true" />
<%
	} else {
%>
			<jsp:include page="../common/layout_left_pj.jsp" flush="true" />
<%
	}
%>
		</div>

 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">

					<!-- START : title -->
<%if ("AD".equals(getParam)) {%>					
    		        <h2>[AD03] 협력업체 등록</h2>
<%}	else {%>	
    		        <h2>[PJ03] 협력업체 등록</h2>
<%}%>					
    		        
    		        <!-- END : title -->

					<!-- START : search section -->
    		        <div id="searchSection" class="section">
    		            <div class="search">
    		                <div class="box">
    		                    <ul>
    		                        <li class="name"><span>협력사</span></li>
    		                        <li><input type="text" class="txtinp w100" id="searchCoopID" name="searchCoopID" readOnly/></li>
    		                        <li><input type="text" class="txtinp w200" id="searchCoopNM" name="searchCoopNM" readOnly/></li>
    		                        <li><a href="javascript:fn_SearchCoop();" class="btn01">검색</a></li>
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
    		        <div id="section" class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100">협력업체 ID</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sCOOP_ID" name="sCOOP_ID" />
    		                        </td>
    		                        <th class="w100">협력업체명</th>
    		                        <td>
                                        <input type="text" class="txtinp w200" id="sCOOP_NM" name="sCOOP_NM"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">사업자등록번호</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" id="sCOOP_REG_NUM" name="sCOOP_REG_NUM"/>
                                    </td>
                                    <th class="w100">기업구분</th>
    		                        <td>
    		                        	<select class="selectbox" name="selectbox" id="sCOOP_TYPE" name="sCOOP_TYPE">
										</select>
                                    </td>
    		                    </tr>
    		                    <tr>
                                    <th class="w100">전화번호</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sPHONE_NUM" name="sPHONE_NUM"/>
                                    </td>
    		                        <th class="w100">팩스번호</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" id="sFAX_NUM" name="sFAX_NUM"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">이메일</th>
    		                        <td>
                                        <input type="text" class="txtinp w200" id="sCOOP_EMAIL" name="sCOOP_EMAIL"/>
                                    </td>
                                    <th class="w100">홈페이지</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w200" id="sCOOP_HOMEPAGE" name="sCOOP_HOMEPAGE"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">지번주소</th>
    		                        <td colspan="3">
                                        <input type="text" class="txtinp w100" id="sZIP_CD_JI" name="sZIP_CD_JI"/>
                                        <input type="text" class="txtinp w500" id="sADDR_JI" name="sADDR_JI"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">도로명주소</th>
    		                        <td colspan="3">
                                        <input type="text" class="txtinp w100" id="sZIP_CD_DO" name="sZIP_CD_DO"/>
                                        <input type="text" class="txtinp w500" id="sADDR_DO" name="sADDR_DO"/>
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

    		    </div><!--//pixbox-->
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