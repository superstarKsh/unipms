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
	$("#sUSER_ID").val("<%=(String) session.getAttribute("sUSER_ID")%>");
	
	var sSEARCH_YN = '<%=(String) session.getAttribute("sSEARCH_YN")%>';
		
	if (sSEARCH_YN != null && sSEARCH_YN=='Y') {
		var sSEQ_NO = '<%=(String) session.getAttribute("sSEARCH_SEQ_NO")%>';
		$("#sSEARCH_YN").val(sSEARCH_YN);
		$("#sSEQ_NO").val(sSEQ_NO);
	}
	else {
		$("#sREG_USER_ID").val("<%=(String) session.getAttribute("sUSER_ID")%>");
		$("#sREG_USER_NM").val("<%=(String) session.getAttribute("sUSER_NM")%>");
		$("#sREG_DT").val(fn_GetDate('.'));
		
		$("#sPRINT_TOP_YN").attr("checked", true);
	}

	fn_InitLoad();
};

function fn_InitLoad(){fn_SessionCheck()};function fn_SessionCheck(){if($("#sSEARCH_YN").val()=='Y'){$("#sSEARCH_YN").val("");var content="";content+="sSEARCH_YN=N";fn_AjaxSendSesUrl(content,"pms_session_nt0101.jsp",null,fn_SelectPrjtInfo)}};function fn_Init_Clear(){window.location="NT010102.jsp"};function fn_File_Clear(){if(brswType==1){document.getElementById("uploadFile").select();document.selection.clear()}else{$("#uploadFile").val("")}};function fn_SelectPrjtInfo(){var sendData={sPRJT_ID:$("#searchPrjtID").val(),sSEQ_NO:$("#sSEQ_NO").val()};fn_AjaxSend(sendData,"NT010113",fn_SetDataSelectPrjtInfo,null)};function fn_SetDataSelectPrjtInfo(result){if(result.noticeInfo!=null&&result.noticeInfo!='undefined'){var noticeInfo=result.noticeInfo;$("#sREG_DT").val(fn_SetDateType(noticeInfo.sREG_DT));$("#sREG_USER_ID").val(noticeInfo.sREG_USER_ID);$("#sREG_USER_NM").val(noticeInfo.sREG_USER_NM);$("#sTITLE").val(noticeInfo.sTITLE);$("#sSEQ_NO").val(noticeInfo.sSEQ_NO);$("#sCONTENTS").val(noticeInfo.sCONTENTS);$("#sFILE_NM").val(noticeInfo.sFILE_NM);$("#FILE_NM").val(noticeInfo.sFILE_NM);$("#sPRINT_TOP_YN").attr("checked",noticeInfo.sPRINT_TOP_YN=="Y"?true:false);if(noticeInfo.sPRINT_ST_DTTM!=''){$("#sPRINT_STDT").val(fn_SetDateType(noticeInfo.sPRINT_ST_DTTM.substr(0,8)));$("#sPRINT_STTM").val(fn_SetDateType(noticeInfo.sPRINT_ST_DTTM.substr(8,2)+":"+noticeInfo.sPRINT_ST_DTTM.substr(10,2)))}if(noticeInfo.sPRINT_EN_DTTM!=''){$("#sPRINT_ENDT").val(fn_SetDateType(noticeInfo.sPRINT_EN_DTTM.substr(0,8)));$("#sPRINT_ENTM").val(fn_SetDateType(noticeInfo.sPRINT_EN_DTTM.substr(8,2)+":"+noticeInfo.sPRINT_EN_DTTM.substr(10,2)))}if($("#sREG_USER_ID").val()!=$("#sUSER_ID").val()){$("#trPrintContent1, #trPrintContent2").remove();var tdContents=document.getElementById("tdContents");var contentsStr="";contentsStr+="<ul class='cont'>";contentsStr+=noticeInfo.sCONTENTS;contentsStr+="</ul>";tdContents.innerHTML=contentsStr;var inputFileStr="";inputFileStr+="<span style='cursor:pointer' onclick='javascript:fn_FileDownload()'>";inputFileStr+=noticeInfo.sFILE_NM;inputFileStr+="</span>";$("#tdInputFile").html(inputFileStr);$("#btnInit, #btnSave, #btnDelete").css("display","none")}}fn_File_Clear()};function fn_InsertPrjt(){oEditors.getById["sCONTENTS"].exec("UPDATE_CONTENTS_FIELD",[]);var sendData={sPRJT_ID:$("#searchPrjtID").val(),sSEQ_NO:$("#sSEQ_NO").val(),sTITLE:$("#sTITLE").val(),sCONTENTS:$("#sCONTENTS").val(),sREG_USER_ID:$("#sREG_USER_ID").val(),sREG_DT:$("#sREG_DT").val(),sFILE_NM:fn_GetFileName($("#sFILE_NM").val()),sPRINT_TOP_YN:$("#sPRINT_TOP_YN").is(":checked")==true?"Y":"N",sPRINT_ST_DTTM:$("#sPRINT_STDT").val()+$("#sPRINT_STTM").val(),sPRINT_EN_DTTM:$("#sPRINT_ENDT").val()+$("#sPRINT_ENTM").val()};fn_AjaxSend(sendData,"NT010121",fn_MoveToList,PMS_PROC_INSERT)};function fn_DeletePrjt(){var sendData={sPRJT_ID:$("#searchPrjtID").val(),sSEQ_NO:$("#sSEQ_NO").val()};fn_AjaxSend(sendData,"NT010141",fn_MoveToList,PMS_PROC_DELETE)};function fn_InsertPrjtFile(){fn_InsertUploadFile("NT01",fn_InsertPrjt)};function fn_FileDownload(){var downloadFile=$("#FILE_NM").val();if(downloadFile=="")return;fn_DownloadFile("NT01",downloadFile)};function fn_MoveToList(){window.location="NT010101.jsp"};$(function(){$("#sREG_DT").datepicker(setCalendar)});$(function(){$("#sPRINT_STDT").datepicker(setCalendar)});$(function(){$("#sPRINT_ENDT").datepicker(setCalendar)});function pasteHTML(args){var sHTML='<span><img src="../editor/uploadImg/'+args+'"></span>';oEditors.getById["sCONTENTS"].exec("PASTE_HTML",[sHTML])};function fn_SearchPrjtInfo(){window.open("PU010101.jsp","",popupStyle)};function fn_SearchUser(){var popUpUrl="PU010112.jsp";window.open(popUpUrl,"",popupStyle)};

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
	    		        <h2>[NT01] 공지사항등록</h2>
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
	    		                        <th class="w100">등록일자</th>
	    		                        <td>
	    		                        	<input type="text" class="txtinp w100" id="sREG_DT" name="sREG_DT"/>
	    		                        </td>
	    		                        <th class="w100">등록자</th>
	    		                        <td>
	    		                        	<ul class="tase">
		    		                        	<li><input type="text" class="txtinp w100" id="sREG_USER_NM" name="sREG_USER_NM" readOnly/></li>
		    		                            <li><a href="javascript:fn_SearchUser();" class="btn01">검색</a></li>
		    		                            <li><input type="hidden" class="txtinp w100" id="sREG_USER_ID" name="sREG_USER_ID"/></li>
											</ul>
	    		                        </td>
	    		                    </tr>
	    		                    <tr id="trPrintContent1">
	    		                    	<th class="w100">개시설정</th>
	    		                        <td colspan="3">
	    		                        	<input type="checkbox" class="checkbox2" id="sPRINT_TOP_YN" name="sPRINT_TOP_YN" />
											<label for="sPRINT_TOP_YN">항상위</label>
	    		                        </td>
	    		                    </tr>
	    		                    <tr id="trPrintContent2">
	    		                    	<th class="w100">개시일시</th>
	    		                        <td colspan="3">
	    		                        	<input type="text" class="txtinp w100" id="sPRINT_STDT" name="sPRINT_STDT"/>
	    		                        	<input type="text" class="txtinp w50" id="sPRINT_STTM" name="sPRINT_STTM"/> ~ 
	    		                        	<input type="text" class="txtinp w100" id="sPRINT_ENDT" name="sPRINT_ENDT"/>
	    		                        	<input type="text" class="txtinp w50" id="sPRINT_ENTM" name="sPRINT_ENTM"/>
	    		                        </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w100">제목</th>
	    		                        <td colspan="3">
	                                        <input type="text" class="txtinp w700" id="sTITLE" name="sTITLE"/>
	                                    </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w100">내용</th>
	    		                        <td id="tdContents" colspan="3">
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
										<td id="tdInputFile" name="tdInputFile" colspan="3">
											<div class="inputfile">
												<input type="text" class="txtinp w590" id="sFILE_NM" name="sFILE_NM" onclick="javascript:fn_FileDownload()" readOnly/>
												<div id="divUploadFile" name="divUploadFile">
													<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sFILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>
												</div>
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
	    		                <li><a href="javascript:fn_MoveToList();" class="btnimg03" id="btnList" name="btnList">목록</a></li>
	    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02" id="btnInit" name="btnInit">초기화</a></li>
	    		                <li><a href="javascript:fn_InsertPrjtFile();" class="btnimg03" id="btnSave" name="btnSave">저장</a></li>
	    		                <li><a href="javascript:fn_DeletePrjt();" class="btnimg04" id="btnDelete" name="btnDelete">삭제</a></li>
	    		            </ul>
	    		        </div><!--//section-->
	    		    </div><!--//pixbox-->
	    		    
	    		    <div id="hiddenColumn">
	    		    	<input type="hidden" class="inputType" id="sSEARCH_YN" name="sSEARCH_YN"/>
						<input type="hidden" class="inputType" id="sSEQ_NO" name="sSEQ_NO"/>
						<input type="hidden" class="inputType" id="sUSER_ID" name="sUSER_ID"/>
						<input type="hidden" class="inputType" id="FILE_NM" name="FILE_NM" />
					</div>
				</form>
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