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
var sSEARCH_YN;

function fn_Init() {
	$("#container input[type=text], #container select, #container textarea").val("");

	$("#searchPrjtID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");
	$("#searchPrjtNM").val("<%=(String) session.getAttribute("sPRJT_NM")%>");
	$("#sUSER_ID").val("<%=(String) session.getAttribute("sUSER_ID")%>");
	$("#sUSER_NM").val("<%=(String) session.getAttribute("sUSER_NM")%>");
	
	var sSEARCH_YN = "<%=(String) session.getAttribute("sSEARCH_YN")%>";
	
	if (sSEARCH_YN != null && sSEARCH_YN=='Y') {
		$("#sSEARCH_YN").val(sSEARCH_YN);
		$("#sSEARCH_TASK_ID").val("<%=(String) session.getAttribute("sSEARCH_TASK_ID")%>");
		$("#sSEARCH_SEG_ID").val("<%=(String) session.getAttribute("sSEARCH_SEG_ID")%>");
		$("#sSEARCH_SEG_SUB_ID").val("<%=(String) session.getAttribute("sSEARCH_SEG_SUB_ID")%>");
		$("#sSEARCH_PRG_ID").val("<%=(String) session.getAttribute("sSEARCH_PRG_ID")%>");
	}
	
	fn_InitLoad();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('1 1j(){2 a={w:$("#z").0()};x(a,"Z",13,v)};1 13(c){2 d=\'<3 l="">선 택</3>\';2 e=\'<3 l="">선 택</3>\';$.G(c.L,1(a,b){e=e+\'<3 l="\'+b.1u+\'">\'+b.1s+\'</3>\';$("#m").15().16(e)});$.G(1q,1(a,b){d=d+\'<3 l="\'+b.l+\'">\'+b.1p+\'</3>\';$("#k").15().16(d)});H()};1 17(){s.M="U.i"};1 H(){r=$("#r").0();$("#8").0($("#1g").0());$("#5").0($("#1e").0());$("#4").0($("#1d").0());$("#7").0($("#1c").0());C($("#r").0()=="Y"){2 a="";a+="r=N";1a(a,"19.i",v,F)}};1 F(){2 a={w:$("#z").0(),8:$("#8").0(),5:$("#5").0(),4:$("#4").0(),7:$("#7").0()};x(a,"18",O,v)};1 O(a){2 b=a.L;$("#8").0(b.8);$("#P").0(b.P);$("#5").0(b.5);$("#Q").0(b.Q);$("#4").0(b.4);$("#R").0(b.R);$("#7").0(b.7);$("#S").0(b.S);$("#T").0(6(b.T));$("#V").0(6(b.V));$("#W").0(6(b.W));$("#X").0(6(b.X));$("#p").0(b.p);$("#q").0(b.q);$("#g").0(b.g);$("#A").0(b.A);$("#j").0(6(b.j));$("#k").0(b.k);$("#m").0(b.m);$("#f").0(b.f);$("#9").0(b.9);$("#t").0(b.t);$("#o").0(6(b.o));$("#n").0(6(b.n));$("#h").0(b.h);C($("#g").0()==""){$("#g").0($("#J").0());$("#A").0($("#I").0())}C($("#9").0()==""){$("#9").0($("#J").0());$("#t").0($("#I").0())}};1 1b(){D.E["f"].y("14",[]);D.E["h"].y("14",[]);2 a={w:$("#z").0(),8:$("#8").0(),5:$("#5").0(),4:$("#4").0(),7:$("#7").0(),p:$("#p").0(),q:$("#q").0(),g:$("#g").0(),j:$("#j").0(),k:$("#k").0(),m:$("#m").0(),f:$("#f").0(),9:$("#9").0(),o:$("#o").0(),n:$("#n").0(),h:$("#h").0()};x(a,"1f",12,1h)};1 1i(a){2 b=\'<K><1k 1l="../1m/1n/\'+a+\'"></K>\';D.E["f"].y("1o",[b])};1 12(){s.M="Z.i"};$(1(){$("#j").B(u);$("#o").B(u);$("#n").B(u)});1 1r(){s.11("1t.i","",10)};1 1v(a){2 b="1w.i?U="+a;s.11(b,"",10)};',62,95,'val|function|var|option|sSEG_SUB_ID|sSEG_ID|fn_SetDateType|sPRG_ID|sTASK_ID|sDEV_USER_ID||||||sTEST_DESC|sTEST_USER_ID|sCORRT_DESC|jsp|sTEST_DT|sTEST_CONFRM|value|sTEST_SVRT|sCORRT_DT|sCORRT_SCHD_DT|sTEST_INPUT_DATA|sTEST_RSLT|sSEARCH_YN|window|sDEV_USER_NM|setCalendar|null|sPRJT_ID|fn_AjaxSend|exec|searchPrjtID|sTEST_USER_NM|datepicker|if|oEditors|getById|fn_SelectPrjtInfo|each|fn_SessionCheck|sUSER_NM|sUSER_ID|span|prjtDevTestInfo|location||fn_SetDataSelectPrjtInfo|sTASK_NM|sSEG_NM|sSEG_SUB_NM|sPRG_NM|sPRJ_DEV_STRT_DT|TS030102|sPRJ_DEV_END_DT|sTEST_PLAN_STRT_DT|sTEST_PLAN_END_DT||TS030101|popupStyle|open|fn_MoveToList|fn_SetDataInitLoad|UPDATE_CONTENTS_FIELD|empty|append|fn_Init_Clear|TS030113|pms_session_ts0301|fn_AjaxSendSesUrl|fn_InsertPrjt|sSEARCH_PRG_ID|sSEARCH_SEG_SUB_ID|sSEARCH_SEG_ID|TS030121|sSEARCH_TASK_ID|PMS_PROC_INSERT|pasteHTML|fn_InitLoad|img|src|editor|uploadImg|PASTE_HTML|label|yesNo_YN|fn_SearchPrjtInfo|sCODE_NM|PU010101|sCODE|fn_SearchUser|PU010112'.split('|'),0,{}))

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
    		        <h2>[TS03] 단위테스트 결과등록</h2>
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
	    		                    <th class="w100"><pk>*</pk> TASK ID</th>
    		                        <td colspan="3">
										<input type="text" class="txtinp w100" id="sTASK_ID" name="sTASK_ID" readonly/>
										<input type="text" class="txtinp w400" id="sTASK_NM" name="sTASK_NM" readonly/>
    		                        </td>
	    		                </tr>
    		                    <tr>
    		                        <th class="w100">SEG ID</th>
    		                        <td colspan="3">
										<input type="text" class="txtinp w100" id="sSEG_ID" name="sSEG_ID" readonly/>
										<input type="text" class="txtinp w400" id="sSEG_NM" name="sSEG_NM" readonly/>
    		                        </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">SEG SUB ID</th>
    		                        <td colspan="3">
										<input type="text" class="txtinp w100" id="sSEG_SUB_ID" name="sSEG_SUB_ID" readonly/>
										<input type="text" class="txtinp w400" id="sSEG_SUB_NM" name="sSEG_SUB_NM" readonly/>
    		                        </td>
    		                    </tr>
    		                    <tr>
    		                    	<th class="w100">프로그램명</th>
    		                        <td colspan="3">
										<input type="text" class="txtinp w100" id="sPRG_ID" name="sPRG_ID" readonly/>
										<input type="text" class="txtinp w400" id="sPRG_NM" name="sPRG_NM" readonly/>
    		                        </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">개발시작일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sPRJ_DEV_STRT_DT" name="sPRJ_DEV_STRT_DT" readonly/>
    		                        </td>
    		                        <th class="w100">개발종료일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sPRJ_DEV_END_DT" name="sPRJ_DEV_END_DT" readonly/>
    		                        </td>
								</tr>
   								<tr>
    		                        <th class="w100">테스트 시작예정일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sTEST_PLAN_STRT_DT" name="sTEST_PLAN_STRT_DT" readonly/>
    		                        </td>
    		                        <th class="w100">테스트 종료예정일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sTEST_PLAN_END_DT" name="sTEST_PLAN_END_DT" readonly/>
    		                        </td>
								</tr>
								<tr>
	    		                    <th class="w120">입력 데이터</th>
	    		                    <td colspan="3">
	    		                        <textarea class="txtinp wp99" cols="100" rows="7" name="sTEST_INPUT_DATA" id="sTEST_INPUT_DATA"></textarea>
	    		                    </td>
	    		                </tr>
	    		                <tr>
	    		                    <th class="w120">예상결과</th>
	    		                    <td colspan="3">
	    		                        <textarea class="txtinp wp99" cols="100" rows="5" name="sTEST_RSLT" id="sTEST_RSLT"></textarea>
	    		                    </td>
	    		                </tr>
	    		                <tr>
	    		                    <th class="w120">테스트담당자</th>
	    		                    <td>
	    		                        <input type="text" class="txtinp w100" name="sTEST_USER_NM" id="sTEST_USER_NM" readOnly/>
	    		                        <input type="hidden" class="txtinp w100" name="sTEST_USER_ID" id="sTEST_USER_ID"/>
										<a href="javascript:fn_SearchUser('sTEST_USER_ID');" class="btn01">검 색</a>
	    		                    </td>
	    		                    <th class="w120">테스트일자</th>
	    		                    <td>
	    		                        <input type="text" class="txtinp w100" name="sTEST_STRT_DT" id="sTEST_DT"/>
	    		                    </td>
	    		                </tr>
    		                    <tr>
    		                        <th class="w120">테스트결과</th>
    		                        <td>
    		                        	<select class="selectbox" id="sTEST_CONFRM" name="sTEST_CONFRM">
										</select>
    		                        </td>
    		                        <th class="w120">심각도</th>
    		                        <td>
    		                        	<select class="selectbox" id="sTEST_SVRT" name="sTEST_SVRT">
										</select>
    		                        </td>
								</tr>
    		                    <tr>
    		                        <th class="w120">테스트 내용</th>
    		                        <td colspan="3">
    		                        	<textarea id="sTEST_DESC" class="txtinp w700" cols="100" rows="5"  name="sTEST_DESC" style="height:300px; display: none;" ></textarea>
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
    		                    <tr>
    		                        <th class="w120">담당자</th>
    		                        <td colspan="3">
    		                        	<ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sDEV_USER_NM" name="sDEV_USER_NM" readOnly/></li>
	    		                            <li><a href="javascript:fn_SearchUser('sDEV_USER_ID');" class="btn01">검색</a></li>
	    		                            <li><input type="hidden" class="txtinp w100" id="sDEV_USER_ID" name="sDEV_USER_ID"/></li>
										</ul>
    		                        </td>
								</tr>
    		                    <tr>
    		                        <th class="w120">수정예정일자</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" name="sCORRT_SCHD_DT" id="sCORRT_SCHD_DT"/>
                                    </td>
                                    <th class="w120">수정완료일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sCORRT_DT" id="sCORRT_DT"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w120">담당자의견</th>
    		                        <td colspan="3">
    		                        	<textarea id="sCORRT_DESC" class="txtinp w700" cols="100" rows="5"  name="sCORRT_DESC" style="height:300px; display: none;"></textarea>
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
    		                <li><a href="javascript:fn_InsertPrjt();" class="btnimg03">저장</a></li>
    		            </ul>
    		        </div><!--//section-->
			</div><!--//pixbox-->
    		   	<div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sSEARCH_YN" name="sSEARCH_YN"/>
					<input type="hidden" class="inputType" id="sSEARCH_TASK_ID" name="sSEARCH_TASK_ID"/>
					<input type="hidden" class="inputType" id="sSEARCH_SEG_ID" name="sSEARCH_SEG_ID"/>
					<input type="hidden" class="inputType" id="sSEARCH_SEG_SUB_ID" name="sSEARCH_SEG_SUB_ID"/>
					<input type="hidden" class="inputType" id="sSEARCH_PRG_ID" name="sSEARCH_PRG_ID"/>
					<input type="hidden" class="inputType" id="sUSER_ID" name="sUSER_ID"/>
					<input type="hidden" class="inputType" id="sUSER_NM" name="sUSER_NM"/>
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
</div>
<!--//footer-->


</body>
</html>