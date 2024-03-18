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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('6 W(){w($("#z").9()=="H"){5 a=l.s("1x");a.q("m","t:n");5 b=l.s("1w");b.q("m","t:n");5 b=l.s("1s");b.q("m","t:n")}O()};6 O(){5 a="순번^학교명^학과^졸업년월";5 b="10%,1g%,1d%,1c%,0%";F=1a("19","4",a,b,"17","x",15,7);4=14(F);A=[h("Z","j","E","k",7,e),h("V","j","J","k",7,e),h("U","j","M","k",7,e),h("T","j","P","k","R.1j",e)];4.S(A);v()};6 v(){5 a={K:$("#u").9()};D(a,"X",C,7)};6 C(a){x=a.11;4.12()};6 13(){5 a=o y();5 b=o 16();a.8("K",$("#u").9());18(5 i=1;i<4.1b;i++){5 c=o y();c.8("E",4.f(i,0));c.8("J",4.f(i,1));c.8("M",4.f(i,2));c.8("P",4.f(i,3));b[i-1]=c}a.1e("1f",b);5 d=a.1h();D(d,"1i",v,Q)};6 1k(){w(4.r(0)==\'-1\'){4.1l()}1m{4.1n(4.r(0),"1o")}};6 1p(){5 a=4.r(0);4.1q(a)};6 1r(a){5 b="";b+="I=Y";b+="&";b+="1t="+$("#u").9();b+="&";b+="1u="+$("#1v").9();b+="&";b+="z=L";G(b,"B.g",a+"?p="+1y,7)};6 1z(){1A.1B("1C.g","",1D)};6 1E(){5 a="";a+="I=N";G(a,"B.g","1F.g",7)};',62,104,'||||objSBGrid|var|function|null|put|val|||||false|getTextMatrix|jsp|fn_SetSBGridCol||input|center|document|style|none|new||setAttribute|selectedRow|getElementById|display|searchUserID|fn_SelectPrjtInfo|if|resultData|Map|sSEARCH_PARAM|objColumnsInfo|pms_session_ad0201|fn_SetDataSelectPrjtInfo|fn_AjaxSend|sSEQ_NO|objGridInitInfo|fn_AjaxSendSesUrl||sSEARCH_YN|sSCHL_NM|sUSER_ID||sSCHL_DEPT||fn_InitGrid|sGRAD_YYYYMM|PMS_PROC_INSERT|yyyy|createColumns|03|02|01|fn_InitLoad|AD020111A||00||academicInfo|rebuild|fn_ModifyPrjt|createSBDataGrid|true|Array|350px|for|prjtUserInfo|fn_InitSBGrid|rows|20|40|putMapList|sACADEMIC_INFO|30|jsonParse|AD020122A|mm|fn_AddRow|addItem|else|insertItem|below|fn_DelRow|deleteItem|fn_MovePage|btnMoveList|sSEARCH_USER_ID|sSEARCH_USER_NM|searchUserNM|searchBSection|searchSection|paramP|fn_SearchUser|window|open|PU010111|popupStyle|fn_MoveToList|AD020101'.split('|'),0,{}))

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
							<li class="on"><a href="javascript:fn_MovePage('AD020121.jsp')">학력</a></li>
							<li><a href="javascript:fn_MovePage('AD020131.jsp')">자격증</a></li>
							<li><a href="javascript:fn_MovePage('AD020141.jsp')">교육이수</a></li>
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