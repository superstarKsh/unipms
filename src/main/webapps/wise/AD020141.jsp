<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
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

	$("#searchUserID").val('<%=(String) session.getAttribute("sSEARCH_USER_ID")%>');
	$("#searchUserNM").val('<%=(String) session.getAttribute("sSEARCH_USER_NM")%>');
	$("#sSEARCH_YN").val('<%=(String) session.getAttribute("sSEARCH_YN")%>');
	$("#sSEARCH_PARAM").val('<%=(String) session.getAttribute("sSEARCH_PARAM")%>');
	
	fn_InitLoad();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('7 11(){U($("#I").k()=="H"){6 a=u.t("18");a.r("l","m:q");6 b=u.t("1A");b.r("l","m:q");6 b=u.t("13");b.r("l","m:q")}P()};7 P(){6 a="순번^교육과정명^시작일자^종료일자^교육기관";6 b="10%,Q%,15%,15%,Q%";S=1F("12","5",a,b,"16","F",1d,8);5=1g(S);M=[j("1n","g","R","s",8,e),j("14","g","T","X",8,e),j("1c","g","x","s","y.z.A",e),j("1j","g","B","s","y.z.A",e),j("1k","g","C","X",8,e)];5.1s(M);v()};7 1E(){E.Z="1M.h"};7 v(){6 a={G:$("#n").k()};J(a,"17",K,8)};7 K(a){F=a.19;5.1a()};7 1b(){6 a=o O();6 b=o 1e();a.9("G",$("#n").k());1f(6 i=1;i<5.1i;i++){6 c=o O();c.9("R",5.f(i,0));c.9("T",5.f(i,1));c.9("x",5.f(i,2));c.9("B",5.f(i,3));c.9("C",5.f(i,4));b[i-1]=c}a.1l("1m",b);6 d=a.1o();J(d,"1p",v,1q)};7 1r(){U(5.w(0)==\'-1\'){5.1t()}1u{5.1v(5.w(0),"1w")}};7 1x(){6 a=5.w(0);5.1y(a)};7 1z(a){6 b="";b+="V=Y";b+="&";b+="1B="+$("#n").k();b+="&";b+="1C="+$("#1D").k();b+="&";b+="I=L";W(b,"D.h",a+"?p="+1G,8)};7 1H(){E.1I("1J.h","",1K)};7 1L(){6 a="";a+="V=N";W(a,"D.h","1h.h",8)};',62,111,'|||||objSBGrid|var|function|null|put|||||false|getTextMatrix|input|jsp||fn_SetSBGridCol|val|style|display|searchUserID|new||none|setAttribute|center|getElementById|document|fn_SelectPrjtInfo|selectedRow|sEDUT_STRT_DT|yyyy|mm|dd|sEDUT_END_DT|sEDUT_ORG_NM|pms_session_ad0201|window|resultData|sUSER_ID||sSEARCH_PARAM|fn_AjaxSend|fn_SetDataSelectPrjtInfo||objColumnsInfo||Map|fn_InitGrid|30|sSEQ_NO|objGridInitInfo|sEDUT_NM|if|sSEARCH_YN|fn_AjaxSendSesUrl|left||location||fn_InitLoad|prjtUserInfo|btnMoveList|01||350px|AD020111C|searchSection|edutInfo|rebuild|fn_ModifyPrjt|02|true|Array|for|createSBDataGrid|AD020101|rows|03|04|putMapList|sEDUT_INFO|00|jsonParse|AD020122C|PMS_PROC_INSERT|fn_AddRow|createColumns|addItem|else|insertItem|below|fn_DelRow|deleteItem|fn_MovePage|searchBSection|sSEARCH_USER_ID|sSEARCH_USER_NM|searchUserNM|fn_Init_Clear|fn_InitSBGrid|paramP|fn_SearchUser|open|PU010111|popupStyle|fn_MoveToList|AD020141'.split('|'),0,{}))

</script>
</head>

<body onload="fn_Init();" oncontextmenu="return false">

<div id="wrap">

	<!-- START : include -->
	<div>
		<jsp:include page="../common/layout_header_admin.jsp" flush="true" />
	</div>
	<!-- END : include -->

	<div id="container">

		<div id="leftWrap">
			<jsp:include page="../common/layout_left_ad.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[AD02] 인력정보 등록</h2>
    		        <!-- END : title -->
    		        
    		        <!-- START : search section -->
    		        <div id="searchSection" class="section">
    		            <div class="search">
    		                <div class="box">
    		                    <ul>
    		                        <li class="name"><span>아이디/이름</span></li>
    		                        <li><input type="text" class="txtinp w100" id="searchUserID" name="searchUserID" readOnly/></li>
    		                        <li><input type="text" class="txtinp w200" id="searchUserNM"  name="searchUserNM" readOnly/></li>
    		                        <li><a href="javascript:fn_SearchUser();" class="btn01">검색</a></li>
    		                    </ul>
    		                </div>
    		            </div><!--//search-->
    		        </div><!--//section-->
    		        <div id="searchBSection" class="section">
                        <ul class="btnbox right">
                        	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
                     	</ul>
                    </div>
    		        <!-- END : search section -->

					<!-- START : input table section -->
    		        <div class="section">
						<ul class="tab">
							<li><a href="javascript:fn_MovePage('AD020111.jsp')">기본정보</a></li>
							<li><a href="javascript:fn_MovePage('AD020121.jsp')">학력</a></li>
							<li><a href="javascript:fn_MovePage('AD020131.jsp')">자격증</a></li>
							<li class="on"><a href="javascript:fn_MovePage('AD020141.jsp')">교육이수</a></li>
							<li><a href="javascript:fn_MovePage('AD020151.jsp')">경력</a></li>
							<li><a href="javascript:fn_MovePage('AD020161.jsp')">프로젝트경력</a></li>
						</ul><!--//tab-->
					</div>

					<div class="section">
    		            <ul class="btnbox_top right">
    		                <li><a href="javascript:fn_AddRow();" class="btn02">행추가</a></li>
    		                <li><a href="javascript:fn_DelRow();" class="btn03">행삭제</a></li>
    		            </ul>
    		        </div><!--//section-->

	    		    <!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtUserInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
	    		    
	    		    <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li id="btnMoveList"><a href="javascript:fn_MoveToList();" class="btnimg03">목록</a></li>
    		                <li><a href="javascript:fn_ModifyPrjt();" class="btnimg03">저장</a></li>
    		            </ul>
    		        </div><!--//section-->
    		    
    		    </div><!--//pixbox-->
    		    <div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sSEARCH_YN" name="sSEARCH_YN"/>
					<input type="hidden" class="inputType" id="sSEARCH_PARAM" name="sSEARCH_PARAM"/>
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