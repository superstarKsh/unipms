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

	$("#searchPrjtID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");
	$("#searchPrjtNM").val("<%=(String) session.getAttribute("sPRJT_NM")%>");
	$("#sTEST_STAGE").val("<%=(String) session.getAttribute("sTEST_STAGE")%>");

	fn_InitLoad();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('f 2d(){19()};f 19(){g a="1c s^테스트시나리오s^테스트시나리오 명^테스트기간^테스트기간^등록자^등록자s^1z^13^16|1c s^테스트시나리오s^테스트시나리오 명^시작일자^종료일자^등록자^등록자s^1z^13^16";g b="12%,15%,2F%,15%,15%,10%,10%,10%,10%,10%";1j=1k("1w","p",a,b,"2C","11",u,e);p=17(1j);18=[h("1a","n","2B","l",e,m),h("1g","n","k","l",e,m),h("1i","n","2y","E",e,m),h("1l","n","1m","l","1o.1p.1q",m),h("1r","n","1t","l","1o.1p.1q",m),h("1u","n","2w","l",e,m),h("1x","n","2v","l",e,u),h("1D","n","2s","l",e,u),h("1H","n","2q","l",e,u),h("2p","n","2m","l",e,u)];p.1P(18);p.1Q("1R","X","","");a="테스트케이스 s^테스트케이스 명^테스트담당자^테스트담당자^테스트케이스 설명^입력데이터^예상결과^테스트담당자s";b="12%,20%,10%,3%,2j%,25%,20%,10%";Z=1k("2i","9",a,b,"2h","O",u,e);9=17(Z);14=[h("1a","o","t","l",e,m),h("1g","o","C","E",e,m),h("1i","o","W","l",e,m),h("1l","2g","","l",e,m),h("1r","o","F","E",e,m),h("1u","o","z","E",e,m),h("1x","o","A","E",e,m),h("1D","o","B","l",e,u),h("1H","o","k","l",e,u)];9.1P(14);9.1Q("1R","1e","","");1f()};f 2f(){J.2e="K.G"};f I(){$("#N o[1n=1h]:2c([2a=k]), #N Q, #N 1s").8("");L();1v()};f 1v(){$("#M o[1n=1h], #M Q, #M 1s").8("");r(29==1){1A.27("1C").Q();1A.26.1Z()}1F{$("#1C").8("")}};f L(){g a={x:$("#w").8(),k:$("#k").8()};v(a,"1W",1K,e)};f 1K(a){g b=a.U;$("#t").8(b.t)};f 1f(){I();g a={x:$("#w").8(),1L:$("#1M").8()};v(a,"1V",1O,e)};f 1O(a){11=a.1w;p.V()};f D(){I();g a={x:$("#w").8(),1L:$("#1M").8(),k:$("#k").8()};v(a,"2l",1S,e)};f 1S(a){O=a.U;9.V()};f 1U(){r($("#k").8()==""){H(1N);y}1F r($("#t").8()==""){H(1X);y}g a={x:$("#w").8(),k:$("#k").8(),t:$("#t").8(),C:$("#C").8(),F:$("#F").8(),z:$("#z").8(),A:$("#A").8(),B:$("#B").8()};v(a,"1Y",D,1E)};f 21(){g a={x:$("#w").8(),k:$("#k").8()};v(a,"22",D,23)};f 24(){r($("#k").8()==""){H(1N);y}g a=P 1B();g b=P 28(9.1y-1);a.q("x",$("#w").8());a.q("k",$("#k").8());2b(g i=1;i<9.1y;i++){g c=P 1B();c.q("t",9.j(i,0));c.q("C",9.j(i,1));c.q("F",9.j(i,4));c.q("z",9.j(i,5));c.q("A",9.j(i,6));c.q("B",9.j(i,7));c.q("W",9.j(i,2));b[i-1]=c}a.2k("1T",b);g d=a.2n();v(d,"2o",D,1E)};f X(){g a=p.1J();r(a<=0)y;I();$("#k").8(p.j(a,1));$("#1m").8(1I(p.j(a,3),"."));$("#1t").8(1I(p.j(a,4),"."));L();D()};f 1e(){g a=9.1J();g b=9.2r();r(a<=0)y;$("#t").8(9.j(a,0));$("#C").8(9.j(a,1));$("#F").8(9.j(a,4));$("#z").8(9.j(a,5));$("#A").8(9.j(a,6));$("#B").8(9.j(a,7));$("#W").8(9.j(a,2));r(b==3){g c="1G.G?2t="+a+"&K=2u";J.R(c,"",S)}};f 2x(){r($("#T").8()==""){H(2z);y}2A("1b",Y)};f Y(){g a={T:2D($("#T").8())};v(a,"2E",1d,e)};f 1d(a){O=a.U;9.V()};f 2G(){g a="2H.2I";2J("1b",a)};f 2K(){J.R("2L.G","",S)};f 2M(a){g b="1G.G?K="+a;J.R(b,"",S)};',62,173,'||||||||val|objSBGridDetail|||||null|function|var|fn_SetSBGridCol||getTextMatrix|sTEST_SCN_ID|center|false|output|input|objSBGrid|put|if|ID|sTEST_CASE_ID|true|fn_AjaxSend|searchPrjtID|sPRJT_ID|return|sTEST_INPUT_DATA|sTEST_RSLT|sTEST_USER_ID|sTEST_CASE_NM|fn_SelectPrjtInfoDetail|left|sTEST_CASE_DESC|jsp|alert|fn_Init_Data|window|TS010201|fn_SelectInitID|fileSection|section|resultDataDetail|new|select|open|popupStyle|sFILE_NM|prjtTestDetailInfo|rebuild|sTEST_USER_NM|fn_SelectListInfo|fn_ExcelDataLoad|objGridInitInfoDetail||resultData||SEG_ID|objColumnsInfoDetail||SEG_SUB_ID|createSBDataGrid|objColumnsInfo|fn_InitGrid|00|TS0102|TASK|fn_SetDataExcelDataLoad|fn_SelectListInfoDetail|fn_SelectPrjtInfo|01|text|02|objGridInitInfo|fn_InitSBGrid|03|sTEST_STRT_DT|type|yyyy|mm|dd|04|textarea|sTEST_END_DT|05|fn_File_Clear|prjtTestScnrInfo|06|rows|TASKID|document|Map|uploadFile|07|PMS_PROC_INSERT|else|PU010112|08|fn_SetDateType|getRow|fn_SetDataSelectInitID|sPRJT_STAGE|sTEST_STAGE|SELECT_TEST_SCN_ID|fn_SetDataSelectPrjtInfo|createColumns|addEventListener|onclick|fn_SetDataSelectPrjtInfoDetail|sTEST_DETAIL|fn_InsertPrjt|TS010211|TS010202|INSERT_TEST_CASE_ID|TS010221|clear||fn_DeletePrjt|TS010241|PMS_PROC_DELETE|fn_ModifyPrjt||selection|getElementById|Array|brswType|id|for|not|fn_InitLoad|location|fn_Init_Clear|imageS|300px|prjtTestScnrDetailInfo|30|putMapList|TS010212|sSEG_SUB_ID|jsonParse|TS010222|09|sSEG_ID|getCol|sTASK_ID|nSelRow|sTEST_USER_ID_GRID|sREG_USER_ID|sREG_USER_NM|fn_InsertPrjtFile|sTEST_SCN_NM|SELECT_MODIFY_FILE|fn_InsertUploadFile|sACTIVITY_ID|200px|fn_GetFileName|TS010253|33|fn_FileDownload|uni_pms_integration_test|xls|fn_DownloadFile|fn_SearchPrjtInfo|PU010101|fn_SearchUser'.split('|'),0,{}))

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
    			<form name="contentsForm" enctype="multipart/form-data"  onsubmit="return false">
	    		    <div class="fixbox">
						<!-- START : title -->
	    		        <h2>[TS01] 통합테스트 시나리오 테스트케이스 등록</h2>
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
	                    <!-- START : grid section -->
		    		    <div class="section">
		    		        <div id="prjtTestScnrInfo">
							</div>
		    		    </div>
		    		    <br/>
		    		    <!-- END : grid section -->
		    		    <!-- START : input table section -->
	    		        <div id="section" class="section">
	    		        	<h3>테스트케이스</h3>
	    		            <table class="table01" border="0" cellspacing="0" summary="">
	    		                <tbody>
	    		                    <tr>
	    		                        <th class="w150"><pk>*</pk> 테스트시나리오 ID</th>
	    		                        <td>
	    		                        	<input type="text" class="txtinp w100" name="sTEST_SCN_ID" id="sTEST_SCN_ID" />
	    		                        </td>
	    		                        <th class="w150"><pk>*</pk> 테스트케이스 ID</th>
	    		                        <td>
	    		                        	<input type="text" class="txtinp w100" name="sTEST_CASE_ID" id="sTEST_CASE_ID" />
	    		                        </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w150">테스트케이스 명</th>
	    		                        <td colspan="3">
	    		                        	<input type="text" class="txtinp wp99" name="sTEST_CASE_NM" id="sTEST_CASE_NM"/>
	    		                        </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w150">테스트케이스 설명</th>
	    		                        <td colspan="3">
	    		                        	<textarea class="txtinp wp99" cols="100" rows="5" name="sTEST_CASE_DESC" id="sTEST_CASE_DESC" ></textarea>
	    		                        </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w150">입력 데이터</th>
	    		                        <td colspan="3">
	    		                        	<textarea class="txtinp wp99" cols="100" rows="7" name="sTEST_INPUT_DATA" id="sTEST_INPUT_DATA" ></textarea>
	    		                        </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w150">예상결과</th>
	    		                        <td colspan="3">
	    		                        	<textarea class="txtinp wp99" cols="100" rows="5" name="sTEST_RSLT" id="sTEST_RSLT" ></textarea>
	    		                        </td>
	    		                    </tr>
	    		                    <tr>
	    		                    	<th class="w150">테스트담당자</th>
	    		                        <td>
	    		                        	<input type="text" class="txtinp w100" name="sTEST_USER_NM" id="sTEST_USER_NM" readOnly/>
	    		                        	<input type="hidden" class="txtinp w100" name="sTEST_USER_ID" id="sTEST_USER_ID"/>
											<a href="javascript:fn_SearchUser('sTEST_USER_ID');" class="btn01">검 색</a>
	    		                        </td>
	    		                        <th class="w150">테스트일자</th>
	    		                        <td>
	    		                        	<input type="text" class="txtinp w100" name="sTEST_STRT_DT" id="sTEST_STRT_DT" readOnly/> ~ 
	    		                        	<input type="text" class="txtinp w100" name="sTEST_END_DT" id="sTEST_END_DT" readOnly/>
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
	    		        <!-- START : grid section -->
		    		    <div class="section">
		    		        <div id="prjtTestScnrDetailInfo">
							</div>
		    		    </div>
		    		    <div id="fileSection" class="section">
							<table class="table01" border="0" cellspacing="0" summary="">
								<tr>
									<th>일괄등록</th>
									<td>
										<div class="inputfileMR">
											<input type="text" class="txtinp w400" id="sFILE_NM" name="sFILE_NM" readOnly/>
											<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sFILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>
			    		                </div>
									</td>
									<td>
										<ul class="tase right">
											<li><a href="javascript:fn_FileDownload()" class="btn01">양식  Download</a></li>
											<li><a href="javascript:fn_InsertPrjtFile();" class="btn01">양식 Upload</a></li>
										</ul>
									</td>
								</tr> 	
							</table>      					
						</div>
		    		    <!-- END : grid section -->
		    		    <!-- START : button section -->
	    		        <div class="section">
	    		            <ul class="btnbox right">
	    		                <li><a href="javascript:fn_ModifyPrjt();" class="btnimg03">저장</a></li>
	    		            </ul>
	    		        </div><!--//section-->
					</div><!--//pixbox-->
	    		    <div id="hiddenColumn">
						<input type="hidden" class="inputType" id="sTEST_STAGE" name="sTEST_STAGE"/>
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