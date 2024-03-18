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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('6 1C(){$("#n").w();$("#r").w();j a={v:$("#s").4()};u(a,"11",S,g)};6 S(c){j d=\'<k x="C">선 택</k>\';j e=\'<k x="C">선 택</k>\';$.L(c.1m,6(a,b){d=d+\'<k x="\'+b.J+\'">\'+b.I+\'</k>\';$("#n").w().H(d)});$.L(c.1G,6(a,b){e=e+\'<k x="\'+b.J+\'">\'+b.I+\'</k>\';$("#r").w().H(e)});X()};6 X(){j a="품질관리1h^품질관리명^시작일자^종료일자^점검구분^점검자^대상구분^비고^^";j b="10%,W%,13%,13%,10%,10%,10%,W%,10%,10%";R=1i("1k","f",a,b,"1r","P",z,g);f=1f(R);V=[h("C","i","p","m",g,o),h("18","i","B","K",g,o),h("1g","i","t","m","M.N.O",o),h("1o","i","q","m","M.N.O",o),h("1N","i","1E","m",g,o),h("1F","i","Q","m",g,o),h("1H","i","1J","m",g,o),h("1L","i","A","K",g,o),h("19","i","n","m",g,z),h("1a","i","r","m",g,z),h("10","i","y","m",g,z)];f.1c(V);f.1d("1e","T","","");U()};6 D(){E.1j="11.F"};6 1l(){j a={v:$("#s").4(),n:$("#n k:G").4()};u(a,"1n",Y,g)};6 Y(a){j b=a.1p;$("#p").4(b.p)};6 U(){j a={v:$("#s").4()};u(a,"1q",Z,g)};6 Z(a){P=a.1s;f.1t()};6 1u(){j a={v:$("#s").4(),p:$("#p").4(),B:$("#B").4(),t:$("#t").4(),q:$("#q").4(),q:$("#q").4(),n:$("#n k:G").4(),y:$("#y").4(),r:$("#r k:G").4(),A:$("#A").4()};u(a,"1v",D,1w)};6 1x(){j a={v:$("#s").4(),p:$("#p").4()};u(a,"1y",D,1z)};6 T(){j a=f.1A();1B(a<=0)1D;$("#n").4(f.l(a,8));$("#p").4(f.l(a,0));$("#B").4(f.l(a,1));$("#t").4(12(f.l(a,2)));$("#q").4(12(f.l(a,3)));$("#r").4(f.l(a,9));$("#Q").4(f.l(a,5));$("#y").4(f.l(a,10));$("#A").4(f.l(a,7))};$(6(){$("#t").14(15);$("#q").14(15)});6 1I(){E.16("1K.F","",17)};6 1M(){E.16("1b.F","",17)};',62,112,'||||val||function|||||||||objSBGrid|null|fn_SetSBGridCol|output|var|option|getTextMatrix|center|sCNTL_TYPE|false|sQULTY_ID|sEND_DT|sTARGET_TYPE|searchPrjtID|sSTRT_DT|fn_AjaxSend|sPRJT_ID|empty|value|sCNTL_USER_ID|true|sCONTENTS|sTITLE|00|fn_Init_Clear|window|jsp|selected|append|sCODE_NM|sCODE|left|each|yyyy|mm|dd|resultData|sCNTL_USER_NM|objGridInitInfo|fn_SetDataInitLoad|fn_SelectListInfo|fn_SelectPrjtInfo|objColumnsInfo|20|fn_InitGrid|fn_SetDataSelectInitID|fn_SetDataSelectPrjtInfo||QT010101|fn_SetDateType||datepicker|setCalendar|open|popupStyle|01|08|09|PU010112|createColumns|addEventListener|onclick|createSBDataGrid|02|ID|fn_InitSBGrid|location|prjtQtInfo|fn_SelectInitID|qultyType|QT010102|03|qultyID|QT010111|350px|qultyInfo|rebuild|fn_InsertPrjtInfo|QT010121|PMS_PROC_INSERT|fn_DeletePrjtInfo|QT010141|PMS_PROC_DELETE|getRow|if|fn_InitLoad|return|sCNTL_TYPE_NM|05|qultyTarget|06|fn_SearchPrjtInfo|sTARGET_TYPE_NM|PU010101|07|fn_SearchUser|04'.split('|'),0,{}))

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
    		        <h2>[QT01] 일정등록</h2>
    		        <!-- END : title -->

					<!-- START : search section -->
    		        <div id="searchSection" class="section">
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

					<!-- START : input table section -->
    		        <div id="section" class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w120"><pk>*</pk> 품질점검구분</th>
    		                        <td>
                                        <select class="selectbox" name="selectbox" id="sCNTL_TYPE" name="sCNTL_TYPE" onChange="javascript:fn_SelectInitID();">
										</select>
                                    </td>
                                    <th class="w120"><pk>*</pk> 품질관리 ID</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100"  id="sQULTY_ID" name="sQULTY_ID"/>
    		                        </td>
    		                    </tr>
    		                    <tr>
                                    <th class="w120">품질관리명</th>
    		                        <td colspan="3">
    		                        	<input type="text" class="txtinp w700"  id="sTITLE" name="sTITLE"/>
                                    </td>
    		                    </tr>
    		                    <tr>
                                    <th class="w120">시작일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" name="sSTRT_DT" id="sSTRT_DT"/>
                                    </td>
    		                        <th class="w120">종료일자</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" name="sEND_DT" id="sEND_DT"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w120">점검대상</th>
    		                        <td>
    		                        	<select class="selectbox" name="selectbox" id="sTARGET_TYPE" name="sTARGET_TYPE">
										</select>
                                    </td>
    		                        <th class="w120">점검자</th>
    		                        <td>
                                        <ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sCNTL_USER_NM" name="sCNTL_USER_NM" readOnly/></li>
	    		                            <li><a href="javascript:fn_SearchUser();" class="btn01">검색</a></li>
	    		                            <li><input type="hidden" class="txtinp w100" id="sCNTL_USER_ID" name="sCNTL_USER_ID"/></li>
										</ul>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w120">비고</th>
    		                        <td colspan="3">
										<textarea class="txtinp w700" cols="100" rows="5" name="sCONTENTS" id="sCONTENTS" ></textarea>
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
    		                <li><a href="javascript:fn_InsertPrjtInfo();" class="btnimg03">저장</a></li>
    		                <li><a href="javascript:fn_DeletePrjtInfo();" class="btnimg04">삭제</a></li>
    		            </ul>
    		        </div><!--//section-->
    		        
    		        <!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtQtInfo">
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