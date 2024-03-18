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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('7 1n(){C()};7 C(){c a="D f^테스트시나리오f^테스트시나리오 명^테스트기간^테스트기간^등록자^등록자f^r^x^A|D f^테스트시나리오f^테스트시나리오 명^시작일자^종료일자^등록자^등록자f^r^x^A";c b="12%,15%,1B%,15%,15%,10%,10%,10%,10%,10%";s=t("v","e",a,b,"1z","B",d,4);e=P(s);R=[3("X","2","1y","5",4,6),3("u","2","m","5",4,6),3("w","2","1x","y",4,6),3("z","2","1w","5","g.h.i",6),3("E","2","19","5","g.h.i",6),3("G","2","1u","5",4,6),3("I","2","1t","5",4,d),3("K","2","1r","5",4,d),3("M","2","1q","5",4,d),3("1p","2","1o","5",4,d)];e.Q(R);e.n("S","W","","");a="테스트케이스f^테스트케이스명^테스트일자^테스트담당자^테스트결과^담당자^수정예정일자^수정완료일자^";b="12%,1m%,12%,10%,10%,10%,12%,12%,10%";V=t("1l","9",a,b,"1k","11",d,4);9=P(V);13=[3("X","2","1i","5",4,6),3("u","2","1g","y",4,6),3("w","2","1f","5","g.h.i",6),3("z","2","1e","5",4,6),3("E","2","1a","5",4,6),3("G","2","1v","5",4,6),3("I","2","1b","5","g.h.i",6),3("K","2","1c","5","g.h.i",6),3("M","2","m","5",4,d)];9.Q(13);9.n("1d","l","","");9.n("S","17","","");16()};7 1h(){14.1j="Z.k"};7 16(){c a={U:$("#T").j(),O:$("#N").j()};L(a,"1s",J,4)};7 J(a){B=a.v;e.H()};7 W(){c a=e.F();o(a<=0)q;c b={U:$("#T").j(),O:$("#N").j(),m:e.p(a,1)};L(b,"1A",18,4)};7 18(a){11=a.1C;9.H()};7 l(){c a=9.F();o(a<=0)q;c b="";b+="1D=Y";b+="&";b+="1E="+9.p(a,8);b+="&";b+="1F="+9.p(a,0);b+="&";b+="1G=Z";1H(b,"1I.k","1J.k",4)};7 17(){c a=9.1K();o(a!=0)q;l()};7 1L(){14.1M("1N.k","",1O)};',62,113,'||output|fn_SetSBGridCol|null|center|false|function||objSBGridDetail|||var|true|objSBGrid|ID|yyyy|mm|dd|val|jsp|fn_SelectListInfoDetail|sTEST_SCN_ID|addEventListener|if|getTextMatrix|return|TASKID|objGridInitInfo|fn_InitSBGrid|01|prjtTestScnrInfo|02|SEG_ID|left|03|SEG_SUB_ID|resultData|fn_InitGrid|TASK|04|getRow|05|rebuild|06|fn_SetDataSelectPrjtInfo|07|fn_AjaxSend|08|sTEST_STAGE|sPRJT_STAGE|createSBDataGrid|createColumns|objColumnsInfo|onclick|searchPrjtID|sPRJT_ID|objGridInitInfoDetail|fn_SelectListInfo|00||TS010301||resultDataDetail||objColumnsInfoDetail|window||fn_SelectPrjtInfo|fn_SelectListInfoDetailMobile|fn_SetDataSelectListInfo|sTEST_END_DT|sTEST_CONFRM|sCORRT_SCHD_DT|sCORRT_DT|ondblclick|sTEST_USER_NM|sTEST_DT|sTEST_CASE_NM|fn_Init_Clear|sTEST_CASE_ID|location|400px|prjtTestScnrDetailInfo|22|fn_InitLoad|sSEG_SUB_ID|09|sSEG_ID|sTASK_ID|TS010311|sREG_USER_ID|sREG_USER_NM|sDEV_USER_NM|sTEST_STRT_DT|sTEST_SCN_NM|sACTIVITY_ID|200px|TS010312|33|prjtTestDetailInfo|sSEARCH_YN|sSEARCH_TEST_SCN_ID|sSEARCH_TEST_CASE_ID|sHISTORY_BACK|fn_AjaxSendSesUrl|pms_session_ts0103|TS010302|getCol|fn_SearchPrjtInfo|open|PU010101|popupStyle'.split('|'),0,{}))

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
	    		        <h2>[TS01] 통합테스트 결과 등록</h2>
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
		    		    	<h3>테스트시나리오</h3>
		    		        <div id="prjtTestScnrInfo">
							</div>
		    		    </div>
		    		    <br/>

	    		        <!-- START : grid section -->
		    		    <div class="section">
		    		    	<h3>테스트케이스</h3>
		    		        <div id="prjtTestScnrDetailInfo">
							</div>
		    		    </div>
		    		    <!-- END : grid section -->
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