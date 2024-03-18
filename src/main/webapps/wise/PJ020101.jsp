<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('9 n=[];9 q=[];e 1C(){9 a={s:$("#r").t()};u(a,"1n",O,h)};e O(a){n=a.n;F=a.F;q=a.1A;N()};e N(){9 a="*1j^*이름^*이름^직급^역할^시작일자^종료일자^팀^";9 b="15%,12%,3%,10%,15%,15%,15%,15%,10%";y=1G("1I","8",a,b,"1l","H",J,h);8=1r(y);M=[g("1y","m","P","f",h,j),g("17","m","18","f",h,j),g("1a","1e","","f",h,j),g("1f","m","1h","f",h,j),g("1i","S","X","f",["n","w","x"],j),g("1o","Z","z","f","A.B.C",j),g("1B","Z","D","f","A.B.C",j),g("1E","S","E","f",["q","w","x"],j),g("1R","m","11","f",h,J)];8.13(M);8.14("16","G","","");o()};e o(){9 a={s:$("#r").t()};u(a,"19",I,h)};e I(a){H=a.1b;8.1c()};e 1d(){9 a=p K();9 b=p 1g(8.L-1);a.k("s",$("#r").t());1k(9 i=1;i<8.L;i++){9 c=p K();c.k("P",8.l(i,0));c.k("X",8.l(i,4));c.k("z",8.l(i,5));c.k("D",8.l(i,6));c.k("E",8.l(i,7));b[i-1]=c}a.1p("1q",b);9 d=a.1s();u(d,"1t",o,1u)};e G(){9 a=8.1v();9 b=8.1w();R(b==2){9 c="1x.T?1z="+a;U.V(c,"",W)}};e 1D(){R(8.v(0)==\'-1\'){8.1F();8.Y(8.1H()-1,2,Q)}1J{8.1K(8.v(0),"1L");8.Y(8.v(0),2,Q)}};e 1M(){9 a=8.1N();8.1O(a)};e 1P(){o()};e 1Q(){U.V("1m.T","",W)};',62,116,'||||||||objSBGrid|var|||||function|center|fn_SetSBGridCol|null||false|put|getTextMatrix|output|prjtRoll|fn_SelectPrjtInfo|new|prjtTeam|searchPrjtID|sPRJT_ID|val|fn_AjaxSend|selectedRow|sCODE_NM|sCODE|objGridInitInfo|sSTRT_DT|yyyy|mm|dd|sEND_DT|sPRJT_SUB_PART_ID|prjtPstn|fn_SelectListInfo|resultData|fn_SetDataSelectPrjtInfo|true|Map|rows|objColumnsInfo|fn_InitGrid|fn_SetDataInitLoad|sUSER_ID|PMS_SEARCH_IMAGE|if|combo|jsp|window|open|popupStyle|sPRJT_ROLE|setTextMatrix|inputdate||sUSER_PSTN||createColumns|addEventListener||onclick|01|sUSER_NM|PJ020111|02|prjtTeamInfo|rebuild|fn_ModifyPrjt|imageS|03|Array|sUSER_PSTN_NM|04|ID|for|450px|PU010101|PJ020101|05|putMapList|sPART_USER|createSBDataGrid|jsonParse|PJ020122|PMS_PROC_INSERT|getRow|getCol|PU010111|00|nSelRow|teamInfo|06|fn_InitLoad|fn_AddRow|07|addItem|fn_InitSBGrid|getRows|prjtPartInfo|else|insertItem|below|fn_DelRow|getClickedRow|deleteItem|fn_ChangeVal|fn_SearchPrjtInfo|08'.split('|'),0,{}))

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
			<jsp:include page="../common/layout_left_pj.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[PJ02] 프로젝트인력관리</h2>
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

					<!-- START : input table section -->
    		        <!-- div class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w120"><pk>*</pk> 프로젝트 팀(Part)</th>
    		                        <td colspan="3">
                                        <select class="selectbox" onChange="javascript:fn_ChangeVal();" name="selectbox" id="sPRJT_SUB_PART_ID" name="sPRJT_SUB_PART_ID">
										</select>
                                    </td>
    		                    </tr>
    		                </tbody>
    		            </table>
    		        </div--><!--//section-->
    		        <!-- END : input table section -->

					<!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox_top right">
    		                <li><a href="javascript:fn_AddRow();" class="btn02">행추가</a></li>
    		                <li><a href="javascript:fn_DelRow();" class="btn03">행 삭제</a></li>
    		            </ul>
    		        </div><!--//section-->
    		        
    		        <!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtPartInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
	    		    
	    		    <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_ModifyPrjt();" class="btnimg03">저장</a></li>
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