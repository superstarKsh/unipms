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

	fn_InitGrid();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('9 1h(){8 a="Q^품질관리명^시작일자^종료일자^점검구분^점검자^대상구분^비고^^";8 b="13%,i%,13%,13%,10%,15%,10%,i%,10%,10%";s=y("1w","c",a,b,"1s","n",7,3);c=t(s);u=[2("C","1","h","4",3,5),2("o","1","p","g",3,5),2("q","1","1r","4","f.d.e",5),2("v","1","1q","4","f.d.e",5),2("x","1","1o","4",3,5),2("z","1","A","4",3,5),2("B","1","17","4",3,5),2("D","1","1m","g",3,5),2("F","1","1l","4",3,7),2("H","1","1k","4",3,7),2("10","1","1j","4",3,7)];c.K(u);c.k("L","N","","");a="Q^제목^점검일자^점검자^점검완료일자^완료구분^점검내용^결함사항^담당자^수정예정일자^수정완료일자^^";b="15%,i%,13%,10%,13%,10%,10%,i%,10%,10%,10%,10%";O=y("1g","6",a,b,"1f","S",7,3);6=t(O);T=[2("C","1","U","4",3,5),2("o","1","p","g",3,5),2("q","1","1e","4","f.d.e",5),2("v","1","A","4",3,5),2("x","1","W","4","f.d.e",5),2("z","1","1d","4",3,5),2("B","1","1c","g",3,7),2("D","1","1b","g",3,7),2("F","1","19","4",3,5),2("H","1","18","4","f.d.e",5),2("10","1","W","4","f.d.e",5),2("11","1","1n","4",3,7),2("12","1","h","4",3,7),2("13","1","16","4",3,7)];6.K(T);6.k("1a","m","","");6.k("L","Z","","");X()};9 X(){8 a={V:$("#R").P()};M(a,"1i",J,3)};9 J(a){n=a.I;c.G()};9 N(){8 a=c.E();8 b={V:$("#R").P(),h:c.j(a,0)};M(b,"1p",w,3)};9 w(a){S=a.I;6.G()};9 m(){8 a=6.E();r(a<=0)14;8 b="";b+="1t=Y";b+="&";b+="h="+6.j(a,12);b+="&";b+="16="+6.j(a,13);b+="&";b+="U="+6.j(a,0);1u(b,"1v.l","1x.l",3)};9 Z(){8 a=6.1y();r(a!=0)14;m()};9 1z(){1A.1B("1C.l","",1D)};',62,102,'|output|fn_SetSBGridCol|null|center|false|objSBGridDetail|true|var|function|||objSBGrid|mm|dd|yyyy|left|sQULTY_ID|20|getTextMatrix|addEventListener|jsp|fn_SelectListInfoDetail|resultData|01|sTITLE|02|if|objGridInitInfo|createSBDataGrid|objColumnsInfo|03|fn_SetDataSelectListInfo|04|fn_InitSBGrid|05|sCNTL_USER_NM|06|00|07|getRow|08|rebuild|09|qultyInfo|fn_SetDataSelectPrjtInfo|createColumns|onclick|fn_AjaxSend|fn_SelectListInfo|GridInitInfoDetail|val|ID|searchPrjtID|resultDataDetail|objColumnsInfoDetail|sQULTY_CNTL_ID|sPRJT_ID|sCORRT_DT|fn_SelectPrjtInfo||fn_SelectListInfoDetailMobile|||||return||sQULTY_TITLE|sTARGET_TYPE_NM|sCORRT_SCHD_DT|sDEV_USER_NM|ondblclick|sISSUE_DESC|sCNTL_DESC|sCONFRM_YN|sCNTL_DT|350px|prjtQtMngInfo|fn_InitGrid|QT010111|sCNTL_USER_ID|sTARGET_TYPE|sCNTL_TYPE|sCONTENTS|sFILE_NM|sCNTL_TYPE_NM|QT020111|sEND_DT|sSTRT_DT|250px|sSEARCH_YN|fn_AjaxSendSesUrl|pms_session_qt0201|prjtQtInfo|QT020101|getCol|fn_SearchPrjtInfo|window|open|PU010101|popupStyle'.split('|'),0,{}))

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
			<jsp:include page="../common/layout_left_qt.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[QT02] 진행현황조회</h2>
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
	    		    	<h3>품질관리 일정(목록)</h3>
	    		        <div id="prjtQtInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
					<br/>
    		        <!-- START : grid section -->
	    		    <div class="section">
	    		    	<h3>품질관리 진행현황</h3>
	    		        <div id="prjtQtMngInfo">
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