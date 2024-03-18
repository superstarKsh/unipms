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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('e 1I(){V();D();1t()};e 1t(){h a="코드G^코드명^코드설명^사용여부^l^p^q";h b="15%,25%,1T%,10%,10%,10%,10%";1s=1r("1q","f",a,b,"1p","1o",y,g);f=1n(1s);1m=[k("1k","z","j","C",g,n),k("1i","m","s","o",g,n),k("1e","m","t","o",g,n),k("1b","m","u","C",g,n),k("17","z","l","o",g,y),k("16","z","p","o",g,y),k("13","z","q","o",g,y)];f.12(1m);f.11("Z","Y","","");a="상세코드G^상세코드명^상세코드설명^사용여부^순서^고정G^j";b="10%,25%,1O%,10%,10%,10%,10%";X=1r("W","8",a,b,"1p","O",y,g);8=1n(X);S=[k("1k","m","l","C",g,n),k("1i","m","s","o",g,n),k("1e","m","t","o",g,n),k("1b","m","u","C",g,n),k("17","m","p","C",g,n),k("16","z","q","o",g,n),k("13","z","j","o",g,y)];8.12(S);8.11("Z","P","","");1c()};e V(){$("#1J m[Q=R], #E T, #E U").7("")};e D(){$("#1Q m[Q=R], #E T, #E U").7("");h c=\'<A K="">선 택</A>\';$.1y(1E,e(a,b){c=c+\'<A K="\'+b.2c+\'">\'+b.K+\'</A>\';$("#J").1L().1N(c)})};e 1c(){h a={x:$("#w").7()};v(a,"1W",14,g)};e 14(a){1o=a.1q;O=[];f.F();8.F()};e B(){D();h a={x:$("#w").7(),j:$("#j").7()};v(a,"1D",18,g)};e 18(a){O=a.W;8.F()};e 1G(){h a={x:$("#w").7(),j:$("#j").7(),l:$("#l").7(),s:$("#s").7(),t:$("#t").7(),u:$("#u").7(),p:$("#p").7(),q:$("#q").7()};v(a,"19",1a,N)};e 1M(){h a={x:$("#w").7(),j:$("#j").7(),l:$("#l").7()};v(a,"1v",1a,1d)};e 1P(){h a={x:$("#w").7(),j:$("#j").7(),l:$("#M").7(),s:$("#1f").7(),t:$("#1g").7(),u:$("#J A:1X").7(),p:$("#1h").7(),q:$("#H").7()};v(a,"19",B,N)};e 1x(){1j($("#H").7()!=""){1z(1A);1B}h a={x:$("#w").7(),j:$("#j").7(),l:$("#M").7()};v(a,"1v",B,1d)};e 1C(){h a=L 1l();h b=L 1F();a.r("x",$("#w").7());a.r("j",$("#j").7());1H(h i=1;i<8.1K;i++){h c=L 1l();c.r("l",8.9(i,0));c.r("s",8.9(i,1));c.r("t",8.9(i,2));c.r("u",8.9(i,3));c.r("p",8.9(i,4));c.r("q",8.9(i,5));b[i-1]=c}a.1R("1S",b);h d=a.1U();v(d,"1V",B,N)};e Y(){h a=f.1u();$("#j").7(f.9(a,0));$("#s").7(f.9(a,1));$("#t").7(f.9(a,2));$("#u").7(f.9(a,3));$("#l").7(f.9(a,4));$("#p").7(f.9(a,5));$("#q").7(f.9(a,6));D();B()};e P(){h a=8.1u();$("#M").7(8.9(a,0));$("#1f").7(8.9(a,1));$("#1g").7(8.9(a,2));$("#J").7(8.9(a,3));$("#H").7(8.9(a,5));$("#1h").7(8.9(a,4));$("#1Y").7(8.9(a,6))};e 1Z(){1j(f.I(0)==\'-1\'){f.20()}21{f.22(f.I(0),"23")}};e 24(){h a=f.I(0);f.26(a)};e 27(){28.29("2a.2b","",1w)};',62,137,'|||||||val|objSBGridDetail|getTextMatrix|||||function|objSBGrid|null|var||sCODE_TYPE|fn_SetSBGridCol|sCODE|input|false|left|sUSE_ORDER|sRPLC_CODE|put|sCODE_NAME|sCODE_DESC|sUSE_YN|fn_AjaxSend|searchPrjtID|sPRJT_ID|true|output|option|fn_SelectPrjtInfoDetail|center|fn_Init_CodeDetail|container|rebuild|ID|sRPLC_CODE_DTL|selectedRow|sUSE_YN_DTL|value|new|sCODE_DTL|PMS_PROC_INSERT|resultDataDetail|fn_SelectListInfoDetail|type|text|objColumnsInfoDetail|select|textarea|fn_Init_CodeType|codeDetailInfo|objGridInitInfoDetail|fn_SelectListInfo|onclick||addEventListener|createColumns|06|fn_SetDataSelectPrjtInfo||05|04|fn_SetDataSelectPrjtInfoDetail|AD050121|fn_Init|03|fn_SelectPrjtInfo|PMS_PROC_DELETE|02|sCODE_NAME_DTL|sCODE_DESC_DTL|sUSE_ORDER_DTL|01|if|00|Map|objColumnsInfo|createSBDataGrid|resultData|200px|codeTypeInfo|fn_InitSBGrid|objGridInitInfo|fn_InitGrid|getRow|AD050141|popupStyle|fn_DeletePrjtDetail|each|alert|PMS_RPLC_CODE|return|fn_ModifyPrjt|AD050112|yesNo_YN|Array|fn_InsertPrjt|for|fn_InitLoad|codeTypeSection|rows|empty|fn_DeletePrjt|append|35|fn_InsertPrjtDetail|codeSection|putMapList|sCODE_DETAIL|50|jsonParse|AD050122|AD050111|selected|sCODE_TYPE_DTL|fn_AddRow|addItem|else|insertItem|below|fn_DelRow||deleteItem|fn_SearchPrjtInfo|window|open|PU010101|jsp|label'.split('|'),0,{}))

