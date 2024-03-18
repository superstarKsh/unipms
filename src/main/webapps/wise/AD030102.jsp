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

	$("#searchCoopID").val('<%=(String) session.getAttribute("sSEARCH_COOP_ID")%>');
	$("#searchCoopNM").val('<%=(String) session.getAttribute("sSEARCH_COOP_NM")%>');

	fn_InitLoad();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('1 E(){2 a={};k(a,"O",w,7)};1 w(c){2 d=c.M;$("#3").0(d.3);2 e=\'<5 x="L">선 택</5>\';$.K(c.J,1(a,b){e=e+\'<5 x="\'+b.I+\'">\'+b.H+\'</5>\';$("#4").G().F(e)});q($("#r").0()!=""){s()}};1 o(){2 a="";a+="u=N";v(a,"t.6","y.6?p="+z,7)};1 s(){2 a={3:$("#r").0()};k(a,"C",A,7)};1 A(a){2 b=a.P;q(b==7)D;$("#3").0(b.3);$("#9").0(b.9);$("#m").0(b.m);$("#4").0(b.4);$("#l").0(b.l);$("#8").0(b.8);$("#i").0(b.i);$("#g").0(b.g);$("#f").0(b.f);$("#n").0(b.n);$("#j").0(b.j);$("#h").0(b.h)};1 B(){2 a={3:$("#3").0(),9:$("#9").0(),m:$("#m").0(),4:$("#4 5:Q").0(),l:$("#l").0(),8:$("#8").0(),i:$("#i").0(),g:$("#g").0(),f:$("#f").0(),n:$("#n").0(),j:$("#j").0(),h:$("#h").0()};k(a,"R",o,S)};1 T(){2 a={3:$("#3").0()};k(a,"U",o,V)};1 W(){2 a="";a+="u=N";v(a,"t.6","y.6?p="+z,7)};1 X(a){Y.Z("10.6","",11)};',62,64,'val|function|var|sCOOP_ID|sCOOP_TYPE|option|jsp|null|sFAX_NUM|sCOOP_NM||||||sZIP_CD_JI|sCOOP_HOMEPAGE|sADDR_DO|sCOOP_EMAIL|sZIP_CD_DO|fn_AjaxSend|sPHONE_NUM|sCOOP_REG_NUM|sADDR_JI|fn_Init_Clear||if|searchCoopID|fn_SelectPrjtInfo|pms_session_ad0301|sSEARCH_YN|fn_AjaxSendSesUrl|fn_SetDataInitLoad|value|AD030101|paramP|fn_SetDataSelectPrjtInfo|fn_InsertPrjt|AD030113|return|fn_InitLoad|append|empty|sCODE_NM|sCODE|coopType|each|99|coopID||AD030102|coopInfo|selected|AD030121|PMS_PROC_INSERT|fn_DeletePrjt|AD030141|PMS_PROC_DELETE|fn_MoveToList|fn_SearchCoop|window|open|PU010121|popupStyle'.split('|'),0,{}))

</script>
</head>

<%
	String getParam = request.getParameter("p");
%>
<body onload="fn_Init();" oncontextmenu="return false">
<div id="wrap">

	<!-- START : include -->
	<div>
<%
	if ("AD".equals(getParam)) {
%>
		<jsp:include page="../common/layout_header_admin.jsp" flush="true" />
<%
	} else {
%>
		<jsp:include page="../common/layout_header.jsp" flush="true" />
<%
	}
%>
	</div>
	<!-- END : include -->

	<div id="container">

		<div id="leftWrap">
<%
	if ("AD".equals(getParam)) {
%>
			<jsp:include page="../common/layout_left_ad.jsp" flush="true" />
<%
	} else {
%>
			<jsp:include page="../common/layout_left_pj.jsp" flush="true" />
<%
	}
%>
		</div>

 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">

					<!-- START : title -->
<%if ("AD".equals(getParam)) {%>					
    		        <h2>[AD03] 협력업체 등록</h2>
<%}	else {%>	
    		        <h2>[PJ03] 협력업체 등록</h2>
<%}%>					
    		        
    		        <!-- END : title -->

					<!-- START : search section -->
    		        <div id="searchSection" class="section">
    		            <div class="search">
    		                <div class="box">
    		                    <ul>
    		                        <li class="name"><span>협력사</span></li>
    		                        <li><input type="text" class="txtinp w100" id="searchCoopID" name="searchCoopID" readOnly/></li>
    		                        <li><input type="text" class="txtinp w200" id="searchCoopNM" name="searchCoopNM" readOnly/></li>
    		                        <li><a href="javascript:fn_SearchCoop();" class="btn01">검색</a></li>
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

					<!-- START : input table section -->
    		        <div id="section" class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100">협력업체 ID</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sCOOP_ID" name="sCOOP_ID" />
    		                        </td>
    		                        <th class="w100">협력업체명</th>
    		                        <td>
                                        <input type="text" class="txtinp w200" id="sCOOP_NM" name="sCOOP_NM"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">사업자등록번호</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" id="sCOOP_REG_NUM" name="sCOOP_REG_NUM"/>
                                    </td>
                                    <th class="w100">기업구분</th>
    		                        <td>
    		                        	<select class="selectbox" name="selectbox" id="sCOOP_TYPE" name="sCOOP_TYPE">
										</select>
                                    </td>
    		                    </tr>
    		                    <tr>
                                    <th class="w100">전화번호</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sPHONE_NUM" name="sPHONE_NUM"/>
                                    </td>
    		                        <th class="w100">팩스번호</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" id="sFAX_NUM" name="sFAX_NUM"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">이메일</th>
    		                        <td>
                                        <input type="text" class="txtinp w200" id="sCOOP_EMAIL" name="sCOOP_EMAIL"/>
                                    </td>
                                    <th class="w100">홈페이지</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w200" id="sCOOP_HOMEPAGE" name="sCOOP_HOMEPAGE"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">지번주소</th>
    		                        <td colspan="3">
                                        <input type="text" class="txtinp w100" id="sZIP_CD_JI" name="sZIP_CD_JI"/>
                                        <input type="text" class="txtinp w500" id="sADDR_JI" name="sADDR_JI"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">도로명주소</th>
    		                        <td colspan="3">
                                        <input type="text" class="txtinp w100" id="sZIP_CD_DO" name="sZIP_CD_DO"/>
                                        <input type="text" class="txtinp w500" id="sADDR_DO" name="sADDR_DO"/>
                                    </td>
    		                    </tr>
    		                </tbody>
    		            </table>
    		        </div><!--//section-->
    		        <!-- END : input table section -->

					<!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_MoveToList();" class="btnimg03">목록</a></li>
    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
    		                <li><a href="javascript:fn_InsertPrjt();" class="btnimg03">저장</a></li>
    		                <li><a href="javascript:fn_DeletePrjt();" class="btnimg04">삭제</a></li>
    		            </ul>
    		        </div><!--//section-->

    		    </div><!--//pixbox-->
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