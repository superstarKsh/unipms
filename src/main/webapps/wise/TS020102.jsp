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
		$("#sSEARCH_TEST_ID").val("<%=(String) session.getAttribute("sSEARCH_TEST_ID")%>");
		$("#sHISTORY_BACK").val("<%=(String) session.getAttribute("sHISTORY_BACK")%>");
	}

	fn_InitLoad();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('2 1F(){3 a={q:$("#r").0()};G(a,"1b",1e,4)};2 1e(c){3 d=\'<1 l="">선 택</1>\';3 e=\'<1 l="">선 택</1>\';$.E(c.1J,2(a,b){d=d+\'<1 l="\'+b.1O+\'">\'+b.1I+\'</1>\';$("#y").m().I(d)});$.E(1T,2(a,b){e=e+\'<1 l="\'+b.l+\'">\'+b.29+\'</1>\';$("#x").m().I(e)});5($("#M").0()=="Y"){$("#k").0($("#1X").0())}p{1a()}1s()};2 X(){3 a=$("#1N").0();5(a=="")F.U="T.A";p F.U=a+".A"};2 1s(){5($("#M").0()==\'Y\'){$("#M").0("");3 a="";a+="M=N";1A(a,"1D.A",4,1i)}p{11("v","","")}};2 1a(){3 a={q:$("#r").0(),J:$("#K").0()};G(a,"T",1k,4)};2 1k(a){3 b=a.O;$("#k").0(b.k)};2 11(a,b,c){$("#9").m();$("#8").m();$("#i").m();3 d={q:$("#r").0(),J:$("#K").0()};R(d,"1H",1g,4,a,b,c)};2 1g(c,d,e,f){3 g=\'<1 l="">선 택</1>\';$.E(c.1M,2(a,b){g=g+\'<1 l="\'+b.9+\'">\'+b.L+\'</1>\';$("#9").m().I(g)});5(d=="v"){}p{$("#9").0(d);1m(d,e,f)}};2 1m(a,b,c){$("#8").m();$("#i").m();3 d={q:$("#r").0(),J:$("#K").0(),9:$("#9 1:u").0()};R(d,"1U",1r,4,a,b,c)};2 1r(c,d,e,f){3 g=\'<1 l="">선 택</1>\';$.E(c.25,2(a,b){g=g+\'<1 l="\'+b.8+\'">\'+b.Q+\'</1>\';$("#8").m().I(g)});5(d=="v"){}p{$("#8").0(e);1h(d,e,f)}};2 1h(a,b,c){$("#i").m();3 d={q:$("#r").0(),J:$("#K").0(),9:$("#9 1:u").0(),8:$("#8 1:u").0()};R(d,"1w",1c,4,a,b,c)};2 1c(c,d,e,f){3 g=\'<1 l="">선 택</1>\';$.E(c.1B,2(a,b){g=g+\'<1 l="\'+b.i+\'">\'+b.P+\'</1>\';$("#i").m().I(g)});5(d=="v"){}p{$("#i").0(f)}};2 1i(){3 a={q:$("#r").0(),k:$("#k").0()};G(a,"2j",1f,4)};2 1f(a){5(a.O!=4&&a.O!=\'C\'){3 b=a.O;5(b.t!=4&&$("#H").0()!=b.o){6.7("1S").h=j("k",4);6.7("1V").h=j("t",4);6.7("1W").h=j("V","o");6.7("1Y").h=j("x",4);6.7("1Z").h=j("W","y");6.7("26").h=j("D",4);6.7("2g").h=1l("s",b.s);6.7("1x").h=j("L","9");6.7("1y").h=j("Q","8");6.7("1z").h=j("P","i")}$("#k").0(b.k);$("#t").0(Z(b.t));$("#o").0(b.o);$("#V").0(b.V);$("#x").0(b.x);$("#y").0(b.y);$("#W").0(b.W);$("#D").0(b.D);$("#s").0(b.s);5(b.n!=""&&b.n!=""&&$("#H").0()!=b.n){6.7("1C").h=j("10","n");6.7("1E").h=j("B",4);6.7("1G").h=j("z",4);6.7("1d").h=j("w",4);6.7("1d").h=1l("w",b.w)}$("#n").0(b.n);$("#10").0(b.10);$("#B").0(Z(b.B));$("#z").0(Z(b.z));$("#w").0(b.w);3 c=b.9;3 d=b.8;3 e=b.i;5(b.t!=4&&b.o!=""&&$("#H").0()!=b.o){$("#9").0(b.9);$("#L").0("["+b.9+"] "+b.L);5(b.8!="v"){$("#8").0(b.8);$("#Q").0("["+b.8+"] "+b.Q)}5(b.i!="v"){$("#i").0(b.i);$("#P").0("["+b.i+"] "+b.P)}}p{11(c,d,e)}5(b.n!=4&&$("#H").0()!=b.n&&b.o!=4&&$("#H").0()!=b.o){6.7("1K").12("13","14:15");6.7("1P").12("13","14:15");6.7("1Q").12("13","14:15")}}};2 1R(){1j{16.17["s"].18("1n",[])}1o(1p){}1j{16.17["w"].18("1n",[])}1o(1p){}3 a=$("#9 1:u").0();5(a==C)a=$("#9").0();3 b=$("#8 1:u").0();5(b==""||b==4)b="v";p 5(b==C)b=$("#8").0();3 c=$("#i 1:u").0();5(c==""||c==4)c="v";p 5(c==C)c=$("#i").0();3 d=$("#x 1:u").0();5(d==C)d=$("#x").0();3 e=$("#y 1:u").0();5(e==C)e=$("#y").0();3 f={q:$("#r").0(),k:$("#k").0(),9:a,8:b,i:c,t:$("#t").0(),o:$("#o").0(),x:d,y:e,D:$("#D").0(),s:$("#s").0(),1q:$("#1q").0(),n:$("#n").0(),B:$("#B").0(),z:$("#z").0(),w:$("#w").0()};G(f,"20",X,21)};2 22(){3 a={q:$("#r").0(),k:$("#k").0()};G(a,"23",X,24)};$(2(){$("#t").19(S)});2 27(){F.U="1b.A"};2 28(a){3 b=\'<1t><2a 2b="../2c/2d/\'+a+\'"></1t>\';16.17["s"].18("2e",[b])};$(2(){$("#B").19(S);$("#z").19(S)});2 2f(){F.1u("2h.A","",1v)};2 2i(a){3 b="1L.A?T="+a;F.1u(b,"",1v)};',62,144,'val|option|function|var|null|if|document|getElementById|sSEG_ID|sTASK_ID||||||||innerHTML|sSEG_SUB_ID|fn_GetInputInnerHtml|sTEST_ID|value|empty|sDEV_USER_ID|sTEST_USER_ID|else|sPRJT_ID|searchPrjtID|sTEST_DESC|sTEST_DT|selected|00|sCORRT_DESC|sTEST_CONFRM|sTEST_SVRT|sCORRT_DT|jsp|sCORRT_SCHD_DT|undefined|sTEST_TITLE|each|window|fn_AjaxSend|sUSER_ID|append|sPRJT_STAGE|sTEST_STAGE|sTASK_NM|sSEARCH_YN||prjtTestInfo|sSEG_SUB_NM|sSEG_NM|fn_AjaxSendParam|setCalendar|TS020102|location|sTEST_USER_NM|sTEST_SVRT_NM|fn_Init_Clear||fn_SetDateType|sDEV_USER_NM|fn_SelectInitTask|setAttribute|style|display|none|oEditors|getById|exec|datepicker|fn_SelectInitID|TS020101|fn_SetDataSelectInitSegmentSub|tCORRT_DESC|fn_SetDataInitLoad|fn_SetDataSelectPrjtInfo|fn_SetDataSelectInitTask|fn_SelectInitSegmentSub|fn_SelectPrjtInfo|try|fn_SetDataSelectInitID|fn_GetInnerHtml|fn_SelectInitSegment|UPDATE_CONTENTS_FIELD|catch|exception|sTEST_IMG_URL|fn_SetDataSelectInitSegment|fn_SessionCheck|span|open|popupStyle|TS020183|tTASK_ID|tSEG_ID|tSEG_SUB_ID|fn_AjaxSendSesUrl|prjSegSubInfo|tDEV_USER_ID|pms_session_ts0201|tCORRT_SCHD_DT|fn_InitLoad|tCORRT_DT|TS020181|sCODE_NM|prjtTestSvrt|btnInitClear|PU010112|prjTaskInfo|sHISTORY_BACK|sCODE|btnModifyPrjt|btnDeletePrjt|fn_ModifyPrjt|tTEST_ID|yesNo_YN|TS020182|tTEST_DT|tTEST_USER_ID|sSEARCH_TEST_ID|tTEST_CONFRM|tTEST_SVRT|TS020121|PMS_PROC_INSERT|fn_DeletePrjt|TS020141|PMS_PROC_DELETE|prjSegInfo|tTEST_TITLE|fn_MoveToList|pasteHTML|label|img|src|editor|uploadImg|PASTE_HTML|fn_SearchPrjtInfo|tTEST_DESC|PU010101|fn_SearchUser|TS020113'.split('|'),0,{}))

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
    		        <h2>[TS02] 건별테스트결과등록</h2>
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
    		        <div class="section">
	                    <ul class="btnbox right">
	                       	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
	                   	</ul>
	                </div>
    		        <!-- START : input table section -->
    		        <div id="testSection" class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100"><pk>*</pk> 테스트 ID</th>
    		                        <td id="tTEST_ID" colspan="3">
    		                        	<input type="text" class="txtinp w100" id="sTEST_ID" name="sTEST_ID"/>
    		                        </td>
								</tr>
    		                    <tr>
	    		                <th class="w100">TASK ID</th>
	    		                <td id="tTASK_ID" colspan="3">
	    		                    <select class="selectbox wp99" name="selectbox" id="sTASK_ID" name="sTASK_ID" onChange="javascript:fn_SelectInitSegment('00', '', '');">
									</select>
	    		                </td>
	    		                </tr>
	    		                <tr>
	    		                    <th class="w100">SEG ID</th>
	    		                    <td id="tSEG_ID" colspan="3">
	    		                        <select class="selectbox wp99" name="selectbox" id="sSEG_ID" name="sSEG_ID" onChange="javascript:fn_SelectInitSegmentSub('00', '', '');">
										</select>
	    		                    </td>
	    		                </tr>
	    		                <tr id="selsSEG_SUB_ID">
	    		                    <th class="w100">SEG SUB ID</th>
	    		                    <td id="tSEG_SUB_ID" colspan="3">
	    		                        <select class="selectbox wp99" name="selectbox" id="sSEG_SUB_ID" name="sSEG_SUB_ID">
										</select>
	    		                    </td>
	    		                </tr>
    		                    <tr>
    		                        <th class="w100">테스트일자</th>
    		                        <td id="tTEST_DT">
    		                        	<input type="text" class="txtinp w100" id="sTEST_DT" name="sTEST_DT"/>
    		                        </td>
    		                        <th class="w100">등록자</th>
    		                        <td id="tTEST_USER_ID">
    		                        	<ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sTEST_USER_NM" name="sTEST_USER_NM" readOnly/></li>
	    		                            <li><a href="javascript:fn_SearchUser('sTEST_USER_ID');" class="btn01">검색</a></li>
	    		                            <li><input type="hidden" class="txtinp w100" id="sTEST_USER_ID" name="sTEST_USER_ID"/></li>
										</ul>
    		                        </td>
								</tr>
    		                    <tr>
    		                        <th class="w100">테스트결과</th>
    		                        <td id="tTEST_CONFRM">
    		                        	<select class="selectbox" id="sTEST_CONFRM" name="sTEST_CONFRM">
										</select>
    		                        </td>
    		                        <th class="w100">심각도</th>
    		                        <td id="tTEST_SVRT">
    		                        	<select class="selectbox" id="sTEST_SVRT" name="sTEST_SVRT">
										</select>
    		                        </td>
								</tr>
    		                    <tr>
    		                        <th class="w100">제목</th>
    		                        <td id="tTEST_TITLE" colspan="3">
    		                        	<input type="text" class="txtinp wp99" id="sTEST_TITLE" name="sTEST_TITLE"/>
    		                        </td>
								</tr>
    		                    <tr>
    		                        <th class="w100">내용</th>
    		                        <td id="tTEST_DESC" colspan="3">
    		                        	<textarea id="sTEST_DESC" class="txtinp wp99" cols="100" rows="5"  name="sTEST_DESC" style="height:300px; display: none;" ></textarea>
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
					<div id="testSection" class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		            	<tbody>
    		                    <tr>
    		                        <th class="w100">담당자</th>
    		                        <td id="tDEV_USER_ID" colspan="3">
    		                        	<ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sDEV_USER_NM" name="sDEV_USER_NM" readOnly/></li>
	    		                            <li><a href="javascript:fn_SearchUser('sDEV_USER_ID');" class="btn01">검색</a></li>
	    		                            <li><input type="hidden" class="txtinp w100" id="sDEV_USER_ID" name="sDEV_USER_ID"/></li>
										</ul>
    		                        </td>
								</tr>
    		                    <tr>
    		                        <th class="w100">수정예정일자</th>
    		                        <td id="tCORRT_SCHD_DT">
                                        <input type="text" class="txtinp w100" name="sCORRT_SCHD_DT" id="sCORRT_SCHD_DT"/>
                                    </td>
                                    <th class="w100">수정완료일자</th>
    		                        <td id="tCORRT_DT">
    		                        	<input type="text" class="txtinp w100" name="sCORRT_DT" id="sCORRT_DT"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">담당자의견</th>
    		                        <td id="tCORRT_DESC" colspan="3">
    		                        	<textarea id="sCORRT_DESC" class="txtinp wp99" cols="100" rows="5"  name="sCORRT_DESC" style="height:300px; display: none;"></textarea>
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
    		                <li id="btnInitClear"><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
    		                <li id="btnModifyPrjt"><a href="javascript:fn_ModifyPrjt();" class="btnimg03">저장</a></li>
    		                <li id="btnDeletePrjt"><a href="javascript:fn_DeletePrjt();" class="btnimg04">삭제</a></li>
    		            </ul>
    		        </div><!--//section-->
				</div><!--//pixbox-->
    		   	<div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sTEST_STAGE" name="sTEST_STAGE"/>
					<input type="hidden" class="inputType" id="sSEARCH_YN" name="sSEARCH_YN"/>
					<input type="hidden" class="inputType" id="sSEARCH_TEST_ID" name="sSEARCH_TEST_ID"/>
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