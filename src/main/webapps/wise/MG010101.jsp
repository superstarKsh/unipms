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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('j D="";h 2p(){D="N";j a={u:$("#v").f(),o:"2"};r(a,"2o",1i,k)};h 1i(a){j b=a.13;$("#o").f("2");$("#n").f(b.n);18()};h 18(){j a="B 1b^상위 B 1b^B 명^B 2h^시작일자^종료일자^진행률(%)^B 설명^선행작업^산출물^메모^^";j b="25%,15%,2d%,10%,15%,15%,10%,20%,10%,10%,20%,10%";W=2a("27","e",a,b,"24","T",L,k);e=1s(W);17=[m("1U","p","n","w",k,q),m("1S","p","G","H",k,L),m("1P","p","J","w",k,q),m("1O","p","o","H",k,q),m("1N","1o","y","H","1r.U.V",q),m("1M","1o","t","H","1r.U.V",q),m("1L","p","z","1K",k,q),m("1J","p","A","w",k,q),m("1I","p","C","H",k,q),m("1H","p","E","w",k,L),m("10","p","F","w",k,q),m("11","1G","x","w",k,L)];e.1F(17);e.1E("1D","1c","","");1d()};h 1C(){1f.1B="1z.14"};h 1d(){j a={u:$("#v").f()};r(a,"1y",1k,k)};h 1k(a){T=a.13;D="N";e.1l();M()};h 1m(){s($("#o").f()==k||$("#o").f()==""){O(1X);I}S s($("#n").f()==k||$("#n").f()==""){O(1p);I}j a={u:$("#v").f(),o:$("#o").f(),n:$("#n").f(),G:$("#G").f(),J:$("#J").f(),y:$("#y").f(),t:$("#t").f(),z:$("#z").f(),A:$("#A").f(),C:$("#C").f(),E:$("#E").f(),F:$("#F").f(),x:1q($("#x").f())};r(a,"1t",K,R)};h 1u(){j a={u:$("#v").f(),n:$("#n").f()};r(a,"1v",K,1w)};h 1x(){j a=P 1h();j b=P 1A(e.Q-1);a.l("u",$("#v").f());1a(j i=1;i<e.Q;i++){j c=P 1h();s(e.g(i,0)==""){O(1p);I}c.l("n",e.g(i,0));c.l("G",e.g(i,1));c.l("J",e.g(i,2));c.l("o",e.g(i,3));c.l("y",e.g(i,4));c.l("t",e.g(i,5));c.l("z",e.g(i,6));c.l("A",e.g(i,7));c.l("C",e.g(i,8));c.l("E",e.g(i,9));c.l("F",e.g(i,10));c.l("x",e.g(i,11));b[i-1]=c}a.1Q("1R",b);j d=a.1T();s(D=="Y")r(d,"1V",K,R);S r(d,"1W",K,R)};h M(){e.16("1Y");1a(j i=1;i<e.Q;i++){e.1Z(i,e.g(i,0).21/2)}e.16("22")};h 1c(){j a=e.23();s(a<=0)I;$("#n").f(e.g(a,0));$("#G").f(e.g(a,1));$("#J").f(e.g(a,2));$("#o").f(e.g(a,3));$("#y").f(12(e.g(a,4)));$("#t").f(12(e.g(a,5)));$("#z").f(e.g(a,6));$("#A").f(e.g(a,7));$("#C").f(e.g(a,8));$("#E").f(e.g(a,9));$("#F").f(e.g(a,10));$("#x").f(e.g(a,11))};h 26(){Z("28",1m)};h 29(){s($("#X").f()==""){O(2b);I}Z("2c",1j)};h 1j(){j a={u:$("#v").f(),x:1q($("#X").f())};r(a,"2e",1g,k)};h 1g(a){T=a.2f;D="Y";e.1l()};h 2g(){s(e.1e(0)==\'-1\'){e.2i()}S{e.2j(e.1e(0),"2k")}M()};h 2l(){j a=e.2m();e.2n(a);M()};$(h(){$("#y").19(1n);$("#t").19(1n)});h 2q(){1f.2r("2s.14","",2t)};',62,154,'||||||||||||||objSBGrid|val|getTextMatrix|function||var|null|put|fn_SetSBGridCol|sTASK_ID|sTASK_LEVEL|input|false|fn_AjaxSend|if|sEND_DT|sPRJT_ID|searchPrjtID|left|sFILE_NM|sSTRT_DT|sPROGRESS_RT|sTASK_DESC|TASK|sBEFORE_TASK_ID|excelUploadYn|sOUTPUT_LIST|sMEMO|sUPPER_TASK_ID|center|return|sTASK_NM|fn_Init|true|fn_SetGridGroup||alert|new|rows|PMS_PROC_INSERT|else|resultData|mm|dd|objGridInitInfo|sUPLOAD_FILE||fn_InsertUploadFile|||fn_SetDateType|taskInfo|jsp||setGroup|objColumnsInfo|fn_InitGrid|datepicker|for|ID|fn_SelectListInfo|fn_SelectPrjtInfo|selectedRow|window|fn_SetDataExcelDataLoad|Map|fn_SetDataInitLoad|fn_ExcelDataLoad|fn_SetDataSelectPrjtInfo|rebuild|fn_InsertPrjt|setCalendar|inputdate|INSERT_TASK_ID|fn_GetFileName|yyyy|createSBDataGrid|MG010121|fn_DeletePrjt|MG010141|PMS_PROC_DELETE|fn_ModifyPrjt|MG010111|MG010101|Array|location|fn_Init_Clear|onclick|addEventListener|createColumns|output|09|08|07|right|06|05|04|03|02|putMapList|sPRJT_TASK_INFO|01|jsonParse|00|MG010122A|MG010122|INSERT_TASK_LEVEL|none|setGroupLevel||length|complete|getRow|400px||fn_InsertPrjtFile|prjtTaskInfo|MG01IN|fn_InsertOutputFile|fn_InitSBGrid|SELECT_MODIFY_FILE|MG01OUT|30|MG010153|mg010101ovo_excel|fn_AddRow|LEVEL|addItem|insertItem|below|fn_DelRow|getClickedRow|deleteItem|MG010102|fn_InitLoad|fn_SearchPrjtInfo|open|PU010101|popupStyle'.split('|'),0,{}))

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
			<jsp:include page="../common/layout_left_mg.jsp" flush="true" />
		</div>
	   	<div class="content">
    		<div class="cont">
    			<!-- Form -->
    			<form name="contentsForm" enctype="multipart/form-data"  onsubmit="return false">
	    		    <div class="fixbox">

						<!-- START : title -->
	    		        <h2>[MG01] 사업관리 등록</h2>
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
	                    
					<!-- START : input table section -->
						<br/>
	    		        <div class="section">
	    		            <table class="table01" border="0" cellspacing="0" summary="">

	    		                <tbody>
		    		                <tr>
										<th class="w100"><pk>*</pk> TASK LEVEL</th>
										<td >
											<input type="text" class="txtinp w100" id="sTASK_LEVEL" name="sTASK_LEVEL" /> 
										</td>
										<th class="w100"><pk>*</pk> TASK ID</th>
										<td >
											<input type="text" class="txtinp w100" id="sTASK_ID" name="sTASK_ID"/> 
										</td>
									</tr>
		    		                <tr>
		    		                	<!--
										<th class="w100"><pk>*</pk> 상위 TASK ID</th>
										<td >
											<input type="text" class="txtinp w100" id="sUPPER_TASK_ID" name="sUPPER_TASK_ID" /> 
										</td>
										-->
										<th class="w100">TASK 명</th>
										<td colspan="3">
											<input type="text" class="txtinp w600" id="sTASK_NM" name="sTASK_NM"/> 
										</td>
									</tr>
		    		                <tr>
										<th class="w100">TASK 설명</th>
										<td colspan="3">
											<input type="text" class="txtinp w600" id="sTASK_DESC" name="sTASK_DESC"/> 
										</td>
									</tr>
		    		                <tr>
										<th class="w100">시작일자</th>
										<td >
											<input type="text" class="txtinp w100" id="sSTRT_DT" name="sSTRT_DT" /> 
										</td>
										<th class="w100">종료일자</th>
										<td >
											<input type="text" class="txtinp w100" id="sEND_DT" name="sEND_DT"/> 
										</td>
									</tr>
		    		                <tr>
		    		                	<th class="w100">선행작업</th>
										<td >
											<input type="text" class="txtinp w100" id="sBEFORE_TASK_ID" name="sBEFORE_TASK_ID"/> 
										</td>
										<th class="w100">진행률</th>
										<td >
											<input type="text" class="txtinp w100" id="sPROGRESS_RT" name="sPROGRESS_RT" /> % 
										</td>
									</tr>
									<tr>
										<th class="w100">메모</th>
										<td colspan="3">
											<input type="text" class="txtinp w600" id="sMEMO" name="sMEMO"/> 
										</td>									
									</tr>
									<tr>
										<th class="w100">첨부파일</th>
										<td colspan="3">
											<div class="inputfile">
												<input type="text" class="txtinp w590" id="sFILE_NM" name="sFILE_NM" readOnly/>
												<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sFILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>  					
											</div>
										</td>
									</tr>
					 			</tbody>
	    		            </table>
	    		        </div><!--//section-->

    		        <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
    		                <li><a href="javascript:fn_InsertPrjtFile();" class="btnimg03">저장</a></li>
    		                <li><a href="javascript:fn_DeletePrjt();" class="btnimg04">삭제</a></li>
    		            </ul>
    		        </div>
    		        <!-- END : button section -->

	   		        <!--//section-->
	   		        <div class="section">
	   		            <ul class="btnbox_top right">
	   		                <li><a href="javascript:fn_AddRow();" class="btn02">행추가</a></li>
	   		                <li><a href="javascript:fn_DelRow();" class="btn03">행삭제</a></li>
	   		            </ul>
	   		        </div><!--//section-->
	   		        <!-- END : button section -->

					<!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtTaskInfo">
						</div>
	    		    </div>


	    		    <div class="section">
						<table class="table01" border="0" cellspacing="0" summary="">
							<tr>
								<td>
									<div class="inputfileR">
										<input type="text" class="txtinp w470" id="sUPLOAD_FILE" name="sUPLOAD_FILE" readOnly/>
										<p><input type="file" class="file_add" id="uploadWbsFile" name="uploadWbsFile"  onchange="document.getElementById('sUPLOAD_FILE').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>  					
									</div>
								</td>
								<td>
									<ul class="tase right">
										<li><a href="javascript:fn_InsertOutputFile()" class="btn01">양식Upload</a></li>
									</ul>
								</td>
							</tr>
						</table>     					
					</div>
					
    		        <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_Init_Clear();" class="btnimg02">초기화</a></li>
    		                <li><a href="javascript:fn_ModifyPrjt();" class="btnimg03">저장</a></li>
    		            </ul>
    		        </div>
    		        <!-- END : button section -->
	    		    </div>
	    		</form>
	    	</div>
	    </div>

	    <div id="hiddenColumn">
		</div>
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