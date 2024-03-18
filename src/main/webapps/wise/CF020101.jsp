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

	fn_initLoad();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('7 H(){m()};7 m(){2 a="일자^시간^장소^회의 주제^첨부파일^";2 b="15%,10%,1g%,1f%,10%";o=1b("19","1",a,b,"18","s",k,3);1=17(o);n=[8("16","9","14","e","13.12.B",g),8("Z","9","X","e","v:v",g),8("U","9","O","e",3,g),8("N","9","L","J",3,g),8("C","11","D","e",3,g),8("E","9","F","e",3,k),8("G","9","p","e",3,k)];1.I(n);1.A("K","j","","");1.A("M","y","","");x()};7 x(){2 a={P:$("#Q").R()};S(a,"T",w,3)};7 w(a){s=a.V;1.W()};7 j(){2 a=1.u();2 b=1.t();f(a<=0)i;f(b==4){2 c=1.l(a,5);f(c=="")i;q(c)}1a{2 d="";d+="1c=Y";d+="&";d+="p="+1.l(a,6);1d(d,"1e.h","z.h",3)}};7 y(){2 a=1.u();2 b=1.t();f(b==4){2 c=1.l(a,5);f(c=="")i;q("1h",c)}f(b==0){j()}};7 1i(){r.1j="z.h"};7 1k(){r.1l("1m.h","",1n)};',62,86,'|objSBGrid|var|null||||function|fn_SetSBGridCol|output|||||center|if|false|jsp|return|fn_SelectListInfo|true|getTextMatrix|fn_InitGrid|objColumnsInfo|objGridInitInfo|sPROCD_NO|fn_DownloadFile|window|resultData|getCol|getRow|99|fn_SetDataSelectPrjtInfo|fn_SelectPrjtInfo|fn_GridFileDown|CF020102|addEventListener|dd|04|sIMG_URL|05|sFILE_NM1|06|fn_initLoad|createColumns|left|ondblclick|sTITLE|onclick|03|sPROCD_PLACE|sPRJT_ID|searchPrjtID|val|fn_AjaxSend|CF020111|02|procdInfo|rebuild|sPROCD_TIME||01||imageF|mm|yyyy|sPROCD_DT||00|createSBDataGrid|500px|prjtProcdInfo|else|fn_InitSBGrid|sSEARCH_YN|fn_AjaxSendSesUrl|pms_session_cf0201|45|20|CF02|fn_InsertPrjt|location|fn_SearchPrjtInfo|open|PU010101|popupStyle'.split('|'),0,{}))

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
    		        <h2>[CF02] 회의록</h2>
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
	    		        <div id="prjtProcdInfo">
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
					<input type="hidden" class="inputType" id="sSEQ_NO" name="sSEQ_NO"/>
					<input type="hidden" class="inputType" id="sCategory" name="sCategory" value="CF02"/>
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