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

	fn_InitGrid();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('c 1z(){d a="k 7^테스트 시나리오 7^테스트 시나리오 명^테스트기간^테스트기간^k 7^j 7^j 11 7|k 7^테스트 시나리오 7^테스트 시나리오 명^시작일자^종료일자^k 7^j 7^j 11 7";d b="15%,15%,1d%,15%,15%,10%,10%,10%";X=s("U","f",a,b,"19","M",e,2);f=r(X);J=[4("v","3","1w","5",2,6),4("n","3","o","5",2,6),4("p","3","1b","H",2,6),4("q","3","1s","5","i.g.h",6),4("u","3","1e","5","i.g.h",6),4("B","3","1q","5",2,e),4("w","3","1u","5",2,e),4("E","3","1O","5",2,e)];f.y(J);f.z("O","C","","");a="테스트케이스 건수^테스트진행^테스트진행^테스트결함^테스트결함^테스트완료^테스트완료|테스트케이스 건수^건수^진행율^건수^결함율^건수^완료율";b="16%,14%,14%,14%,14%,14%,14%,14%";D=s("1r","l",a,b,"1t","F",e,2);l=r(D);G=[4("v","3","1x","5",2,6),4("n","3","1y","5",2,6),4("p","3","1V","5",2,6),4("q","3","1A","5",2,6),4("u","3","1B","5",2,6),4("B","3","1C","5",2,6),4("w","3","1E","5",2,6)];l.y(G);a="테스트케이스7^테스트케이스명^테스트일자^테스트담당자^결과^담당자^수정예정일자^수정완료일자^";b="12%,18%,12%,10%,10%,10%,12%,12%,10%";I=s("1a","9",a,b,"1c","K",e,2);9=r(I);L=[4("v","3","1f","5",2,6),4("n","3","1g","H",2,6),4("p","3","1h","5","i.g.h",6),4("q","3","1i","5",2,6),4("u","3","1j","5",2,6),4("B","3","1k","5",2,6),4("w","3","1l","5","i.g.h",6),4("E","3","1m","5","i.g.h",6),4("1n","3","o","5",2,e)];9.y(L);9.z("1o","A","","");9.z("O","N","","");17()};c 17(){d a={P:$("#Q").R()};S(a,"1v",T,2)};c T(a){M=a.U;f.t()};c C(){d a=f.V();W(a<=0)Z;d b={P:$("#Q").R(),o:f.x(a,1)};S(b,"1D",13,2)};c 13(a){F=a.1F;K=a.1G;l.t();9.t()};c A(){d a=9.V();d b="";b+="1H=Y";b+="&";b+="1I="+9.x(a,8);b+="&";b+="1J="+9.x(a,0);b+="&";b+="1K=1L";1M(b,"1N.m","1P.m",2)};c N(){d a=9.1Q();W(a!=0)Z;A()};c 1R(){1S.1T("1U.m","",1p)};',62,120,'||null|output|fn_SetSBGridCol|center|false|ID||objSBGridDetail|||function|var|true|objSBGrid|mm|dd|yyyy|Segment|TASK|objSBGridStat|jsp|01|sTEST_SCN_ID|02|03|createSBDataGrid|fn_InitSBGrid|rebuild|04|00|06|getTextMatrix|createColumns|addEventListener|fn_SelectPrjtDetailInfo|05|fn_SelectListInfo|objGridInitInfoStat|07|resultDataStat|objColumnsInfoStat|left|objGridInitInfoDetail|objColumnsInfo|resultDataDetail|objColumnsInfoDetail|resultData|fn_SelectPrjtDetailInfoMobile|onclick|sPRJT_ID|searchPrjtID|val|fn_AjaxSend|fn_SetDataSelectPrjtInfo|prjtTestScnrInfo|getRow|if|objGridInitInfo||return||Sub||fn_SetDataSelectListInfo||||fn_SelectPrjtInfo|22|200px|prjtTestScnrDetailInfo|sTEST_SCN_NM|300px|40|sTEST_END_DT|sTEST_CASE_ID|sTEST_CASE_NM|sTEST_DT|sTEST_USER_NM|sTEST_CONFRM|sDEV_USER_NM|sCORRT_SCHD_DT|sCORRT_DT|08|ondblclick|popupStyle|sTASK_ID|prjtTestScnrStat|sTEST_STRT_DT|78px|sSEG_ID|TS010411|sACTIVITY_ID|sTEST_CASE_CNT|sTEST_PROC_CNT|fn_InitGrid|sTEST_ERR_CNT|sTEST_ERR_RT|sTEST_CPL_CNT|TS010412|sTEST_CPL_RT|prjtTestDetailStat|prjtTestDetailInfo|sSEARCH_YN|sSEARCH_TEST_SCN_ID|sSEARCH_TEST_CASE_ID|sHISTORY_BACK|TS010401|fn_AjaxSendSesUrl|pms_session_ts0103|sSEG_SUB_ID|TS010302|getCol|fn_SearchPrjtInfo|window|open|PU010101|sTEST_PROC_RT'.split('|'),0,{}))

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
    		        <h2>[TS02] 통합테스트결과</h2>
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
	    		    <!-- END : grid section -->
    		        <!-- START : grid section -->
	    		    <div class="section">
	    		        <h4>테스트시나리오결과 및 조치 등록</h4>
	    		        <div id="prjtTestScnrStat">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
    		        <!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtTestScnrDetailInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
				</div><!--//pixbox-->
    		    <div id="hiddenColumn">
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