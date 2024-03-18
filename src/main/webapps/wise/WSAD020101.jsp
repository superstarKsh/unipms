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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('5 I(){$("#e 19[y=Q], #e S, #e U").d("");g()};5 g(){8 a="아이디^이름^부서^직급^입사일자^현재참여프로젝트명^소속사^사번";8 b="h%,10%,15%,10%,10%,17%,h%,10%";m=1a("w","2",a,b,"z","j",k,1);2=V(m);o=[4("16","3","i","9",1,6),4("x","3","l","c",1,6),4("A","3","B","9",1,6),4("C","3","D","c",1,6),4("E","3","F","c","G.H.1p",6),4("J","3","K","9",1,6),4("L","3","M","9",1,6),4("N","3","O","c",1,k)];2.P(o);2.n("R","f","","");2.n("T","p","","");q()};5 q(){8 a={i:$("#W").d(),l:$("#X").d()};Y(a,"Z",r,1)};5 r(a){j=a.12;2.13()};5 f(){8 a=2.14();s(a<=0)t;8 b=2.18(a,7);u.v("1b://1c.1d.1e.1f/1g/1h.1i?1j="+b,"",1k)};5 p(){8 a=2.1l();s(a!=0)t;f()};5 1m(){u.v("1n.1o","",11)};',62,88,'|null|objSBGrid|output|fn_SetSBGridCol|function|false||var|left|||center|val|container|fn_SelectListInfo|fn_InitGrid|20|sUSER_ID|resultData|true|sUSER_NM|objGridInitInfo|addEventListener|objColumnsInfo|fn_SelectListInfoMobile|fn_SelectPrjtInfo|fn_SetDataSelectPrjtInfo|if|return|window|open|prjtUserInfo|01|type|500px|02|sBIZ_QUARTER_NM|03|sUSER_PSTN_NM|04|sJOIN_DT|yyyy|mm|fn_Init|05|sCURR_PRJT_NM|06|sCOOP_NM|07|sUSER_NO|createColumns|text|ondblclick|select|onclick|textarea|createSBDataGrid|searchUserID|searchUserNM|fn_AjaxSend|AD020111||popupStyle|userInfo|rebuild|getRow||00|30|getTextMatrix|input|fn_InitSBGrid|http|km|wise|co|kr|WiseIntranet|selectMemberPopAction|action|EMPID|userPopupStyle|getCol|fn_SearchUser|PU010111|jsp|dd'.split('|'),0,{}))

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
    		        <h2>[AD02] 인력정보</h2>
    		        <!-- END : title -->

					<!-- START : search section -->
    		        <div class="section">
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