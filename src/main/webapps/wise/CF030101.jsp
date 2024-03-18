<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- start : Html Header -->
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

	fn_InitLoad();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('6 T(){$("#k").h();3 a={w:$("#o").e()};m(a,"1m",F,1)};6 F(c){3 d=\'<8 j="">선 택</8>\';$.E(c.1c,6(a,b){d=d+\'<8 j="\'+b.1u+\'">\'+b.1z+\'</8>\';$("#k").h().L(d)});y()};6 y(){3 a="이슈1d^등록일자^이슈 1f^등록자^담당자^구분^이슈중요도^진행상태^조치예정일자^완료일자^첨부파일^1h^1l^B";3 b="15%,13%,1w%,10%,10%,10%,10%,10%,13%,13%,10%,10%,10%,10%";J=1B("K","2",a,b,"1e","N",l,1);2=1j(J);z=[4("1o","5","1q","7",1,9),4("1x","5","1y","7","x.n.u",9),4("1C","5","1D","1L",1,9),4("1M","5","1O","7",1,9),4("S","5","1T","7",1,9),4("U","5","V","7",1,9),4("W","5","X","7",1,9),4("Z","5","14","7",1,9),4("16","5","17","7","x.n.u",9),4("18","5","19","7","x.n.u",9),4("10","1a","1b","7",1,9),4("11","5","p","7",1,l),4("12","5","q","7",1,l),4("13","5","B","7",1,l)];2.1g(z);2.A("1i","r","","");2.A("1k","C","","");D()};6 1n(){$("#s").h();3 a={w:$("#o").e(),p:$("#k 8:t").e()};m(a,"1p",G,1)};6 G(c){3 d=\'<8 j="">선 택</8>\';$.E(c.1r,6(a,b){d=d+\'<8 j="\'+b.q+\'">\'+b.1s+\'</8>\';$("#s").h().L(d)})};6 D(){3 a={w:$("#o").e(),p:$("#k 8:t").e(),q:$("#s 8:t").e()};m(a,"1t",H,1)};6 H(a){N=a.K;2.1v()};6 r(){3 a=2.I();f(a<=0)v;3 b=2.M();f(b==\'10\'){3 c=2.g(a,13);f(c=="")v;O("P",c)}1E{3 d="";d+="1F=Y";d+="&";d+="1G="+2.g(a,11);d+="&";d+="1H="+2.g(a,12);d+="&";d+="1I="+2.g(a,0);1J(d,"1K.i","Q.i",1)}};6 C(){3 a=2.I();3 b=2.M();f(b==\'10\'){3 c=2.g(a,13);f(c=="")v;O("P",c)}f(b==\'0\'){r()}};6 1N(){R.1P="Q.i"};6 1Q(){R.1R("1S.i","",1A)};',62,118,'|null|objSBGrid|var|fn_SetSBGridCol|output|function|center|option|false|||||val|if|getTextMatrix|empty|jsp|value|searchPrjtStage|true|fn_AjaxSend|mm|searchPrjtID|sPRJT_STAGE|sTASK_ID|fn_SelectListInfo|searchTaksInfo|selected|dd|return|sPRJT_ID|yyyy|fn_InitGrid|objColumnsInfo|addEventListener|sFILE_NM|fn_GridFileDown|fn_SelectPrjtInfo|each|fn_SetDataInitLoad|fn_SetDataSelectInitTask|fn_SetDataSelectPrjtInfo|getRow|objGridInitInfo|prjtIssueInfo|append|getCol|resultData|fn_DownloadFile|CF03|CF030102|window|04|fn_InitLoad|05|sISSUE_TYPE_NM|06|sISSUE_IMPT_NM||07|||||sPROC_STAGE_NM||08|sAPPR_DT|09|sCOMPL_DT|imageF|sIMG_URL|prjtStage|ID|400px|TITLE|createColumns|PRJT_STAGE|ondblclick|createSBDataGrid|onclick|TASK_ID|CF030101|fn_SelectInitTask|00|CF030181|sISSUE_ID|prjTaskInfo|sTASK_NM|CF030111|sCODE|rebuild|25|01|sREG_DT|sCODE_NM|popupStyle|fn_InitSBGrid|02|sTITLE|else|sSEARCH_YN|sSEARCH_PRJT_STAGE|sSEARCH_TASK_ID|sSEARCH_ISSUE_ID|fn_AjaxSendSesUrl|pms_session_cf0301|left|03|fn_InsertPrjt|sREG_USER_NM|location|fn_SearchPrjtInfo|open|PU010101|sCHRG_USER_NM'.split('|'),0,{}))

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
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[CF03] 이슈/리스크</h2>
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
    		                        <li class="name"><span>진행단계</span></li>
    		                        <li><select class="selectbox" id="searchPrjtStage" name="searchPrjtStage" onChange="javascript:fn_SelectInitTask();"></select></li>
    		                    </ul>
    		                    <ul>
    		                        <li class="name"><span>Task 구분</span></li>
    		                        <li><select class="selectbox w300" id="searchTaksInfo" name="searchTaksInfo"></select></li>
    		                    </ul>
    		                </div>
    		            </div><!--//search-->
    		        </div><!--//section-->
    		        <div class="section">
                        <ul class="btnbox right">
                        	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
                     	</ul>
                    </div>
    		        <!-- END : search section -->
					<!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtIssueInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
	    		    
	    		    <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_InsertPrjt();" class="btnimg03">등록</a></li>
    		            </ul>
    		        </div><!--//section-->
    		    
    		    </div><!--//pixbox-->
    		    <div id="hiddenColumn">
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