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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('1 x(){$("#2").0(B(\'.\'));$("#5").0(A());p()};1 p(){y($("#f").0()==\'Y\'){6 a="";a+="f=N";z(a,"C.d",o,h)}};1 G(){e.j="F.d"};1 h(){6 a={k:$("#l").0(),4:$("#4").0()};m(a,"D",n,o)};1 n(a){6 b=a.J;$("#2").0(T(b.2));$("#4").0(b.4);$("#5").0(w(b.5));$("#7").0(b.7);$("#c").0(b.c);$("#9").0(b.9);$("#3").0(b.3);$("#8").0(b.8)};1 q(){r.i["3"].s("E",[]);6 a={k:$("#l").0(),2:$("#2").0().t(/\\./g,""),4:$("#4").0(),5:$("#5").0().t(/\\:/g,""),7:$("#7").0(),c:$("#c").0(),9:$("#9").0(),3:$("#3").0(),8:H($("#8").0())};m(a,"I",u,K)};1 L(){M("O",q)};$(1(){$("#2").P(Q)});1 u(){e.j="R.d"};1 S(a){6 b=\'<v><U V="../W/X/\'+a+\'"></v>\';r.i["3"].s("Z",[b])};1 10(){e.11("12.d","",13)};',62,66,'val|function|sPROCD_DT|sCONTENTS|sPROCD_NO|sPROCD_TIME|var|sPROCD_PLACE|sFILE_NM1|sATT_USER|||sTITLE|jsp|window|sSEARCH_YN||fn_SelectPrjtInfo|getById|location|sPRJT_ID|searchPrjtID|fn_AjaxSend|fn_SetDataSelectPrjtInfo|null|fn_SessionCheck|fn_InsertPrjt|oEditors|exec|replace|fn_MoveToList|span|fn_SetTimeType|fn_InitLoad|if|fn_AjaxSendSesUrl|fn_GetHour|fn_GetDate|pms_session_cf0201|CF020113|UPDATE_CONTENTS_FIELD|CF020102|fn_Init_Clear|fn_GetFileName|CF020121|procdInfo|PMS_PROC_INSERT|fn_InsertPrjtFile|fn_InsertUploadFile||CF02|datepicker|setCalendar|CF020101|pasteHTML|fn_SetDateType|img|src|editor|uploadImg||PASTE_HTML|fn_SearchPrjtInfo|open|PU010101|popupStyle'.split('|'),0,{}))

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