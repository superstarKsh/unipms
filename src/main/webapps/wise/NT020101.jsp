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

	$("#searchPrjtID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");
	$("#searchPrjtNM").val("<%=(String) session.getAttribute("sPRJT_NM")%>");

	fn_InitLoad();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('4 D(){n()};4 n(){3 a="일련번호^제목^첨부파일^작성자^등록일";3 b="10%,1d%,10%,15%,15%";m=1a("o","1",a,b,"14","r",s,6);1=12(m);k=[8("11","9","Z","f",6,e),8("X","9","A","q",6,e),8("V","U","T","f",6,e),8("S","9","R","f",6,e),8("Q","9","O","f","I.H.F",e),8("B","9","W","q",6,s)];1.C(k);1.p("E","j","","");1.p("G","y","","");x()};4 x(){3 a={J:$("#K").L()};M(a,"N",w,6)};4 w(a){r=a.o;1.P()};4 j(){3 a=1.v();3 b=1.u();7(a<=0)i;7(b==2){3 c=1.h(a,5);7(c=="")i;l("z",c)}13{3 d="";d+="16=Y";d+="&";d+="17="+1.h(a,0);18(d,"19.g","1b.g",6)}};4 y(){3 a=1.v();3 b=1.u();7(b==2){3 c=1.h(a,5);7(c=="")i;l("z",c)}7(b==0){j()}};4 1c(){t.1e="1f.g"};4 1g(){t.1h("1i.g","",1j)};',62,82,'|objSBGrid||var|function||null|if|fn_SetSBGridCol|output|||||false|center|jsp|getTextMatrix|return|fn_SelectListInfo|objColumnsInfo|fn_DownloadFile|objGridInitInfo|fn_InitGrid|noticeInfo|addEventListener|left|resultData|true|window|getCol|getRow|fn_SetDataSelectPrjtInfo|fn_SelectPrjtInfo|fn_GridFileDown|NT02|sTITLE|05|createColumns|fn_InitLoad|ondblclick|dd|onclick|mm|yyyy|sPRJT_ID|searchPrjtID|val|fn_AjaxSend|NT020111|sREG_DT|rebuild|04|sREG_USER_NM|03|sIMG_URL|imageF|02|sFILE_NM|01||sSEQ_NO||00|createSBDataGrid|else|500px||sSEARCH_YN|sSEARCH_BOARD_SEQ_NO|fn_AjaxSendSesUrl|pms_session_nt0201|fn_InitSBGrid|NT020103|fn_InsertPrjt|50|location|NT020102|fn_SearchPrjtInfo|open|PU010101|popupStyle'.split('|'),0,{}))

</script>
</head>

<body onload="fn_Init();" oncontextmenu="return false">
<div id="wrap">

	<!-- START : include -->
	<div>
		<jsp:include page="../common/layout_header.jsp" flush="true" />
	</div>

	<div id="container">

		<div id="leftWrap">
			<jsp:include page="../common/layout_left_nt.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
    			<!-- Form -->
    		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[NT02] 자유게시판</h2>
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
	    		        <div id="noticeInfo">
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