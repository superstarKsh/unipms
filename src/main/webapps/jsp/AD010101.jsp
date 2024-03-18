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

<script type="text/javascript">

function fn_Init() {
	$("#container input[type=text], #container select, #container textarea").val("");
	$('input:radio[name=sPRJT_TYPE]:input[value=01]').prop("checked", true);
	
	fn_InitLoad();
};

function fn_InitLoad() {
	
	var sendData = {
	};
	
	fn_AjaxSend(sendData, "AD010101", fn_SetDataInitLoad, null);

};

function fn_SetDataInitLoad(result) {

	var selBizQuater = '<option value="99">선 택</option>';
	var selBizType = '<option value="99">선 택</option>';
  
	$.each(result,function(key, value) {
		$("#sPRJT_ID").val(value.sPRJT_ID);
	});
	$.each(result.prjtBizQuater,function(key, value) {
		selBizQuater = selBizQuater + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';

		$("#sBIZ_QUARTER").empty().append(selBizQuater);
	});
	$.each(result.prjtBizType,function(key, value) {
		selBizType = selBizType + '<option value="' + value.sCODE + '">' + value.sCODE_NM + '</option>';

		$("#sBIZ_TYPE").empty().append(selBizType);
	});
};

function fn_Init_Clear() {
	window.location = "AD010101.jsp";
};

function fn_SelectPrjtInfo() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};	

	fn_AjaxSend(sendData, "AD010113", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	var prjtInfo = result.prjtInfo;

	$("#sPRJT_ID").val(prjtInfo.sPRJT_ID);
	$("#sPRJT_NM").val(prjtInfo.sPRJT_NM);
	$("#sPRJT_MANG_ID").val(prjtInfo.sPRJT_MANG_ID);
	$("#sPRJT_MANG_NM").val(prjtInfo.sPRJT_MANG_NM);
	$("#sBIZ_QUARTER").val(prjtInfo.sBIZ_QUARTER);
	$("#sBIZ_TYPE").val(prjtInfo.sBIZ_TYPE);
	$("#sBIZ_AMOUNT").val(prjtInfo.sBIZ_AMOUNT);
	$("#sMAN_MONTH").val(prjtInfo.sMAN_MONTH);
	$("#sCUS_CD").val(prjtInfo.sCUS_CD);
	$("#sCUS_NM").val(prjtInfo.sCUS_NM);
	$("#sMAIN_BIZ_PART_CD").val(prjtInfo.sMAIN_BIZ_PART_CD);
	$("#sMAIN_BIZ_PART_NM").val(prjtInfo.sMAIN_BIZ_PART_NM);
	$("#sPRJT_STRT_DT").val(fn_SetDateType(prjtInfo.sPRJT_STRT_DT, "."));
	$("#sPRJT_END_DT").val(fn_SetDateType(prjtInfo.sPRJT_END_DT, "."));
	$("#sDEV_METHOD").val(prjtInfo.sDEV_METHOD);
	$("#sUSE_TOOL").val(prjtInfo.sUSE_TOOL);
	$('input:radio[name=sPRJT_TYPE]:input[value=' + prjtInfo.sPRJT_TYPE + ']').prop("checked", true);
	$("#sSERVER_TYPE").val(prjtInfo.sSERVER_TYPE);
	$("#sOS_TYPE").val(prjtInfo.sOS_TYPE);
	$("#sPRGM_LANG").val(prjtInfo.sPRGM_LANG);
	$("#sDBMS_TYPE").val(prjtInfo.sDBMS_TYPE);
	$("#sETC_TYPE").val(prjtInfo.sETC_TYPE);
	$("#sPRJT_DISC").val(prjtInfo.sPRJT_DISC);
	$("#sETC_DISC").val(prjtInfo.sETC_DISC);
};

function fn_InsertPrjt() {

	var sendData = {
		sPRJT_ID : $("#sPRJT_ID").val(),
		sPRJT_NM : $("#sPRJT_NM").val(),
		sPRJT_MANG_ID : $("#sPRJT_MANG_ID").val(),
		sBIZ_QUARTER : $("#sBIZ_QUARTER option:selected").val(),
		sBIZ_TYPE : $("#sBIZ_TYPE option:selected").val(),
		sBIZ_AMOUNT : $("#sBIZ_AMOUNT").val(),
		sMAN_MONTH : $("#sMAN_MONTH").val(),
		sCUS_CD : $("#sCUS_CD").val(),
		sMAIN_BIZ_PART_CD : $("#sMAIN_BIZ_PART_CD").val(),
		sPRJT_STRT_DT : $("#sPRJT_STRT_DT").val(),
		sPRJT_END_DT : $("#sPRJT_END_DT").val(),
		sPRJT_TYPE : $("#sPRJT_TYPE:checked").val(),
		sDEV_METHOD : $("#sDEV_METHOD").val(),
		sUSE_TOOL : $("#sUSE_TOOL").val(),
		sSERVER_TYPE : $("#sSERVER_TYPE").val(),
		sOS_TYPE : $("#sOS_TYPE").val(),
		sPRGM_LANG : $("#sPRGM_LANG").val(),
		sDBMS_TYPE : $("#sDBMS_TYPE").val(),
		sETC_TYPE : $("#sETC_TYPE").val(),
		sPRJT_DISC : $("#sPRJT_DISC").val(),
		sETC_DISC : $("#sETC_DISC").val()
	};
	
	fn_AjaxSend(sendData, "AD010121", fn_Init_Clear, PMS_PROC_INSERT);
};

function fn_DeletePrjt() {
	
	var sendData = {
		sPRJT_ID : $("#sPRJT_ID").val()
	};
	
	fn_AjaxSend(sendData, "AD010141", fn_Init_Clear, PMS_PROC_DELETE);
	
};

