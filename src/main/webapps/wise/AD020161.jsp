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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('k 1s(){O($("#17").f()=="H"){h a=P.Q("1q");a.V("U","T:R");h b=P.Q("1E");b.V("U","T:R");h b=P.Q("1I");b.V("U","T:R")}h c={t:$("#s").f()};v(c,"1L",14,j)};k 14(a){h b=a.1O;$("#r").f(b.r);X()};k X(){h a="순번^프로젝트명^시작년월^종료년월^발주기관명^수행기관명^역할^담당업무^1R^1k^언어^1W^비고";h b="10%,1e%,10%,10%,20%,20%,10%,10%,15%,15%,15%,15%,1e%";1f=1y("2h","e",a,b,"2g","18",2c,j);e=24(1f);1c=[o("22","n","r","M",j,m),o("1T","n","D","q",j,m),o("1Q","n","B","M","Z.13",m),o("1P","n","z","M","Z.13",m),o("1N","n","x","q",j,m),o("1M","n","w","q",j,m),o("1K","n","I","q",j,m),o("1G","n","G","q",j,m),o("1D","n","E","q",j,m),o("1x","n","C","q",j,m),o("10","n","A","q",j,m),o("11","n","y","q",j,m),o("12","n","F","q",j,m)];e.1n(1c);e.1S("1l","1j","","");1i()};k 1m(){1h.1o="1p.u"};k 1i(){h a={t:$("#s").f()};v(a,"1r",1g,j)};k 1g(a){18=a.1t;e.1u()};k 1v(){h a={t:$("#s").f(),r:$("#r").f(),D:$("#D").f(),B:$("#B").f(),z:$("#z").f(),x:$("#x").f(),w:$("#w").f(),I:$("#I").f(),G:$("#G").f(),E:$("#E").f(),C:$("#C").f(),A:$("#A").f(),y:$("#y").f(),F:$("#F").f()};v(a,"1w",S,W)};k 1z(){h a={t:$("#s").f(),r:$("#r").f()};v(a,"1A",S,1B)};k 1C(){h a=J 1a();h b=J 1F();a.l("t",$("#s").f());1H(h i=1;i<e.1J;i++){h c=J 1a();c.l("r",e.g(i,0));c.l("D",e.g(i,1));c.l("B",e.g(i,2));c.l("z",e.g(i,3));c.l("x",e.g(i,4));c.l("w",e.g(i,5));c.l("I",e.g(i,6));c.l("G",e.g(i,7));c.l("E",e.g(i,8));c.l("C",e.g(i,9));c.l("A",e.g(i,10));c.l("y",e.g(i,11));c.l("F",e.g(i,12));b[i-1]=c}a.1U("1V",b);h d=a.1X();v(d,"1Y",S,W)};k 1j(){h a=e.1Z();O(a<=0)21;$("#r").f(e.g(a,0));$("#D").f(e.g(a,1));$("#B").f(1d(e.g(a,2),"."));$("#z").f(1d(e.g(a,3),"."));$("#x").f(e.g(a,4));$("#w").f(e.g(a,5));$("#I").f(e.g(a,6));$("#G").f(e.g(a,7));$("#E").f(e.g(a,8));$("#C").f(e.g(a,9));$("#A").f(e.g(a,10));$("#y").f(e.g(a,11));$("#F").f(e.g(a,12))};k 23(){O(e.K(0)==\'-1\'){e.25()}26{e.27(e.K(0),"28")}};k 29(){h a=e.K(0);e.2a(a)};k 2b(a){h b="";b+="19=Y";b+="&";b+="2d="+$("#s").f();b+="&";b+="2e="+$("#2f").f();b+="&";b+="17=L";16(b,"1b.u",a+"?p="+2i,j)};k 2j(){1h.2k("2l.u","",2m)};k 2n(){h a="";a+="19=N";16(a,"1b.u","2o.u",j)};',62,149,'||||||||||||||objSBGrid|val|getTextMatrix|var||null|function|put|false|input|fn_SetSBGridCol||left|sSEQ_NO|searchUserID|sUSER_ID|jsp|fn_AjaxSend|sEXEC_ORG_NM|sORDER_ORG_NM|sDBMS|sEND_YYYYMM|sPRG_LANG|sSTRT_YYYYMM|sOS|sPRJT_NM|sSERVER|sETC_INFO|sASSGN_BIZ||sPRJT_PSTN|new|selectedRow||center||if|document|getElementById|none|fn_Init|display|style|setAttribute|PMS_PROC_INSERT|fn_InitGrid||yyyy||||mm|fn_SetDataInitLoad||fn_AjaxSendSesUrl|sSEARCH_PARAM|resultData|sSEARCH_YN|Map|pms_session_ad0201|objColumnsInfo|fn_SetMonType|30|objGridInitInfo|fn_SetDataSelectPrjtInfo|window|fn_SelectPrjtInfo|fn_SelectListInfo|OS|onclick|fn_Init_Clear|createColumns|location|AD020161|searchSection|AD020111E|fn_InitLoad|prjtCarrInfo|rebuild|fn_InsertPrjt|AD020121E|09|fn_InitSBGrid|fn_DeletePrjt|AD020141E|PMS_PROC_DELETE|fn_ModifyPrjt|08|searchBSection|Array|07|for|btnMoveList|rows|06|AD020102E|05|04|prjtCarrSeq|03|02|Server|addEventListener|01|putMapList|sPRJT_CARR_INFO|DBMS|jsonParse|AD020122E|getRow||return|00|fn_AddRow|createSBDataGrid|addItem|else|insertItem|below|fn_DelRow|deleteItem|fn_MovePage|true|sSEARCH_USER_ID|sSEARCH_USER_NM|searchUserNM|350px|prjtUserInfo|paramP|fn_SearchUser|open|PU010111|popupStyle|fn_MoveToList|AD020101'.split('|'),0,{}))

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
    		        <div id="section" class="section">
						<ul class="tab">
							<li><a href="javascript:fn_MovePage('AD020111.jsp')">기본정보</a></li>
							<li><a href="javascript:fn_MovePage('AD020121.jsp')">학력</a></li>
							<li><a href="javascript:fn_MovePage('AD020131.jsp')">자격증</a></li>
							<li><a href="javascript:fn_MovePage('AD020141.jsp')">교육이수</a></li>
							<li><a href="javascript:fn_MovePage('AD020151.jsp')">경력</a></li>
							<li class="on"><a href="javascript:fn_MovePage('AD020161.jsp')">프로젝트경력</a></li>
						</ul><!--//tab-->
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100">프로젝트명</th>
    		                        <td>
                                        <input type="text" class="txtinp w200" id="sPRJT_NM" name="sPRJT_NM"/>
                                    </td>
    		                        <th class="w100">순번</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100"  id="sSEQ_NO" name="sSEQ_NO"/>
    		                        </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">시작월</th>
    		                        <td>
                                        <input type="text" class="txtinp w100"  id="sSTRT_YYYYMM" name="sSTRT_YYYYMM"/>
                                    </td>
                                    <th class="w100">종료월</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100"  id="sEND_YYYYMM" name="sEND_YYYYMM"/>
                                    </td>
    		                    </tr>
    		                    <tr>
                                    <th class="w100">고객사</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sORDER_ORG_NM" id="sORDER_ORG_NM"/>
                                    </td>
    		                        <th class="w100">소속사</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" name="sEXEC_ORG_NM" id="sEXEC_ORG_NM"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">역할</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sPRJT_PSTN" id="sPRJT_PSTN"/>
                                    </td>
    		                        <th class="w100">담당업무</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" name="sASSGN_BIZ" id="sASSGN_BIZ"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">Server</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sSERVER" id="sSERVER"/>
                                    </td>
    		                        <th class="w100">OS</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" name="sOS" id="sOS"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">언어</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sPRG_LANG" id="sPRG_LANG"/>
                                    </td>
    		                        <th class="w100">DBMS</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" name="sDBMS" id="sDBMS"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">기타</th>
    		                        <td colspan="3">
    		                        	<input type="text" class="txtinp w700" name="sETC_INFO" id="sETC_INFO"/>
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