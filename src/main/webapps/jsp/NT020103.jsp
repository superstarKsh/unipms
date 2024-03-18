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
	$("#sSEQ_NO").val(<%=(String) session.getAttribute("sSEARCH_BOARD_SEQ_NO")%>);
	$("#regUserID").val("<%=(String) session.getAttribute("sUSER_ID")%>");

	fn_InitLoad();
};

function fn_InitLoad() {
	fn_SelectPrjtInfo();
};

function fn_SelectPrjtInfo() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sSEQ_NO : $("#sSEQ_NO").val()
	};

	fn_AjaxSend(sendData, "NT020113", fn_SetDataSelectPrjtInfo, null);
};

function fn_SetDataSelectPrjtInfo(result) {
	if (result.bulltnBoard == null || result.bulltnBoard == 'undefined') {
		return;
	}

	var bulltnBoard = result.bulltnBoard;
			
	$("#sREG_DT").val(fn_SetDateType(bulltnBoard.sREG_DT));
	$("#sREG_USER_ID").val(bulltnBoard.sREG_USER_ID);
	$("#sREG_USER_NM").val(bulltnBoard.sREG_USER_NM);
	$("#sTITLE").val(bulltnBoard.sTITLE);
	$("#sSEQ_NO").val(bulltnBoard.sSEQ_NO);
	$("#sFILE_NM").val(bulltnBoard.sFILE_NM);

	var regModUserID = bulltnBoard.sREG_USER_ID;
	if ($("#regUserID").val() == regModUserID) {
		$("#sCONTENTS").val(bulltnBoard.sCONTENTS);
	} else {
		var trContents = document.getElementById("trContents");
		var contentsStr = "";
		contentsStr += "<td id='trContents' colspan='3'>";
		contentsStr += "<ul class='cont'>";
		contentsStr += bulltnBoard.sCONTENTS;
		contentsStr += "</ul>";
		contentsStr += "</td>";
		trContents.innerHTML = contentsStr;
	}

	var tcomment = document.getElementById("tcomment");
	var str = ""; 
	str += "<table class='table01' border='0' cellspacing='0' summary=''>";
	str += "<tbody>";
			
	$.each(result.boardComment,function(key, value) {
		str += "<tr>";
		str += "<th class='w150' >" + value.sREG_USER_NM + " (" + value.sREG_USER_ID + ")";

		if ($("#regUserID").val() == value.sREG_USER_ID) {
			str += "<td rowspan='2'>";
			str += "<ul class='tase'>";
			str += "<li><textarea  class='textarea03' id='sCOMMENTS_" + value.sSEQ_NO + "''>" + value.sCOMMENTS + "</textarea></li>";
			str += "</ul>";
			str += "<td>";
			str += "<ul class='tase'>";
			str += "<li><a href='javascript:fn_UpdateComment(" + value.sSEQ_NO + ", " + value.sBRD_SEQ_NO + ");' class='btn02'>수정</a></li>";
			str += "</ul>";
			str += "</td>";
		} else {
			str += "<td rowspan='2' colspan='2'>";
			str += "<ul class='tase'>";
			str += "<li class='cont'>" + value.sCOMMENTS + "</li>";
			str += "</ul>";
		}

		str += "</td>";
		str += "</tr>";
				
		str += "<tr>";
		str += "<th class='w150' >" + fn_SetDateType(value.sREG_DT) + " " + fn_SetTimeType(value.sREG_TIME);
		if ($("#regUserID").val() == value.sREG_USER_ID) {
			str += "<td>";
			str += "<ul class='tase'>";
			str += "<li><a href='javascript:fn_DeleteComment(" + value.sSEQ_NO + ", " + value.sBRD_SEQ_NO + ");' class='btn03'>삭제</a></li>";
			str += "</ul>";
			str += "</td>";
		}
		str += "</tr>";

	});

	str += "</tbody>";
	str += "</table>";
	tcomment.innerHTML = str;

	var insertBtn = document.getElementById("insertBtn");
	var deleteBtn = document.getElementById("deleteBtn");
			
	if ($("#regUserID").val() == regModUserID) {
		insertBtn.setAttribute("style", "display:block;");
		deleteBtn.setAttribute("style", "display:block;");
	} else {
		insertBtn.setAttribute("style", "display:none;");
		deleteBtn.setAttribute("style", "display:none;");
	}
};

