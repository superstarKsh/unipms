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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('n 1X(){k c=\'<m z="">선 택</m>\';$.16(1j,n(a,b){c=c+\'<m z="\'+b.1k+\'">\'+b.z+\'</m>\';$("#L").A().X(c)});1l()};n 1l(){k a="테스트시나리오I^테스트시나리오 명^등록자^등록자^테스트기간^테스트기간^확인구분^확인자^확인자^확인의견^등록자I^확인자I^1o^1I^1f|테스트시나리오I^테스트시나리오 명^등록자^등록자^시작일자^종료일자^확인구분^확인자^확인자^확인의견^등록자I^확인자I^1o^1I^1f";k b="15%,20%,10%,3%,13%,13%,10%,10%,3%,15%,10%,10%,10%,10%,10%";1m=1S("S","l",a,b,"2k","1z",H,p);l=2g(1m);1i=[q("C","Y","s","t",p,y),q("2c","Y","P","1p",p,y),q("2f","E","1C","t",p,y),q("2D","1D","","t",p,y),q("27","1G","K","t","1K.1L.1e",y),q("2i","1G","J","t","1K.1L.1e",y),q("2w","2x","L","t",["1j","1k","z"],y),q("2A","E","1g","t",p,y),q("1N","1D","","t",p,y),q("1Q","Y","N","1p",p,y),q("10","E","O","t",p,H),q("11","E","Q","t",p,H),q("12","E","r","t",p,H),q("13","E","u","t",p,H),q("14","E","x","t",p,H)];l.2l(1i);l.2m("2n","1t","","");1w("C")};n 2y(){R.2B="W.M"};n 1E(){$("#1F Y[1V=2H]:21([23=s]), #1F 25").j("")};n 1w(a,b,c){$("#r").A();$("#u").A();$("#x").A();k d={G:$("#D").j(),1a:$("#1c").j()};1d(d,"2j",1h,p,a,b,c)};n 1h(c,d,e,f){k g=\'<m z="">선 택</m>\';$.16(c.2o,n(a,b){g=g+\'<m z="\'+b.r+\'">\'+b.2p+\'</m>\';$("#r").A().X(g)});w(d=="C"){k h=c.S;$("#s").j(h.s);F()}Z{$("#r").j(d);18(d,e,f)}};n 18(a,b,c){$("#u").A();$("#x").A();k d={G:$("#D").j(),1a:$("#1c").j(),r:$("#r m:B").j()};1d(d,"2E",1q,p,a,b,c)};n 1q(c,d,e,f){k g=\'<m z="">선 택</m>\';$.16(c.1O,n(a,b){g=g+\'<m z="\'+b.u+\'">\'+b.1P+\'</m>\';$("#u").A().X(g)});w(d=="C"){k h=c.S;$("#s").j(h.s);F()}Z{$("#u").j(e);1r(d,e,f)}};n 1r(a,b,c){$("#x").A();k d={G:$("#D").j(),1a:$("#1c").j(),r:$("#r m:B").j(),u:$("#u m:B").j()};1d(d,"1R",1s,p,a,b,c)};n 1s(c,d,e,f){k g=\'<m z="">선 택</m>\';$.16(c.1T,n(a,b){g=g+\'<m z="\'+b.x+\'">\'+b.1U+\'</m>\';$("#x").A().X(g)});w(d=="C"){k h=c.S;$("#s").j(h.s);F()}Z{$("#x").j(f)}};n F(){1E();k a={G:$("#D").j()};T(a,"1W",1u,p)};n 1u(a){1z=a.S;l.1Y()};n 1Z(){w($("#r").j()==""){1v(22);19}Z w($("#s").j()==""){1v(24);19}k a=$("#u m:B").j();w(a==""||a==p)a="C";k b=$("#x m:B").j();w(b==""||b==p)b="C";k c={G:$("#D").j(),r:$("#r m:B").j(),u:a,x:b,s:$("#s").j(),P:$("#P").j(),K:$("#K").j().1x(".",""),J:$("#J").j().1x(".",""),L:$("#L").j(),Q:$("#Q").j(),O:$("#O").j(),N:$("#N").j()};T(c,"26",F,1y)};n 28(){k a={G:$("#D").j(),s:$("#s").j()};T(a,"29",F,2a)};n 2b(){k a=17 1A();k b=17 2e(l.1B-2);k c=$("#u m:B").j();w(c==""||c==p)c="C";k d=$("#x m:B").j();w(d==""||d==p)d="C";a.v("G",$("#D").j());a.v("r",$("#r m:B").j());a.v("u",c);a.v("x",d);2h(k i=2;i<l.1B;i++){k e=17 1A();e.v("s",l.o(i,0));e.v("P",l.o(i,1));e.v("O",l.o(i,10));e.v("K",l.o(i,4));e.v("J",l.o(i,5));e.v("L",l.o(i,6));e.v("Q",l.o(i,11));e.v("N",l.o(i,9));b[i-2]=e};a.2q("2r",b);k f=a.2s();T(f,"2t",F,1y)};n 1t(){k a=l.2u();k b=l.2v();w(a<=0)19;$("#r").j(l.o(a,12));$("#s").j(l.o(a,0));$("#P").j(l.o(a,1));$("#K").j(1H(l.o(a,4),"."));$("#J").j(1H(l.o(a,5),"."));$("#L").j(l.o(a,6));$("#1g").j(l.o(a,7));$("#Q").j(l.o(a,11));$("#N").j(l.o(a,9));$("#1C").j(l.o(a,2));$("#O").j(l.o(a,10));w(b==3){k c="1b.M?1J="+a+"&W=2z";R.V(c,"",U)}w(b==8){k c="1b.M?1J="+a+"&W=2C";R.V(c,"",U)}k d=l.o(a,12);k e=l.o(a,13);k f=l.o(a,14);18(d,e,f)};$(n(){$("#K").1M(1n);$("#J").1M(1n)});n 2F(){R.V("2G.M","",U)};n 2d(a){k b="1b.M?W="+a;R.V(b,"",U)};',62,168,'|||||||||||||||||||val|var|objSBGrid|option|function|getTextMatrix|null|fn_SetSBGridCol|sTASK_ID|sTEST_SCN_ID|center|sSEG_ID|put|if|sSEG_SUB_ID|false|value|empty|selected|00|searchPrjtID|output|fn_SelectPrjtInfo|sPRJT_ID|true|ID|sTEST_END_DT|sTEST_STRT_DT|sCNFM_TYPE|jsp|sCNFM_DESC|sREG_USER_ID|sTEST_SCN_NM|sCNFM_USER_ID|window|prjtTestScnrInfo|fn_AjaxSend|popupStyle|open|TS010101|append|input|else|||||||each|new|fn_SelectInitSegment|return|sPRJT_STAGE|PU010112|sTEST_STAGE|fn_AjaxSendParam|dd|SEG_SUB_ID|sCNFM_USER_NM|fn_SetDataSelectInitTask|objColumnsInfo|yesNo_YN|label|fn_InitGrid|objGridInitInfo|setCalendar|TASKID|left|fn_SetDataSelectInitSegment|fn_SelectInitSegmentSub|fn_SetDataSelectInitSegmentSub|fn_SelectListInfo|fn_SetDataSelectPrjtInfo|alert|fn_SelectInitTask|replaceAll|PMS_PROC_INSERT|resultData|Map|rows|sREG_USER_NM|imageS|fn_Init_Data|section|inputdate|fn_SetDateType|SEG_ID|nSelRow|yyyy|mm|datepicker|08|prjSegInfo|sSEG_NM|09|TS010183|fn_InitSBGrid|prjSegSubInfo|sSEG_SUB_NM|type|TS010111|fn_InitLoad|rebuild|fn_InsertPrjt||not|SELECT_TASK_ID|id|INSERT_TEST_SCN_ID|textarea|TS010121|04|fn_DeletePrjt|TS010141|PMS_PROC_DELETE|fn_ModifyPrjt|01|fn_SearchUser|Array|02|createSBDataGrid|for|05|TS010181|350px|createColumns|addEventListener|onclick|prjTaskInfo|sTASK_NM|putMapList|sTEST_SCNR_INFO|jsonParse|TS010122|getRow|getCol|06|combo|fn_Init_Clear|sREG_USER_ID_GRID|07|location|sCNFM_USER_ID_GRID|03|TS010182|fn_SearchPrjtInfo|PU010101|text'.split('|'),0,{}))

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
	    		        <h2>[TS01] 통합테스트 시나리오</h2>
	    		        <!-- END : title -->
						<!-- START : search section -->
	    		        <div id= "searchSection" class="section">
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
						<!-- START : input table section -->
	    		        <div id="section" class="section">
	    		        	<h3>기본정보</h3>
	    		            <table class="table01" border="0" cellspacing="0" summary="">
	    		                <tbody>
	    		                    <tr>
	    		                        <th class="w150"><pk>*</pk> TASK ID</th>
	    		                        <td colspan="3">
	    		                        	 <select class="selectbox wp100" id="sTASK_ID" name="sTASK_ID" onChange="javascript:fn_SelectInitSegment('00', '', '');">
											</select>
	    		                        </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w150">SEGM ID</th>
	    		                        <td colspan="3">
	    		                        	 <select class="selectbox wp100" id="sSEG_ID" name="sSEG_ID" onChange="javascript:fn_SelectInitSegmentSub('00', '', '');">
											</select>
	    		                        </td>
	    		                    </tr>
	    		                    <tr id="selsSEG_SUB_ID">
	    		                        <th class="w150">SEGM SUB ID</th>
	    		                        <td colspan="3">
	    		                        	 <select class="selectbox wp100" id="sSEG_SUB_ID" name="sSEG_SUB_ID">
											</select>
	    		                        </td>
	    		                    </tr>

	    		                    <tr>
	    		                        <th class="w150"><pk>*</pk> 테스트시나리오 ID</th>
	    		                        <td>
	    		                        	<input type="text" class="txtinp w100" name="sTEST_SCN_ID" id="sTEST_SCN_ID" />
	    		                        </td>
	    		                        <th class="w150">등록자</th>
	    		                        <td>
	    		                        	<input type="text" class="txtinp w100" name="sREG_USER_NM" id="sREG_USER_NM" readOnly/>
	    		                        	<input type="hidden" class="txtinp w100" name="sREG_USER_ID" id="sREG_USER_ID"/>
											<a href="javascript:fn_SearchUser('sREG_USER_ID');" class="btn01">검 색</a>
	    		                        </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w150">테스트시나리오 명</th>
	    		                        <td colspan="3">
	    		                        	<input type="text" class="txtinp wp99" name="sTEST_SCN_NM" id="sTEST_SCN_NM"/>
	    		                        </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w150">시작일자</th>
	    		                        <td>
	                                        <input type="text" class="txtinp w100" name="sTEST_STRT_DT" id="sTEST_STRT_DT"/>
	                                    </td>
	                                    <th class="w150">종료일자</th>
	    		                        <td>
	    		                        	<input type="text" class="txtinp w100" name="sTEST_END_DT" id="sTEST_END_DT"/>
	                                    </td>
	    		                    </tr>
	    		                    <tr>
	    		                    	<th class="w150">확인자</th>
	    		                        <td>
	    		                        	<input type="text" class="txtinp w100" name="sCNFM_USER_NM" id="sCNFM_USER_NM" readOnly/>
	    		                        	<input type="hidden" class="txtinp w100" name="sCNFM_USER_ID" id="sCNFM_USER_ID"/>
											<a href="javascript:fn_SearchUser('sCNFM_USER_ID');" class="btn01">검 색</a>
	    		                        </td>
	    		                        <th class="w150">확인구분</th>
	    		                        <td>
	    		                        	<select class="selectbox w100" id="sCNFM_TYPE" name="sCNFM_TYPE">
											</select>
	    		                        </td>
	    		                    </tr>
	    		                    <tr>
	    		                        <th class="w150">확인의견</th>
	    		                        <td colspan="3">
	    		                        	<textarea class="txtinp wp99" cols="100" rows="5" name="sCNFM_DESC" id="sCNFM_DESC" ></textarea>
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
		    		        <div id="prjtTestScnrInfo">
							</div>
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