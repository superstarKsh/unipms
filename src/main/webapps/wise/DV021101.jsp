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
	$("#sCURR_STAGE").val("<%=(String) session.getAttribute("sCURR_STAGE")%>");
	
	fn_InitLoad();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('f 2l(){g a={A:$("#E").h()};u(a,"11",1d,j)};f 1d(c){g d=\'<r F="">선 택</r>\';$.1u(c.1S,f(a,b){d=d+\'<r F="\'+b.1X+\'">\'+b.1p+\'</r>\';$("#p").1v().1z(d)});$("#p").h($("#1K").h());U()};f U(){g a="1T C^13 C^2e 13 C^명칭^업무내용^담당자^담당자^시작일자^종료일자^범위확정^";g b="10%,10%,10%,1q%,25%,10%,3%,12%,12%,10%";L=1D("1E","e",a,b,"1N","G",V,j);e=1U(L);Y=[k("20","H","1b","o",j,m),k("1t","s","1g","o",j,m),k("1w","s","1h","o",j,m),k("1B","s","1k","I",j,m),k("1G","s","J","I",j,m),k("1L","H","K","o",j,m),k("1O","1P","","o",j,m),k("1R","1n","M","o","N.O.P",m),k("1Y","1n","Q","o","N.O.P",m),k("21","22","R","o",["2f","2h","F"],m),k("10","H","2k","o",j,V)];e.2u(Y);e.2o("1o","S","","");v()};f 1r(){w.1s="11.x"};f W(){X()};f X(){$("#y s[1x=1y], #y Z, #y 1A").h("");q(1C==1){14.1F("15").Z();14.1H.1I()}1J{$("#15").h("")}};f v(){W();g a={A:$("#E").h(),16:$("#p r:17").h()};u(a,"1M",18,j)};f 18(a){G=a.19;e.1a()};f 1Q(){q($("#p").h()==j||$("#p").h()==""){B(1c);t}g a=D 1e();g b=D 1W(e.1f-1);a.l("A",$("#E").h());a.l("16",$("#p r:17").h());1Z(g i=1;i<e.1f;i++){g c=D 1e();c.l("1b",e.n(i,0));c.l("1g",e.n(i,1));c.l("1h",e.n(i,2));c.l("1k",e.n(i,3));c.l("J",e.n(i,4));c.l("K",e.n(i,5));c.l("M",e.n(i,7));c.l("Q",e.n(i,8));c.l("R",e.n(i,9));b[i-1]=c}a.23("24",b);g d=a.26();u(d,"27",v,28)};f S(){g a=e.29();q(a<=0)t;g b=e.2a;g c=e.2b;g d="2c.x?2d="+b;q(c==6){w.1i(d,"",1j)}};f 2g(){q($("#p").h()==j||$("#p").h()==""){B(1c);t}q($("#z").h()==""){B(2i);t}2j("1l",1m)};f 1m(){g a={z:2m($("#z").h())};u(a,"2n",T,j)};f T(a){G=a.19;e.1a()};f 2p(){g a="2q.2r";2s("1l",a)};f 2t(){w.1i("1V.x","",1j)};',62,155,'||||||||||||||objSBGrid|function|var|val||null|fn_SetSBGridCol|put|false|getTextMatrix|center|searchPrjtStage|if|option|input|return|fn_AjaxSend|fn_SelectPrjtInfo|window|jsp|fileSection|sFILE_NM|sPRJT_ID|alert|ID|new|searchPrjtID|value|resultData|output|left|sTASK_DESC|sCORP_MNG_NM|objGridInitInfo|sSTRT_DT|yyyy|mm|dd|sEND_DT|sDEF_YN|fn_SelectListInfo|fn_SetDataExcelDataLoad|fn_InitGrid|true|fn_Init_Data|fn_File_Clear|objColumnsInfo|select||DV021101||SEG|document|uploadFile|sPRJT_STAGE|selected|fn_SetDataSelectPrjtInfo|taskInfo|rebuild|sTASK_ID|SELECT_PRJT_STAGE|fn_SetDataInitLoad|Map|rows|sSEG_ID|sSEG_SUB_ID|open|popupStyle|sTASK_NM|DV0211|fn_ExcelDataLoad|inputdate|onclick|sCODE_NM|30|fn_Init_Clear|location|01|each|empty|02|type|text|append|textarea|03|brswType|fn_InitSBGrid|prjtTaskInfoDetail|getElementById|04|selection|clear|else|sCURR_STAGE|05|DV021111|400px|06|imageS|fn_ModifyPrjtTaskInfo|07|prjtStage|TASK|createSBDataGrid|PU010101|Array|sCODE|08|for|00|09|combo|putMapList|sPRJT_TASK_INFO||jsonParse|DV021122|PMS_PROC_INSERT|getRow|row|col|PU010112|nSelRow|SUB|yesNo|fn_InsertPrjtFile|label|SELECT_MODIFY_FILE|fn_InsertUploadFile|sCORP_MNG_ID|fn_InitLoad|fn_GetFileName|DV021153|addEventListener|fn_FileDownLoad|uni_pms_mass_enrollment|xls|fn_DownloadFile|fn_SearchPrjtInfo|createColumns'.split('|'),0,{}))

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
			<jsp:include page="../common/layout_left_dv.jsp" flush="true" />
		</div>
	   	<div class="content">
    		<div class="cont">
    			<!-- Form -->
    			<form name="contentsForm" enctype="multipart/form-data"  onsubmit="return false">
	    		    <div class="fixbox">
						<!-- START : title -->
	    		        <h2>[DV02] TASK 일괄 등록</h2>
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
	    		                    <ul>
	    		                        <li class="name"><span>진행단계</span></li>
	    		                    	<li><select class="selectbox" id="searchPrjtStage" name="searchPrjtStage" ></select></li>
	    		                    </ul>
	    		                </div>
	    		            </div><!--//search-->
	    		        </div><!--//section-->
	    		        
	    		        <div class="section">
	                        <ul class="btnbox right">
	                        	<li class="pr10"><a href="javascript:fn_SelectPrjtInfo();" class="btn_search imgbtn_black">조회</a></li>
	                     	</ul>
	                    </div>
	
						<!-- START : grid section -->
		    		    <div class="section">
		    		        <div id="prjtTaskInfoDetail">
							</div>
		    		    </div>
		    		    
		    		    <div id="fileSection" class="section">
							<table class="table01" border="0" cellspacing="0" summary="">
								<tr>
									<th>일괄등록</th>
									<td>
										<div class="inputfileMR">
											<input type="text" class="txtinp w400" id="sFILE_NM" name="sFILE_NM" readOnly/>
											<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sFILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>  					
										</div>
									</td>
									<td>
										<ul class="tase right">
											<li><a href="javascript:fn_FileDownLoad()" class="btn01">양식 Download</a></li>
											<li><a href="javascript:fn_InsertPrjtFile()" class="btn01">양식Upload</a></li>
										</ul>
									</td>
								</tr>
							</table>
						</div>
	
	    		        <!-- START : button section -->
	    		        <div class="section">
	    		            <ul class="btnbox right">
	    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
	    		                <li><a href="javascript:fn_ModifyPrjtTaskInfo();" class="btnimg03">저장</a></li>
	    		            </ul>
	    		        </div>
	    		        <!-- END : button section -->
		    		    <div id="hiddenColumn">
							<input type="hidden" class="inputType" id="sCURR_STAGE" name="sCURR_STAGE"/>
						</div>
					</div><!--//pixbox-->
				</form>
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