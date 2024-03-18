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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('3 G(){$("#e 19[1d=O], #e S, #e Z").x("");r()};3 r(){m()};3 m(){5 a="아이디^이름^부서^직급^입사일자^현재참여프로젝트명^소속사";5 b="d%,d%,15%,10%,10%,1c%,d%";n=1h("I","4",a,b,"Q","i",T,2);4=13(n);q=[7("18","6","1b","9",2,8),7("1e","6","j","9",2,8),7("1k","6","B","9",2,8),7("C","6","D","9",2,8),7("E","6","F","9",2,8),7("1l","6","H","k",2,8),7("J","6","K","k",2,8)];4.M(q);4.l("P","f","","");4.l("R","h","","");o()};3 U(){V.W="X.c"};3 o(){5 a={j:$("#11").x()};12(a,"g",s,2)};3 s(a){i=a.14;4.16()};3 17(){5 a="";a+="t=N";u(a,"v.c","g.c",2)};3 f(){5 a=4.1a();w(a<=0)y;z(a)};3 h(){5 a=4.1f();w(a!=0)y;f()};3 z(a){5 b="";b+="t=Y";b+="&";b+="1g="+4.A(a,0);b+="&";b+="1i="+4.A(a,1);b+="&";b+="1j=L";u(b,"v.c","g.c?p=L",2)};',62,84,'||null|function|objSBGrid|var|output|fn_SetSBGridCol|false|center|||jsp|20|container|fn_SelectListInfo|AD020111|fn_SelectListInfoMobile|resultData|sUSER_NM|left|addEventListener|fn_InitGrid|objGridInitInfo|fn_SelectPrjtInfo||objColumnsInfo|fn_InitLoad|fn_SetDataSelectPrjtInfo|sSEARCH_YN|fn_AjaxSendSesUrl|pms_session_ad0201|if|val|return|fn_SessionCreate|getTextMatrix|sBIZ_QUARTER_NM|03|sUSER_PSTN_NM|04|sJOIN_DT|fn_Init|sCURR_PRJT_NM|prjtUserInfo|06|sCOOP_NM||createColumns||text|ondblclick|500px|onclick|select|true|fn_Init_Clear|window|location|AD020101||textarea||searchUserNM|fn_AjaxSend|createSBDataGrid|userInfo||rebuild|fn_InsertPrjt|00|input|getRow|sUSER_ID|25|type|01|getCol|sSEARCH_USER_ID|fn_InitSBGrid|sSEARCH_USER_NM|sSEARCH_PARAM|02|05'.split('|'),0,{}))

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
    		        <h2>[AD02] 인력정보관리</h2>
    		        <!-- END : title -->

					<!-- START : search section -->
    		        <div id="searchSection" class="section">
    		            <div class="search">
    		                <div class="box">
    		                    <ul>
    		                        <li class="name"><span>이름</span></li>
    		                        <li><input type="text" class="txtinp w200" id="searchUserNM"  name="searchUserNM" /></li>
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
	    		        <div id="prjtUserInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->

					<!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_InsertPrjt();" class="btnimg03">등록</a></li>
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