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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('6 G(){h()};6 h(){8 a="*S^이름^직급^역할^시작일자^종료일자^팀^ ^담당업무^참여율(%)^투입J^사번^";8 b="15%,12%,10%,10%,12%,12%,15%,15%,10%,10%,10%,10%,10%";p=1c("1f","7",a,b,"O","k",c,1);7=1e(p);u=[4("M","3","Q","2",1,5),4("T","3","U","2",1,5),4("V","3","X","2",1,5),4("16","3","18","2",1,5),4("19","3","1a","2","v.x.i",5),4("y","3","z","2","v.x.i",5),4("A","3","B","2",1,c),4("C","3","D","2",1,c),4("E","3","F","2",1,5),4("1u","3","H","2",1,5),4("10","3","I","2",1,5),4("11","3","K","2",1,5)];7.L(u);7.j("N","d","","");7.j("P","l","","");m()};6 m(){8 a={n:$("#o").9()};q(a,"W",r,1)};6 r(a){k=a.Y;7.Z()};6 13(){8 a={n:$("#o").9()};q(a,"14",s,1)};6 s(a){8 b=a.17;e(b==1){$("#f").9("");g}$("#f").9(b.f)};6 d(){8 a=7.1b();e(a<=0)g;8 b=7.1d(a,11);w.t("1g://1h.1i.1j.1k/1l/1m.1n?1o="+b,"",1p)};6 l(){8 a=7.1q();e(a!=0)g;d()};6 1r(){w.t("1s.1t","",R)};',62,93,'|null|center|output|fn_SetSBGridCol|false|function|objSBGrid|var|val|||true|fn_SelectListInfo|if|sOUTSRC_DSCR|return|fn_InitGrid|dd|addEventListener|resultData|fn_SelectListInfoMobile|fn_SelectPrjtInfo|sPRJT_ID|searchPrjtID|objGridInitInfo|fn_AjaxSend|fn_SetDataSelectPrjtInfo|fn_SetDataSelectPrjtInfoDetail|open|objColumnsInfo|yyyy|window|mm|05|sEND_DT|06|sPRJT_SUB_PART_ID|07|sUSER_PSTN|08|sPRJT_TASK|fn_InitLoad|sPROC_RATIO|sPROC_MM|MM|sUSER_NO|createColumns|00|ondblclick|350px|onclick|sUSER_ID|popupStyle|ID|01|sUSER_NM|02|PJ020111|sUSER_PSTN_NM|prjtTeamInfo|rebuild||||fn_SelectPrjtInfoDetail|WSPJ020113||03|outDscr|sPRJT_ROLE_NM|04|sSTRT_DT|getRow|fn_InitSBGrid|getTextMatrix|createSBDataGrid|prjtPartInfo|http|km|wise|co|kr|WiseIntranet|selectMemberPopAction|action|EMPID|userPopupStyle|getCol|fn_SearchPrjtInfo|PU010101|jsp|09'.split('|'),0,{}))

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
			<jsp:include page="../common/layout_left_wspj.jsp" flush="true" />
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

    		        <!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtPartInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
    		        
    		        <div class="section">
    		        	<table class="table01" border="0" cellspacing="0" summary="">
							<tr>
								<th class="w100">외주현황</th>
								<td colspan="3">
									<textarea class="txtinp w700" cols="100" rows="10" name="sOUTSRC_DSCR" id="sOUTSRC_DSCR" ></textarea>
								</td>
							</tr>
    		        	</table>
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