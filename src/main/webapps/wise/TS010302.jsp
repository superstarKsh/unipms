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
		$("#sSEARCH_TEST_SCN_ID").val("<%=(String) session.getAttribute("sSEARCH_TEST_SCN_ID")%>");
		$("#sSEARCH_TEST_CASE_ID").val("<%=(String) session.getAttribute("sSEARCH_TEST_CASE_ID")%>");
		$("#sHISTORY_BACK").val("<%=(String) session.getAttribute("sHISTORY_BACK")%>");
	}

	fn_InitLoad();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('1 19(){2 a={H:$("#F").0()};D(a,"1N",T,8)};1 T(c){2 d=\'<4 q="">선 택</4>\';2 e=\'<4 q="">선 택</4>\';$.15(c.1M,1(a,b){e=e+\'<4 q="\'+b.1G+\'">\'+b.1D+\'</4>\';$("#n").X().Z(e)});$.15(1B,1(a,b){d=d+\'<4 q="\'+b.q+\'">\'+b.1A+\'</4>\';$("#p").X().Z(d)});k($("#v").0()=="Y"){$("#h").0($("#1z").0());$("#i").0($("#1y").0())}R()};1 1x(){I.V="W.u"};1 16(){$("#y 1s[1q=1o], #y 1i, #y 1h").0("");s.t["6"].r("P",[""]);s.t["9"].r("P",[""])};1 R(){k($("#v").0()==\'Y\'){$("#v").0("");2 a="";a+="v=N";1d(a,"1b.u",8,U)}};1 U(){2 a={H:$("#F").0(),h:$("#h").0(),i:$("#i").0()};D(a,"1a",J,8)};1 J(a){k(a.E!=8&&a.E!=\'1u\'){2 b=a.E;$("#h").0(b.h);$("#i").0(b.i);$("#G").0(b.G);$("#17").0(b.G);$("#12").0(b.12);$("#13").0(b.13);k($("#14").0()!=b.m){3.5("18").7=f("B","m");3.5("1c").7=f("j",8);3.5("1e").7=f("p",8);3.5("1f").7=f("z","n");3.5("1g").7=K("6",b.6)}$("#m").0(b.m);$("#B").0(b.B);$("#j").0(x(b.j,"."));$("#p").0(b.p);$("#n").0(b.n);$("#z").0(b.z);$("#6").0(b.6);k($("#j").0()=="")3.5("1j").1k("1l","1m:1n");k(b.g!=""&&$("#14").0()!=b.g){3.5("1p").7=f("A","g");3.5("1r").7=f("l",8);3.5("1t").7=f("o",8);3.5("1v").7=K("9",b.9)}$("#g").0(b.g);$("#A").0(b.A);$("#l").0(x(b.l,"."));$("#o").0(x(b.o,"."));$("#9").0(b.9)}};1 1w(){S{s.t["6"].r("Q",[])}M(11){}S{s.t["9"].r("Q",[])}M(11){}2 a={H:$("#F").0(),h:$("#h").0(),i:$("#i").0(),j:$("#j").0(),m:$("#m").0(),p:$("#p 4:10").0(),n:$("#n 4:10").0(),6:$("#6").0(),g:$("#g").0(),l:$("#l").0(),o:$("#o").0(),9:$("#9").0()};D(a,"1C",O,1E)};1 1F(a){2 b=\'<L><1H 1I="../1J/1K/\'+a+\'"></L>\';s.t["6"].r("1L",[b])};$(1(){$("#l").C(w);$("#o").C(w)});$(1(){$("#j").C(w)});1 O(){2 a=$("#1O").0();I.V=a+".u"};1 1P(a){2 b="1Q.u?W="+a;I.1R(b,"",1S)};',62,117,'val|function|var|document|option|getElementById|sTEST_DESC|innerHTML|null|sCORRT_DESC||||||fn_GetInputInnerHtml|sDEV_USER_ID|sTEST_SCN_ID|sTEST_CASE_ID|sTEST_DT|if|sCORRT_SCHD_DT|sTEST_USER_ID|sTEST_SVRT|sCORRT_DT|sTEST_CONFRM|value|exec|oEditors|getById|jsp|sSEARCH_YN|setCalendar|fn_SetDateType|testSection|sTEST_SVRT_NM|sDEV_USER_NM|sTEST_USER_NM|datepicker|fn_AjaxSend|prjtTestDetailInfo|searchPrjtID|sTEST_CASE_NM|sPRJT_ID|window|fn_SetDataSelectPrjtInfo|fn_GetInnerHtml|span|catch||fn_MoveToList|SET_CONTENTS|UPDATE_CONTENTS_FIELD|fn_SessionCheck|try|fn_SetDataInitLoad|fn_SelectPrjtInfo|location|TS010302|empty||append|selected|exception|sTEST_INPUT_DATA|sTEST_RSLT|sUSER_ID|each|fn_Init_Data|sTEST_CASE_DESC|tTEST_USER_ID|fn_InitLoad|TS010313|pms_session_ts0103|tTEST_DT|fn_AjaxSendSesUrl|tTEST_CONFRM|tTEST_SVRT|tTEST_DESC|textarea|select|modSection|setAttribute|style|display|none|text|tDEV_USER_ID|type|tCORRT_SCHD_DT|input|tCORRT_DT|undefined|tCORRT_DESC|fn_InsertPrjt|fn_Init_Clear|sSEARCH_TEST_CASE_ID|sSEARCH_TEST_SCN_ID|label|yesNo_YN|TS010331|sCODE_NM|PMS_PROC_INSERT|pasteHTML|sCODE|img|src|editor|uploadImg|PASTE_HTML|prjtTestSvrt|TS010301|sHISTORY_BACK|fn_SearchUser|PU010112|open|popupStyle'.split('|'),0,{}))

