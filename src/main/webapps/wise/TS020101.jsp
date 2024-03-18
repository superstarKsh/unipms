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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('8 D(){7 a="테스트i^테스트일자^테스트담당자^테스트 항목^테스트결과^심각도^n i^n 명^담당자^수정예정일자^수정완료일자";7 b="10%,12%,12%,m%,10%,10%,10%,m%,12%,12%,12%";j=O("t","5",a,b,"13","r",v,4);5=Q(j);k=[3("15","1","M","6",4,2),3("R","1","X","6","g.f.c",2),3("1d","1","u","9",4,2),3("w","1","x","9",4,2),3("y","1","z","6",4,2),3("A","1","B","6",4,2),3("C","1","1k","6",4,2),3("E","1","F","9",4,2),3("G","1","H","9",4,2),3("I","1","J","6","g.f.c",2),3("10","1","K","6","g.f.c",2)];5.L(k);5.l("N","e","","");5.l("P","h","","");o()};8 o(){7 a={S:$("#T").U()};V(a,"W",p,4)};8 p(a){r=a.t;5.Z()};8 e(){7 a=5.11();q(a<=0)s;7 b="";b+="16=Y";b+="&";b+="17="+5.18(a,0);b+="&";b+="19=1a";1b(b,"1c.d","1e.d",4)};8 h(){7 a=5.1f();q(a!=0)s;e()};8 1g(){1h.1i("1j.d","",14)};',62,83,'|output|false|fn_SetSBGridCol|null|objSBGrid|center|var|function|left|||dd|jsp|fn_SelectListInfo|mm|yyyy|fn_SelectListInfoMobile|ID|objGridInitInfo|objColumnsInfo|addEventListener|20|TASK|fn_SelectPrjtInfo|fn_SetDataSelectPrjtInfo|if|resultData|return|prjtTestInfo|sTEST_USER_NM|true|03|sTEST_TITLE|04|sTEST_CONFRM|05|sTEST_SVRT_NM|06|fn_InitGrid|07|sTASK_NM|08|sDEV_USER_NM|09|sCORRT_SCHD_DT|sCORRT_DT|createColumns|sTEST_ID|ondblclick|fn_InitSBGrid|onclick|createSBDataGrid|01|sPRJT_ID|searchPrjtID|val|fn_AjaxSend|TS020111|sTEST_DT||rebuild||getRow||450px|popupStyle|00|sSEARCH_YN|sSEARCH_TEST_ID|getTextMatrix|sHISTORY_BACK|TS020101|fn_AjaxSendSesUrl|pms_session_ts0201|02|TS020102|getCol|fn_SearchPrjtInfo|window|open|PU010101|sTASK_ID'.split('|'),0,{}))

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
    		        <h2>[TS02] 건별테스트결과조회</h2>
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
	    		        <div id="prjtTestInfo">
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