$(function() {
    $("#sPRJT_STRT_DT").datepicker(setCalendar);
    $("#sPRJT_END_DT").datepicker(setCalendar);
});

function fn_SearchPrjtInfo() {
	window.open("PU010101.jsp","", popupStyle);
};

function fn_SearchUser() {
	window.open("PU010111.jsp","", popupStyle);
};

function fn_SearchCoop(args) {
	var popUpUrl = "PU010121.jsp?AD010101="+args; 
	window.open(popUpUrl,"", popupStyle);
};

</script>
</head>

<body onload="fn_Init();" oncontextmenu="return false">
<div id="wrap">

	<!-- START : include -->
	<div>
		<jsp:include page="../common/layout_header_admin.jsp" flush="true" />
	</div>
	<!-- END : include -->

	<div id="container">

		<div id="leftWrap">
			<jsp:include page="../common/layout_left_ad.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[AD01] 프로젝트생성</h2>
    		        <!-- END : title -->

					<!-- START : search section -->
    		        <div id="searchSection" class="section">
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
    		        <div id="section" class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100">프로젝트명</th>
    		                        <td colspan="3">
    		                        	<input type="text" class="txtinp w100" name="sPRJT_ID" id="sPRJT_ID"/>
    		                        	<input type="text" class="txtinp w300" name="sPRJT_NM" id="sPRJT_NM"/>
    		                        </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">진행단계</th>
    		                        <td>프로젝트생성</td>
                                    <th class="w100">PM</th>
    		                        <td>
    		                        	<ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sPRJT_MANG_NM" name="sPRJT_MANG_NM" readOnly/></li>
	    		                            <li><a href="javascript:fn_SearchUser();" class="btn01">검색</a></li>
	    		                            <li><input type="hidden" id="sPRJT_MANG_ID" name="sPRJT_MANG_ID"/></li>
										</ul>
                                    </td>
    		                    </tr>
  								<tr>
									<th class="w100">사업본부 </th>
									<td>
										<select class="selectbox" id="sBIZ_QUARTER" name="sBIZ_QUARTER">
										</select>
									<th class="w100">사업구분</th>
									<td>
										<select class="selectbox" id="sBIZ_TYPE" name="sBIZ_TYPE">
										</select>
									</td>
								</tr>
								<tr>
									<th class="w100">총사업금액</th>
									<td>
										<input type="text" class="txtinp w100" id="sBIZ_AMOUNT" name="sBIZ_AMOUNT"/>
									</td>
									<th class="w100">투입인원 </th>
									<td>
										<input type="text" class="txtinp w100" id="sMAN_MONTH"  name="sMAN_MONTH">&nbsp;M/M
									</td>
								</tr>
								<tr>
									<th class="w100">고객사</th>
									<td>
										<ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sCUS_NM" name="sCUS_NM" readOnly/></li>
	    		                            <li><a href="javascript:fn_SearchCoop('sCUS_NM');" class="btn01">검색</a></li>
	    		                            <li><input type="hidden" id="sCUS_CD" name="sCUS_CD"/></li>
										</ul>
									</td>		
									<th class="w100">주사업자</th>
									<td>
										<ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sMAIN_BIZ_PART_NM" name="sMAIN_BIZ_PART_NM" readOnly/></li>
	    		                            <li><a href="javascript:fn_SearchCoop('sMAIN_BIZ_PART_NM');" class="btn01">검색</a></li>
	    		                            <li><input type="hidden" id="sMAIN_BIZ_PART_CD" name="sMAIN_BIZ_PART_CD"/></li>
										</ul>
									</td>
								</tr>
								<tr>
    		                        <th class="w100">시작일자</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" name="sPRJT_STRT_DT" id="sPRJT_STRT_DT"/>
                                    </td>
                                    <th class="w100">종료일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sPRJT_END_DT" id="sPRJT_END_DT"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">사업유형</th>
    		                        <td colspan="3">
    		                        	
                                        <ul class="tase">
		    		                        <li><input type="radio" class="radiobox" id="sPRJT_TYPE" name="sPRJT_TYPE" value="01" checked/> SI</li>
		    		                        <li><input type="radio" class="radiobox" id="sPRJT_TYPE" name="sPRJT_TYPE" value="02" checked/> SM</li>
		    		                        <li><input type="radio" class="radiobox" id="sPRJT_TYPE" name="sPRJT_TYPE" value="03" checked/> Solution</li>
		    		                        <li><input type="radio" class="radiobox" id="sPRJT_TYPE" name="sPRJT_TYPE" value="04" checked/> 기타</li>
		    		                    </ul>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">개발방법론</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" name="sDEV_METHOD" id="sDEV_METHOD"/>
                                    </td>
                                    <th class="w100">언어</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sPRGM_LANG" id="sPRGM_LANG"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">서버</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" name="sSERVER_TYPE" id="sSERVER_TYPE"/>
                                    </td>
                                    <th class="w100">OS</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sOS_TYPE" id="sOS_TYPE"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">TOOL</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" name="sUSE_TOOL" id="sUSE_TOOL"/>
                                    </td>
                                    <th class="w100">DBMS</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sDBMS_TYPE" id="sDBMS_TYPE"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">기타</th>
    		                        <td colspan="3">
                                        <input type="text" class="txtinp w700" name="sETC_TYPE" id="sETC_TYPE"/>
                                    </td>
    		                    </tr>
    		                    <tr class="last">
    		                    	<th class="w100">기타사항</th>
									<td colspan="3">
										<textarea class="txtinp w700" cols="100" rows="5" name="sETC_DISC" id="sETC_DISC" ></textarea>
									</td>
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
    		        <!-- END : button section -->

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