</script>
</head>

<body onload="fn_Init();" oncontextmenu="return false">
<div id="wrap">

	<!-- START : include -->
	<div>
		<jsp:include page="../common/layout_header_admin.jsp" flush="true" />
	</div>

	<div id="container">

		<div id="leftWrap">
			<jsp:include page="../common/layout_left_ad.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
    			<!-- Form -->
    		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[AD05] 공통코드 관리</h2>
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
    		        <div id="codeTypeSection" class="section">
    		        	<h3>공통코드</h3>
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100">코드ID</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sCODE_TYPE" name="sCODE_TYPE" readOnly/>
    		                        </td>
    		                        <th class="w100">코드명</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" id="sCODE_NAME" name="sCODE_NAME"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">코드설명</th>
    		                        <td colspan="3">
										<input type="text" class="txtinp w700" name="sCODE_DESC" id="sCODE_DESC" />
                                    </td>
    		                    </tr>
    		                    <div id="hiddenCodeType">
    		                    	<input type="hidden" class="txtinp w100" name="sUSE_YN" id="sUSE_YN" />
	    		                    <input type="hidden" class="txtinp w100" name="sCODE" id="sCODE" />
	    		                    <input type="hidden" class="txtinp w100" name="sUSE_ORDER" id="sUSE_ORDER" />
	    		                    <input type="hidden" class="txtinp w100" name="sRPLC_CODE" id="sRPLC_CODE" />
    		                    </div>
    		                </tbody>
    		            </table>
    		        </div><!--//section-->
    		        <!-- END : input table section -->

					<!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_Init_CodeType();" class="btnimg02">초기화</a></li>
    		                <li><a href="javascript:fn_InsertPrjt();" class="btnimg03">저장</a></li>
    		            </ul>
    		        </div><!--//section-->
    		        <!-- END : button section -->

	    		    <!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="codeTypeInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
	    		    <br/>
	    		    <!-- START : input table section -->
    		        <div id="codeSection" class="section">
    		        	<h3>상세코드</h3>
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100">코드</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sCODE_DTL" name="sCODE_DTL" />
    		                        </td>
    		                        <th class="w100">코드명</th>
    		                        <td>
                                        <input type="text" class="txtinp w200" id="sCODE_NAME_DTL" name="sCODE_NAME_DTL"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">코드설명</th>
    		                        <td>
										<input type="text" class="txtinp w200" name="sCODE_DESC_DTL" id="sCODE_DESC_DTL" />
                                    </td>
                                    <th class="w100">사용여부</th>
    		                        <td>
										<select class="selectbox" id="sUSE_YN_DTL" name="sUSE_YN_DTL">
										</select>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">정렬순서</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sUSE_ORDER_DTL" name="sUSE_ORDER_DTL" />
    		                        </td>
    		                        <th class="w100">고정 ID</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" id="sRPLC_CODE_DTL" name="sRPLC_CODE_DTL" readOnly/>
                                    </td>
    		                    </tr>
    		                    <div id="hiddenCodeDetail">
	    		                    <input type="hidden" class="txtinp w100" name="sCODE_TYPE_DTL" id="sCODE_TYPE_DTL" />
    		                    </div>
    		                </tbody>
    		            </table>
    		        </div><!--//section-->
    		        <!-- END : input table section -->

					<!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_Init_CodeDetail();" class="btnimg02">초기화</a></li>
    		                <li><a href="javascript:fn_InsertPrjtDetail();" class="btnimg03">저장</a></li>
    		                <li><a href="javascript:fn_DeletePrjtDetail();" class="btnimg04">삭제</a></li>
    		            </ul>
    		        </div><!--//section-->
    		        <!-- END : button section -->

	    		    <!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="codeDetailInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
	    		    <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_ModifyPrjt();" class="btnimg03">저장</a></li>
    		            </ul>
    		        </div><!--//section-->
    		        <!-- END : button section -->
    		    
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
