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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('8 12(){V($("#P").l()=="H"){7 a=v.u("1H");a.s("r","q:w");7 b=v.u("1f");b.s("r","q:w");7 b=v.u("1i");b.s("r","q:w")}S()};8 S(){7 a="순번^회사명^입사년월^퇴사년월^최종직위^담당업무";7 b="10%,U%,15%,15%,10%,U%";F=1p("1C","6",a,b,"13","K",17,9);6=1d(F);R=[f("1l","h","T","m",9,j),f("14","h","Z","y",9,j),f("19","h","z","m","A.B",j),f("1h","h","C","m","A.B",j),f("1k","h","D","m",9,j),f("1m","h","E","y",9,j)];6.1u(R);t()};8 1G(){G.11="1O.k"};8 t(){7 a={J:$("#o").l()};M(a,"18",O,9)};8 O(a){K=a.1a;6.1b()};8 1c(){7 a=n Q();7 b=n 1e();a.e("J",$("#o").l());1g(7 i=1;i<6.1j;i++){7 c=n Q();c.e("T",6.g(i,0));c.e("Z",6.g(i,1));c.e("z",6.g(i,2));c.e("C",6.g(i,3));c.e("D",6.g(i,4));c.e("E",6.g(i,5));b[i-1]=c}a.1n("1o",b);7 d=a.1q();M(d,"1r",t,1s)};8 1t(){V(6.x(0)==\'-1\'){6.1v()}1w{6.1x(6.x(0),"1y")}};8 1z(){7 a=6.x(0);6.1A(a)};8 1B(a){7 b="";b+="W=Y";b+="&";b+="1D="+$("#o").l();b+="&";b+="1E="+$("#1F").l();b+="&";b+="P=L";X(b,"I.k",a+"?p="+1I,9)};8 1J(){G.1K("1L.k","",1M)};8 1N(){7 a="";a+="W=N";X(a,"I.k","16.k",9)};',62,113,'||||||objSBGrid|var|function|null|||||put|fn_SetSBGridCol|getTextMatrix|input||false|jsp|val|center|new|searchUserID||display|style|setAttribute|fn_SelectPrjtInfo|getElementById|document|none|selectedRow|left|sCORP_JOIN_DT|yyyy|mm|sCORP_RTRE_DT|sLAST_PSTN|sASSGN_BIZ|objGridInitInfo|window||pms_session_ad0201|sUSER_ID|resultData||fn_AjaxSend||fn_SetDataSelectPrjtInfo|sSEARCH_PARAM|Map|objColumnsInfo|fn_InitGrid|sSEQ_NO|25|if|sSEARCH_YN|fn_AjaxSendSesUrl||sCORP_NM||location|fn_InitLoad|350px|01||AD020101|true|AD020111D|02|carrInfo|rebuild|fn_ModifyPrjt|createSBDataGrid|Array|searchBSection|for|03|btnMoveList|rows|04|00|05|putMapList|sCARR_INFO|fn_InitSBGrid|jsonParse|AD020122D|PMS_PROC_INSERT|fn_AddRow|createColumns|addItem|else|insertItem|below|fn_DelRow|deleteItem|fn_MovePage|prjtUserInfo|sSEARCH_USER_ID|sSEARCH_USER_NM|searchUserNM|fn_Init_Clear|searchSection|paramP|fn_SearchUser|open|PU010111|popupStyle|fn_MoveToList|AD020151'.split('|'),0,{}))

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
							<li><a href="javascript:fn_MovePage('AD020141.jsp')">교육이수</a></li>
							<li class="on"><a href="javascript:fn_MovePage('AD020151.jsp')">경력</a></li>
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