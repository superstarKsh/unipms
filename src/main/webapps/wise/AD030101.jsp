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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('2 H(){$("#e 1c[M=P], #e S, #e 16").r("");k()};2 k(){h()};2 h(){5 a="X^협력사명^사업자번호^전화번호^팩스번호";5 b="10%,18%,d%,d%,d%";j=1d("u","3",a,b,"R","q",U,4);3=13(j);m=[9("17","8","i","c",4,7),9("1e","8","1f","1g",4,7),9("C","8","D","c","E-F-G",7),9("1m","8","I","c",4,7),9("J","8","K","c",4,7)];3.L(m);3.l("O","f","","");3.l("Q","n","","");o()};2 T(){g.V="W.6"};2 o(){5 a={i:$("#Z").r()};11(a,"12",s,4)};2 s(a){q=a.u;3.14()};2 f(){5 a=3.15();t(a<=0)v;5 b="";b+="w=Y";b+="&";b+="19="+3.x(a,0);b+="&";b+="1b="+3.x(a,1);b+="&";y(b,"z.6","A.6?p="+B,4)};2 n(){5 a=3.1h();t(a!=0)v;f()};2 1i(){5 a="w=N";y(a,"z.6","A.6?p="+B,4)};2 1j(a){g.1k("1l.6","",1a)};',62,85,'||function|objSBGrid|null|var|jsp|false|output|fn_SetSBGridCol|||center|20|container|fn_SelectListInfo|window|fn_InitGrid|sCOOP_ID|objGridInitInfo|fn_InitLoad|addEventListener|objColumnsInfo|fn_SelectListInfoMobile|fn_SelectPrjtInfo||resultData|val|fn_SetDataSelectPrjtInfo|if|coopInfo|return|sSEARCH_YN|getTextMatrix|fn_AjaxSendSesUrl|pms_session_ad0301|AD030102|paramP|02|sCOOP_REG_NUM|99|999|99999|fn_Init|sPHONE_NUM|04|sFAX_NUM|createColumns|type||ondblclick|text|onclick|500px|select|fn_Init_Clear|true|location|AD030101|ID||searchCoopID||fn_AjaxSend|AD030111|createSBDataGrid|rebuild|getRow|textarea|00|30|sSEARCH_COOP_ID|popupStyle|sSEARCH_COOP_NM|input|fn_InitSBGrid|01|sCOOP_NM|left|getCol|fn_InsertPrjt|fn_SearchCoop|open|PU010121|03'.split('|'),0,{}))

</script>
</head>

<%
	String getParam = request.getParameter("p");
	System.out.println("getParam : " + getParam);
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
<%
	if ("AD".equals(getParam)) {
%>
    		        <h2>[AD03] 협력업체관리</h2>
<%
	} else {
%>
    		        <h2>[PJ03] 협력사정보조회</h2>
<%
	}
%>

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

	    		    <!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="coopInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->

					<!-- START : button section -->
    		        <div class="section">
<%
	if ("AD".equals(getParam)) {
%>
    		            <ul class="btnbox right">
	  		                <li><a href="javascript:fn_InsertPrjt();" class="btnimg03">등록</a></li>
    		            </ul>
<%
	}
%>
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