</script>
</head>

<body onload="fn_Init();">
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
    		        <h2>[TS01] 통합테스트 결과 등록</h2>
    		        <!-- END : title -->
					<!-- START : search section -->
    		        <div id="searchSection" class="section">
    		            <div class="search">
    		                <div class="box">
    		                    <ul>
    		                        <li class="name"><span>프로젝트ID</span></li>
    		                        <li><input type="text" class="txtinp w100" id="searchPrjtID" name="searchPrjtID" readOnly/></li>
    		                        <li><input type="text" class="txtinp w300" id="searchPrjtNM"  name="searchPrjtNM" readOnly/></li>
    		                    </ul>
    		                </div>
    		            </div><!--//search-->
    		        </div><!--//section-->
    		        <!-- START : input table section -->
    		        <div id="section" class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
	    		                    <th class="w120"><pk>*</pk> 테스트시나리오 ID</th>
	    		                    <td>
	    		                        <input type="text" class="txtinpd" id="sTEST_SCN_ID" name="sTEST_SCN_ID" readOnly/>
	    		                    </td>
	    		                    <th class="w120"><pk>*</pk> 테스트케이스 ID</th>
	    		                    <td>
	    		                        <input type="text" class="txtinpd" id="sTEST_CASE_ID" name="sTEST_CASE_ID" readOnly/>
	    		                    </td>
	    		                </tr>
	    		                <tr>
	    		                    <th class="w120">테스트케이스 명</th>
	    		                    <td colspan="3">
	    		                        <input type="text" class="txtinpd" id="sTEST_CASE_NM" name="sTEST_CASE_NM" readOnly/>
	    		                    </td>
	    		                </tr>
	    		                <tr>
	    		                    <th class="w120">테스트케이스 설명</th>
	    		                    <td colspan="3">
	    		                        <input type="text" class="txtinpd" id="sTEST_CASE_DESC" name="sTEST_CASE_DESC" readOnly></textarea>
	    		                    </td>
	    		                </tr>
	    		                <tr>
	    		                    <th class="w120">입력 데이터</th>
	    		                    <td colspan="3">
	    		                        <input type="text" class="txtinpd" id="sTEST_INPUT_DATA" name="sTEST_INPUT_DATA" readOnly></textarea>
	    		                    </td>
	    		                </tr>
	    		                <tr>
	    		                    <th class="w120">예상결과</th>
	    		                    <td colspan="3">
	    		                        <input type="text" class="txtinpd" id="sTEST_RSLT" name="sTEST_RSLT" readOnly></textarea>
	    		                    </td>
	    		                </tr>
							</tbody>
    		            </table>
    		        </div><!--//section-->
					<div id="testSection" class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
	    		                <tr>
	    		                    <th class="w120">테스트담당자</th>
	    		                    <td id="tTEST_USER_ID">
	    		                        <input type="text" class="txtinp w100" id="sTEST_USER_NM" name="sTEST_USER_NM" readOnly/>
	    		                        <input type="hidden" class="txtinp w100" id="sTEST_USER_ID" name="sTEST_USER_ID"/>
										<a href="javascript:fn_SearchUser('sTEST_USER_ID');" class="btn01">검 색</a>
	    		                    </td>
	    		                    <th class="w120">테스트일자</th>
	    		                    <td id="tTEST_DT">
	    		                        <input type="text" class="txtinp w100" id="sTEST_DT" name="sTEST_DT" readOnly/>
	    		                    </td>
	    		                </tr>
    		                    <tr>
    		                        <th class="w120">테스트결과</th>
    		                        <td id="tTEST_CONFRM">
    		                        	<select class="selectbox" id="sTEST_CONFRM" name="sTEST_CONFRM">
										</select>
    		                        </td>
    		                        <th class="w120">심각도</th>
    		                        <td id="tTEST_SVRT">
    		                        	<select class="selectbox" id="sTEST_SVRT" name="sTEST_SVRT">
										</select>
										<input type="hidden" class="txtinp w100" id="sTEST_SVRT_NM" name="sTEST_SVRT_NM"/>
    		                        </td>
								</tr>
    		                    <tr>
    		                        <th class="w120">테스트 내용</th>
    		                        <td id="tTEST_DESC" colspan="3">
    		                        	<textarea class="txtinp w700" cols="100" rows="5"  id="sTEST_DESC" name="sTEST_DESC" style="height:300px; display: none;" ></textarea>
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
					<div id="modSection" class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                	<tr>
    		                        <th class="w120">담당자</th>
    		                        <td id="tDEV_USER_ID" colspan="3">
    		                        	<ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sDEV_USER_NM" name="sDEV_USER_NM" readOnly/></li>
	    		                            <li><a href="javascript:fn_SearchUser('sDEV_USER_ID');" class="btn01">검색</a></li>
	    		                            <li><input type="hidden" class="txtinp w100" id="sDEV_USER_ID" name="sDEV_USER_ID"/></li>
										</ul>
    		                        </td>
								</tr>
    		                    <tr>
    		                        <th class="w120">수정예정일자</th>
    		                        <td id="tCORRT_SCHD_DT">
                                        <input type="text" class="txtinp w100" id="sCORRT_SCHD_DT" name="sCORRT_SCHD_DT"/>
                                    </td>
                                    <th class="w120">수정완료일자</th>
    		                        <td id="tCORRT_DT">
    		                        	<input type="text" class="txtinp w100" id="sCORRT_DT" name="sCORRT_DT"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w120">담당자의견</th>
    		                        <td id="tCORRT_DESC" colspan="3">
    		                        	<textarea class="txtinp w700" cols="100" rows="5" id="sCORRT_DESC" name="sCORRT_DESC" style="height:300px; display: none;"></textarea>
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
    		                <li><a href="javascript:fn_Init_Data();" class="btnimg02">초기화</a></li>
    		                <li><a href="javascript:fn_InsertPrjt();" class="btnimg03">저장</a></li>
    		            </ul>
    		        </div><!--//section-->
				</div><!--//pixbox-->
    		   	<div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sTEST_STAGE" name="sTEST_STAGE"/>
					<input type="hidden" class="inputType" id="sSEARCH_YN" name="sSEARCH_YN"/>
					<input type="hidden" class="inputType" id="sSEARCH_TEST_SCN_ID" name="sSEARCH_TEST_SCN_ID"/>
					<input type="hidden" class="inputType" id="sSEARCH_TEST_CASE_ID" name="sSEARCH_TEST_CASE_ID"/>
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