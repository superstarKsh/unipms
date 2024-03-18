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
	
	var sSEARCH_YN = '<%=(String) session.getAttribute("sSEARCH_YN")%>';
		
	if (sSEARCH_YN != null && sSEARCH_YN=='Y') {
		var sSEARCH_PRJT_STAGE = '<%=(String) session.getAttribute("sSEARCH_PRJT_STAGE")%>';
		var sSEARCH_TASK_ID 	= '<%=(String) session.getAttribute("sSEARCH_TASK_ID")%>';
		var sSEARCH_ISSUE_ID 	= '<%=(String) session.getAttribute("sSEARCH_ISSUE_ID")%>';

		$("#sSEARCH_YN").val(sSEARCH_YN);
		$("#sSEARCH_PRJT_STAGE").val(sSEARCH_PRJT_STAGE);
		$("#sSEARCH_TASK_ID").val(sSEARCH_TASK_ID);
		$("#sSEARCH_ISSUE_ID").val(sSEARCH_ISSUE_ID);
	}

	fn_InitLoad();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('3 1w(){4 a={q:$("#n").0()};F(a,"1n",19,j)};3 19(c){4 d=c.1h;$("#7").0(d.7);4 e=\'<2 9="">선 택</2>\';4 f=\'<2 9="">선 택</2>\';4 g=\'<2 9="">선 택</2>\';4 h=\'<2 9="">선 택</2>\';$.k(c.1e,3(a,b){e=e+\'<2 9="\'+b.y+\'">\'+b.D+\'</2>\';$("#5").o().p(e)});$.k(c.1m,3(a,b){f=f+\'<2 9="\'+b.y+\'">\'+b.D+\'</2>\';$("#t").o().p(f)});$.k(c.1X,3(a,b){g=g+\'<2 9="\'+b.y+\'">\'+b.D+\'</2>\';$("#r").o().p(g)});$.k(c.1f,3(a,b){h=h+\'<2 9="\'+b.y+\'">\'+b.D+\'</2>\';$("#s").o().p(h)});T()};3 T(){R($("#B").0()==\'Y\'){$("#B").0("");$("#5").0($("#1s").0());$("#7").0($("#1u").0());4 a="";a+="B=N";1x(a,"1M.v",j,10)}};3 10(){$("#B").0("");12("15")};3 1j(){z.1d="S.v"};3 1o(){$("#J 1p[1q=1r], #J U, #J 1t").0("");W()};3 W(){R(1v==1){X.21("Z").U();X.1y.1z()}1E{$("#Z").0("")}};3 12(a){4 b={q:$("#n").0(),5:$("#5 2:8").0()};1N(b,"1Q",11,j,a,j,j)};3 11(c,d,e,f){4 g=\'<2 9="">선 택</2>\';$.k(c.1Z,3(a,b){g=g+\'<2 9="\'+b.6+\'">\'+b.K+\'</2>\';$("#6").o().p(g)});R(d=="15"){$("#6").0($("#1g").0());16()}};3 16(){4 a={q:$("#n").0(),5:$("#5 2:8").0(),6:$("#6 2:8").0(),7:$("#7").0()};F(a,"1i",17,j)};3 17(a){4 b=a.1k;$("#5").0(b.5);$("#6").0(b.6);$("#K").0(b.K);$("#7").0(b.7);$("#E").0(b.E);$("#t").0(b.t);$("#r").0(b.r);$("#A").0(b.A);$("#1a").0(b.1a);$("#u").0(L(b.u));$("#C").0(b.C);$("#V").0(b.V);$("#m").0(L(b.m));$("#l").0(L(b.l));$("#s").0(b.s);$("#i").0(b.i);$("#w").0(b.w);$("#x").0(b.x);$("#G").0(b.G)};3 13(){14.H["i"].I("O",[]);1A.H["w"].I("O",[]);1B.H["x"].I("O",[]);4 a={q:$("#n").0(),5:$("#5 2:8").0(),6:$("#6 2:8").0(),7:$("#7").0(),E:$("#E").0(),t:$("#t 2:8").0(),r:$("#r 2:8").0(),A:$("#A").0(),u:$("#u").0(),C:$("#C").0(),m:$("#m").0(),l:$("#l").0(),s:$("#s 2:8").0(),i:$("#i").0(),w:$("#w").0(),x:$("#x").0(),G:1C($("#G").0())};F(a,"1D",P,1F)};3 1G(){4 a={q:$("#n").0(),5:$("#5 2:8").0(),6:$("#6 2:8").0(),7:$("#7").0()};F(a,"1H",P,1I)};3 1J(){1K("1L",13)};$(3(){$("#u").Q(M);$("#m").Q(M);$("#l").Q(M)});3 P(){z.1d="1O.v"};3 1P(a){4 b=\'<1b><1R 1S="../1T/1U/\'+a+\'"></1b>\';14.H["i"].I("1V",[b])};3 1W(){z.1c("1Y.v","",18)};3 20(a){4 b="1l.v?S="+a;z.1c(b,"",18)};',62,126,'val||option|function|var|sPRJT_STAGE|sTASK_ID|sISSUE_ID|selected|value|||||||||sCONTENTS|null|each|sCOMPL_DT|sAPPR_DT|searchPrjtID|empty|append|sPRJT_ID|sISSUE_IMPT|sPROC_STAGE|sISSUE_TYPE|sREG_DT|jsp|sISSUE_SOLTN|sCORRT_DESC|sCODE|window|sREG_USER_ID|sSEARCH_YN|sCHRG_USER_ID|sCODE_NM|sTITLE|fn_AjaxSend|sFILE_NM|getById|exec|section|sTASK_NM|fn_SetDateType|setCalendar||UPDATE_CONTENTS_FIELD|fn_MoveToList|datepicker|if|CF030102|fn_SessionCheck|select|sCHRG_USER_NM|fn_File_Clear|document||uploadFile|fn_ProcDataSessionCheck|fn_SetDataSelectInitTask|fn_SelectInitTask|fn_InsertPrjt|oEditors|SC|fn_SelectPrjtInfo|fn_SetDataSelectPrjtInfo|popupStyle|fn_SetDataInitLoad|sREG_USER_NM|span|open|location|prjtStage|issueProc|sSEARCH_TASK_ID|issueID|CF030113|fn_Init_Clear|prjtIssueInfo|PU010112|issueType|CF030182|fn_Init_Data|input|type|text|sSEARCH_PRJT_STAGE|textarea|sSEARCH_ISSUE_ID|brswType|fn_InitLoad|fn_AjaxSendSesUrl|selection|clear|oEditors2|oEditors3|fn_GetFileName|CF030121|else|PMS_PROC_INSERT|fn_DeletePrjt|CF030141|PMS_PROC_DELETE|fn_InsertPrjtFile|fn_InsertUploadFile|CF03|pms_session_cf0301|fn_AjaxSendParam|CF030101|pasteHTML|CF030181|img|src|editor|uploadImg|PASTE_HTML|fn_SearchPrjtInfo|issueImpt|PU010101|prjTaskInfo|fn_SearchUser|getElementById'.split('|'),0,{}))

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
    		        <h2>[CF03] 이슈/리스크등록</h2>
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
    		        <!-- END : search section -->
    		        <div class="section">
                        <ul class="btnbox right">
                        	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
                     	</ul>
                    </div>
    		        <!-- START : input table section -->
    		        <div id="section" class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
								<tr>
									<th class="w100">진행단계</th>
									<td colspan="3">
										<select class="selectbox wp100" id="sPRJT_STAGE" name="sPRJT_STAGE"  onChange="javascript:fn_SelectInitTask('');">
										</select>
									</td>
								</tr>
								
								<tr>
									<th>TASK ID/명</th>
									<td colspan="3">
										<ul>
		    		                        <li><select class="selectbox wp100" id="sTASK_ID" name="sTASK_ID"></select></li>
		    		                    </ul>
									</td>
								</tr>
								<tr>
									<th><pk>*</pk> 이슈/리스크 ID</th>
									<td colspan="3">
										<input type="text" class="txtinp w100" id="sISSUE_ID" name="sISSUE_ID"/>
									</td>
								</tr>
								<tr>
									<th>구분</th>
									<td >
										<select class="selectbox" id="sISSUE_TYPE" name="sISSUE_TYPE">
										</select>
									</td>
									<th>중요도</th>
									<td >
										<select class="selectbox" id="sISSUE_IMPT" name="sISSUE_IMPT">
										</select>
									</td>
								</tr>
								<tr>
									<th>등록일자</th>
									<td >
										<input type="text" class="txtinp w100" id="sREG_DT" name="sREG_DT"/>
									</td>
									<th>등록자</th>
									<td >
										<input type="text" class="txtinp w100" id="sREG_USER_NM" name="sREG_USER_NM" readOnly/>
										<input type="hidden" id="sREG_USER_ID" name="sREG_USER_ID"/>
										<a href="javascript:fn_SearchUser('sREG_USER_ID');" class="btn01">검 색</a>
									</td>
								</tr>
								<tr>
									<th>조치예정일자</th>
									<td >
										<input type="text" class="txtinp w100" id="sAPPR_DT" name="sAPPR_DT"/>
									</td>
									<th>담당자</th>
									<td >
										<input type="text" class="txtinp w100" id="sCHRG_USER_NM" name="sCHRG_USER_NM" readOnly/>
										<input type="hidden" id="sCHRG_USER_ID" name="sCHRG_USER_ID"/>
										<a href="javascript:fn_SearchUser('sCHRG_USER_ID');" class="btn01">검 색</a>
									</td>
								</tr>
								<tr>
									<th>진행상태</th>
									<td >
										<select class="selectbox" id="sPROC_STAGE" name="sPROC_STAGE">
										</select>
									</td>
									<th>조치완료일자</th>
									<td >
										<input type="text" class="txtinp w100" id="sCOMPL_DT" name="sCOMPL_DT"/>
									</td>
								</tr>
								<tr>
									<th>제목</th>
									<td colspan="3">
										<input type="text" class="txtinp w700" id="sTITLE" name="sTITLE"/>
									</td>
								</tr>
								<tr>
									<th>내용</th>
									<td colspan="3">
										<textarea id="sCONTENTS" class="txtinp w700" cols="100" rows="5"  name="sCONTENTS" style="height:300px" ></textarea>
										<script type="text/javascript">
												var oEditors = [];
												nhn.husky.EZCreator.createInIFrame({
												oAppRef: oEditors,
												elPlaceHolder: "sCONTENTS",
												sSkinURI: "../editor/SmartEditor3Skin.html",
												fCreator: "createSEditor2",
												htParams: {fOnBeforeUnload : function(){}}
												});
										</script>
									</td>	
								</tr>
								<tr>
									<th>해결방안</th>
									<td colspan="3">
										<textarea id="sISSUE_SOLTN" class="txtinp w700" cols="100" rows="5"  name="sISSUE_SOLTN" style="height:300px" ></textarea>
										<script type="text/javascript">
												var oEditors2 = [];
												nhn.husky.EZCreator.createInIFrame({
												oAppRef: oEditors2,
												elPlaceHolder: "sISSUE_SOLTN",
												sSkinURI: "../editor/SmartEditor3Skin.html",
												fCreator: "createSEditor2",
												htParams: {fOnBeforeUnload : function(){}}
												});
										</script>
									</td>
								</tr>
								<tr>
									<th>조치내용</th>
									<td colspan="3">
										<textarea id="sCORRT_DESC" class="txtinp w700" cols="100" rows="5"  name="sCORRT_DESC" style="height:300px;" ></textarea>
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
    		                <li><a href="javascript:fn_DeletePrjt();" class="btnimg04">삭제</a></li>
    		            </ul>
    		        </div><!--//section-->
    		        
				</div><!--//pixbox-->
    		    <div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sSEARCH_YN" name="sSEARCH_YN"/>
					<input type="hidden" class="inputType" id="sSEARCH_PRJT_STAGE" name="sSEARCH_PRJT_STAGE"/>
					<input type="hidden" class="inputType" id="sSEARCH_TASK_ID" name="sSEARCH_TASK_ID"/>
					<input type="hidden" class="inputType" id="sSEARCH_ISSUE_ID" name="sSEARCH_ISSUE_ID"/>
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