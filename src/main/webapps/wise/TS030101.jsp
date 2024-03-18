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
	$("#sDEV_STAGE").val('<%=(String) session.getAttribute("sDEV_STAGE")%>');
	
	fn_InitLoad();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('3 16(){$(\'W:1S[1M=V]:W[k=0]\').1F("L",o);N()};3 N(){6 a="s g^프로그램 g^프로그램 명^단위테스트^단위테스트^단위테스트^단위테스트^담당자^s g^y g^J y g|s g^프로그램 g^프로그램 명^계획시작일자^계획종료일자^시작일자^종료일자^담당자^s g^y g^J y g";6 b="10%,12%,20%,12%,12%,12%,12%,10%,10%,10%,10%";P=1y("1w","7",a,b,"1t","Z",o,5);7=1s(P);K=[f("1r","e","1q","h",5,j),f("1p","e","1n","h",5,j),f("1m","e","1l","1k",5,j),f("1j","e","1i","h","x.v.w",j),f("1h","e","1g","h","x.v.w",j),f("1f","e","1e","h","x.v.w",j),f("1d","e","1a","h","x.v.w",j),f("18","e","17","h",5,j),f("14","e","q","h",5,o),f("1A","e","D","h",5,o),f("10","e","H","h",5,o)];7.11(K);7.X("13","E","","");7.X("15","M","","");U();T()};3 19(){S.1b="1c.B"};3 U(){$("#p").i();$("#n").i();$("#m").i();6 a={r:$("#t").4(),C:$("#A").4()};z(a,"1o",R,5)};3 R(c){6 d=\'<2 k="">선 택</2>\';$.G(c.1u,3(a,b){d=d+\'<2 k="\'+b.q+\'">\'+b.1v+\'</2>\';$("#p").i().F(d)})};3 1x(){$("#n").i();$("#m").i();6 a={r:$("#t").4(),C:$("#A").4(),q:$("#p 2:l").4()};z(a,"1z",O,5)};3 O(c){6 d=\'<2 k="">선 택</2>\';$.G(c.1B,3(a,b){d=d+\'<2 k="\'+b.D+\'">\'+b.1C+\'</2>\';$("#n").i().F(d)})};3 1D(){$("#m").i();6 a={r:$("#t").4(),C:$("#A").4(),q:$("#p 2:l").4(),D:$("#n 2:l").4()};z(a,"1E",I,5)};3 I(c){6 d=\'<2 k="">선 택</2>\';$.G(c.1G,3(a,b){d=d+\'<2 k="\'+b.H+\'">\'+b.1H+\'</2>\';$("#m").i().F(d)})};3 T(){6 a={r:$("#t").4(),C:$("#A").4(),1I:$("#V:L").4(),q:$("#p 2:l").4(),D:$("#n 2:l").4(),H:$("#m 2:l").4(),1J:$("#1K").4()};z(a,"1L",Q,5)};3 Q(a){Z=a.1N;7.1O()};3 E(){6 a=7.1P();6 b="";b+="1Q=Y";b+="&1R="+7.u(a,8);b+="&1T="+7.u(a,9);b+="&1U="+7.u(a,10);b+="&1V="+7.u(a,1);1W(b,"1X.B","1Y.B",5)};3 M(){6 a=7.1Z();21(a!=0)22;E()};3 23(){S.24("25.B","",26)};',62,131,'||option|function|val|null|var|objSBGrid|||||||output|fn_SetSBGridCol|ID|center|empty|false|value|selected|searchSegSubInfo|searchSegInfo|true|searchTaksInfo|sTASK_ID|sPRJT_ID|TASK|searchPrjtID|getTextMatrix|mm|dd|yyyy|SEG|fn_AjaxSend|sDEV_STAGE|jsp|sPRJT_STAGE|sSEG_ID|fn_SelectListInfo|append|each|sSEG_SUB_ID|fn_SetDataSelectInitSegmentSub|SUB|objColumnsInfo|checked|fn_SelectListInfoMobile|fn_InitGrid|fn_SetDataSelectInitSegment|objGridInitInfo|fn_SetDataSelectPrjtInfo|fn_SetDataSelectInitTask|window|fn_SelectPrjtInfo|fn_SelectInitTask|searchDevCmpl|input|addEventListener||resultData||createColumns||ondblclick|08|onclick|fn_InitLoad|sDEV_USER_NM|07|fn_Init_Clear|sTEST_DEV_END_DT|location|TS030101|06|sTEST_DEV_STRT_DT|05|sTEST_PLAN_END_DT|04|sTEST_PLAN_STRT_DT|03|left|sPRG_NM|02|sPRG_ID|TS030181|01|sACTIVITY_ID|00|createSBDataGrid|450px|prjTaskInfo|sTASK_NM|prjtDevInfo|fn_SelectInitSegment|fn_InitSBGrid|TS030182|09|prjSegInfo|sSEG_NM|fn_SelectInitSegmentSub|DV030183|prop|prjSegSubInfo|sSEG_SUB_NM|sDEV_CMPL_TYPE|sDEV_USER_ID|searchUserID|TS030111|name|prjtDevTestInfo|rebuild|getRow|sSEARCH_YN|sSEARCH_TASK_ID|radio|sSEARCH_SEG_ID|sSEARCH_SEG_SUB_ID|sSEARCH_PRG_ID|fn_AjaxSendSesUrl|pms_session_ts0301|TS030102|getCol||if|return|fn_SearchPrjtInfo|open|PU010101|popupStyle'.split('|'),0,{}))

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
    		        <h2>[0704] 단위테스트 목록조회</h2>
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
    		                    <ul>
    		                        <li class="name"><span>완료구분</span></li>
    		                        <li><input type="radio" class="radiobox" id="searchDevCmpl" name="searchDevCmpl" value="0" checked/> 전체</li>
    		                        <li><input type="radio" class="radiobox" id="searchDevCmpl" name="searchDevCmpl" value="1" checked/> 개발 완료</li>
    		                        <li><input type="radio" class="radiobox" id="searchDevCmpl" name="searchDevCmpl" value="2" checked/> 테스트 완료</li>
    		                    </ul>
    		                    <ul>
    		                        <li class="name"><span>TASK</span></li>
    		                        <li><select class="selectbox w300" id="searchTaksInfo" name="searchTaksInfo" onChange="javascript:fn_SelectInitSegment();"></select></li>
    		                    </ul>
    		                    <ul>
    		                        <li class="name"><span>SEG</span></li>
    		                        <li><select class="selectbox w300" id="searchSegInfo" name="searchSegInfo" onChange="javascript:fn_SelectInitSegmentSub();"></select></li>
    		                    </ul>
    		                    <ul>
    		                        <li class="name"><span>SEG SUB</span></li>
    		                        <li><select class="selectbox w300" id="searchSegSubInfo" name="searchSegSubInfo"></select></li>
    		                    </ul>
    		                </div>
    		            </div><!--//search-->
    		        </div><!--//section-->
    		        <div class="section">
                        <ul class="btnbox right">
    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
                        	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
                     	</ul>
                    </div>

	    			<!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtDevInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
				</div><!--//pixbox-->
				<div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sDEV_STAGE" name="sDEV_STAGE"/>
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