function fn_InsertPrjt() {
	oEditors.getById["sCONTENTS"].exec("UPDATE_CONTENTS_FIELD", []);
	
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sSEQ_NO : $("#sSEQ_NO").val(),
		sTITLE : $("#sTITLE").val(),
		sCONTENTS : $("#sCONTENTS").val(),
		sREG_USER_ID : $("#regUserID").val(),
		sFILE_NM : fn_GetFileName($("#sFILE_NM").val())
	};

	fn_AjaxSend(sendData, "NT020121", fn_MoveToList, PMS_PROC_INSERT);
};

function fn_DeletePrjt() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sSEQ_NO : $("#sSEQ_NO").val()
	};

	fn_AjaxSend(sendData, "NT020141", fn_MoveToList, PMS_PROC_DELETE);
};

function fn_InsertPrjtFile() {
	fn_InsertUploadFile("NT02", fn_InsertPrjt);
};

function fn_InsertComment() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sBRD_SEQ_NO : $("#sSEQ_NO").val(),
		sCOMMENTS : $("#sCOMMENTS").val(),
		sREG_USER_ID : $("#regUserID").val()
	};
	
	fn_AjaxSend(sendData, "NT020123", fn_Init, PMS_PROC_INSERT);
};

function fn_UpdateComment(sSeqNO, sBrdSeqNo) {
	var sComments = "#sCOMMENTS_" + sSeqNO;

	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sSEQ_NO : sSeqNO,
		sBRD_SEQ_NO : sBrdSeqNo,
		sCOMMENTS : $(sComments).val(),
		sREG_USER_ID : $("#regUserID").val()
	};

	fn_AjaxSend(sendData, "NT020133", fn_Init, PMS_PROC_INSERT);
};

function fn_DeleteComment(sSeqNO, sBrdSeqNo) {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val(),
		sSEQ_NO : sSeqNO,
		sBRD_SEQ_NO : sBrdSeqNo
	};

	fn_AjaxSend(sendData, "NT020143", fn_Init, PMS_PROC_DELETE);
};

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
    			<form name="contentsForm" enctype="multipart/form-data"  onsubmit="return false">
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[NT02] 자유게시판</h2>

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
	    		                            <li><input type="text" class="txtinp w200" id="sREG_USER_ID" name="sREG_USER_ID" readOnly/></li>
										</ul>
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
    		                        <td id="trContents" colspan="3">
                                        <textarea class="txtinp w700" id="sCONTENTS" name="sCONTENTS" style="height:300px; display: none;"></textarea>
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
								<tr>
									<th>댓글</th>
									<td colspan="3">
										<ul class="tase">
                                            <li><textarea class="textarea01" id="sCOMMENTS" name="sCOMMENTS"></textarea></li>
                                        	<li><a href="javascript:fn_InsertComment();"><img src="../images/btn/btn_add.png" /></a></li>
                                        </ul>
									</td>
								</tr>
    		                </tbody>
    		            </table>
    		        </div><!--//section-->
    		        <!-- END : input table section -->
    		        
    		        <div class="section" id="tcomment" name="tcomment">
    		        </div><!--//section-->
    		        <!-- END : input table section -->     		        
    		        
    		        <!-- START : button section -->
    		        <div class="section" id="modifySection">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_MoveToList();" class="btnimg03">목록</a></li>
    		                <li id="insertBtn"><a href="javascript:fn_InsertPrjtFile();" class="btnimg03">저장</a></li>
    		                <li id="deleteBtn"><a href="javascript:fn_DeletePrjt();" class="btnimg04">삭제</a></li>
    		            </ul>
    		        </div><!--//section-->
    		        
    		    </div><!--//pixbox-->
    		    <div id="hiddenColumn"> 
					<input type="hidden" class="inputType" id="sSEQ_NO" name="sSEQ_NO"/>
					<input type="hidden" class="inputType" id="regUserID" name="regUserID"/>
					<input type="hidden" class="inputType" id="sBRD_SEQ_NO" name="sBRD_SEQ_NO"/>
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