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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('1 Q(){$("#6").q();2 a={3:$("#3").0()};h(a,"m",w,f)};1 w(c){2 d=\'<e r="">선 택</e>\';$.11(c.S,1(a,b){d=d+\'<e r="\'+b.P+\'">\'+b.O+\'</e>\';$("#6").q().M(d)});n()};1 n(){o($("#j").0()==\'Y\'){$("#j").0("");2 a="";a+="j=N";I(a,"H.l",f,u)}F{$("#5").0(E(\'.\'));$("#9").0(z())}};1 C(){A.y="D.l"};1 u(){$("#9").0(z());2 a={3:$("#3").0(),7:$("#7").0(),5:$("#5").0(),4:$("#4").0()};h(a,"G",s,f)};1 s(a){o(a.k!=f&&a.k!=\'J\'){2 b=a.k;$("#4").0(b.4);$("#6").0(b.6);$("#9").0(K(b.9));$("#g").0(b.g);$("#8").0(b.8)}};1 L(){x.v["8"].t("B",[]);2 a={3:$("#3").0(),7:$("#7").0(),5:$("#5").0(),4:$("#4").0(),9:$("#9").0(),g:$("#g").0(),8:$("#8").0(),6:$("#6").0()};h(a,"R",i,T)};1 U(){2 a={3:$("#3").0(),7:$("#7").0(),5:$("#5").0(),4:$("#4").0()};h(a,"V",i,W)};$(1(){$("#5").X(Z)});1 i(){A.y="m.l"};1 10(a){2 b=\'<p><12 13="../14/15/\'+a+\'"></p>\';x.v["8"].t("16",[b])};',62,69,'val|function|var|sPRJT_ID|sSEQ_NO|sCURR_DT|sDPL_TYPE|sUSER_ID|sCONTENTS|sDIARY_TIME|||||option|null|sTITLE|fn_AjaxSend|fn_MoveToList|sSEARCH_YN|diaryInfo|jsp|NT030101|fn_SessionCheck|if|span|empty|value|fn_SetDataSelectPrjtInfo|exec|fn_SelectPrjtInfo|getById|fn_SetDataInitLoad|oEditors|location|fn_GetHour|window|UPDATE_CONTENTS_FIELD|fn_Init_Clear|NT030102|fn_GetDate|else|NT030113|pms_session_nt0301|fn_AjaxSendSesUrl|undefined|fn_SetTimeType|fn_InsertPrjt|append||sCODE_NM|sCODE|fn_InitLoad|NT030121|diaryDisplay|PMS_PROC_INSERT|fn_DeletePrjt|NT030141|PMS_PROC_DELETE|datepicker||setCalendar|pasteHTML|each|img|src|editor|uploadImg|PASTE_HTML'.split('|'),0,{}))

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