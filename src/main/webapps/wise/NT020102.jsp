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
		var sSEQ_NO = '<%=(String) session.getAttribute("sSEARCH_BOARD_SEQ_NO")%>';
		$("#sSEARCH_YN").val(sSEARCH_YN);
		$("#sSEQ_NO").val(sSEQ_NO);
	}
	
	$("#sUSER_ID").val('<%=(String) session.getAttribute("sUSER_ID")%>');

	fn_InitLoad();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('0 x(){8()};0 8(){g($("#c").2()==\'Y\'){6 a="";a+="c=N";y(a,"B.4",q,9)}};0 9(){v};0 w(){5.d="C.4"};0 F(){g(J==1){e.p("f").r();e.s.t()}u{$("#f").2("")}};0 7(){h.i["3"].j("z",[]);6 a={14:$("#A").2(),k:$("#k").2(),l:$("#l").2(),3:$("#3").2(),D:$("#E").2(),m:G($("#m").2())};H(a,"I",n,K)};0 L(){M("O",7)};$(0(){$("#P").Q(R)});0 n(){5.d="S.4"};0 T(a){6 b=\'<o><V W="../X/Z/\'+a+\'"></o>\';h.i["3"].j("10",[b])};0 11(){5.12("13.4","",U)};',62,67,'function||val|sCONTENTS|jsp|window|var|fn_InsertPrjt|fn_SessionCheck|fn_SetDataSessionCheck|||sSEARCH_YN|location|document|uploadFile|if|oEditors|getById|exec|sSEQ_NO|sTITLE|sFILE_NM|fn_MoveToList|span|getElementById|null|select|selection|clear|else|return|fn_Init_Clear|fn_InitLoad|fn_AjaxSendSesUrl|UPDATE_CONTENTS_FIELD|searchPrjtID|pms_session_nt0201|NT020102|sREG_USER_ID|sUSER_ID|fn_File_Clear|fn_GetFileName|fn_AjaxSend|NT020121|brswType|PMS_PROC_INSERT|fn_InsertPrjtFile|fn_InsertUploadFile||NT02|sREG_DT|datepicker|setCalendar|NT020101|pasteHTML|popupStyle|img|src|editor||uploadImg|PASTE_HTML|fn_SearchPrjtInfo|open|PU010101|sPRJT_ID'.split('|'),0,{}))

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
	    		        <h2>[NT02] 자유게시판등록</h2>
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
	    		                        <th class="w100">제목</th>
	    		                        <td colspan="3">
	                                        <input type="text" class="txtinp w700" id="sTITLE" name="sTITLE"/>
	                                    </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w100">내용</th>
	    		                        <td colspan="3">
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
										<td colspan="3">
											<div class="inputfile">
												<input type="text" class="txtinp w590" id="sFILE_NM" name="sFILE_NM" readOnly/>
												<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sFILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>
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
	    		    	<input type="hidden" class="inputType" id="sSEQ_NO" name="sSEQ_NO"/>
						<input type="hidden" class="inputType" id="sUSER_ID" name="sUSER_ID"/>
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