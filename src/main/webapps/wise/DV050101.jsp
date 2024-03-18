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

var prjtStage = [];

function fn_Init() {
	$("#container input[type=text], #container select, #container textarea").val("");

	$("#searchPrjtID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");
	$("#searchPrjtNM").val("<%=(String) session.getAttribute("sPRJT_NM")%>");
	$("#sTEST_STAGE").val("<%=(String) session.getAttribute("sTEST_STAGE")%>");

	fn_InitLoad();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('m 1B(){l a={x:$("#v").9()};y(a,"11",1m,o)};m 1m(c){P=c.P;l d=\'<q N="">선 택</q>\';$.1s(c.P,m(a,b){d=d+\'<q N="\'+b.19+\'">\'+b.1b+\'</q>\';$("#n").W().1u(d)});1v()};m 1v(){l a="*진행단계^13 Q^13 Q^*산출물Q^산출물명^첨부파일^비고^파일명";l b="10%,10%,3%,10%,2N%,10%,2I%,10%,10%";1k=2w("2u","8",a,b,"2r","V",J,o);8=2l(1k);12=[w("2b","2a","n","C",["P","1b","19"],u),w("29","1d","r","C",o,u),w("28","27","","C",o,u),w("26","L","t","C",o,u),w("25","L","G","Z",o,u),w("24","23","22","C",o,u),w("20","L","I","Z",o,u),w("1Z","1d","D","C",o,J)];8.1X(12);8.1W("1R","18","","");F()};m 1O(){E.1M="11.R"};m S(){$("#T L[1J=1I], #T U, #T 1H").9("");1j()};m 1j(){s(1G==1){O.1n("1o").U();O.1p.1q();O.1n("1r").U();O.1p.1q()}Y{$("#1o").9("");$("#1r").9("")}};m 1t(){l a={x:$("#v").9(),n:$("#n q:A").9(),r:$("#r q:A").9()};y(a,"1C",15,o)};m 15(a){l b=a.1w;$("#t").9(b.t)};m 1x(a){$("#r").W();l b={x:$("#v").9(),n:$("#n").9()};2g(b,"1A",1y,o,a,o,o)};m 1y(c,d,e,f){l g=\'<q N="">선 택</q>\';$.1s(c.1D,m(a,b){g=g+\'<q N="\'+b.r+\'">\'+b.1E+\'</q>\';$("#r").W().1u(g)});s(d==""){1t()}Y{$("#r").9(d)}};m F(){S();l a={x:$("#v").9(),n:$("#n q:A").9()};y(a,"1F",1l,o)};m 1l(a){V=a.1w;8.M(1,u);8.M(2,u);8.1f()};m 1K(){S();l a={x:$("#v").9()};y(a,"1L",1c,o)};m 1c(a){V=a.1N;8.M(1,J);8.M(2,J);8.1f()};m 1a(){l a={x:$("#v").9(),n:$("#n q:A").9(),r:$("#r q:A").9(),t:$("#t").9(),G:$("#G").9(),D:1P($("#D").9()),I:$("#I").9()};y(a,"1Q",F,17)};m 1S(){l a={x:$("#v").9(),n:$("#n q:A").9(),r:$("#r q:A").9(),t:$("#t").9()};y(a,"1T",F,1U)};m 1V(){l a=X 16();l b=X 1Y(8.14-1);a.z("x",$("#v").9());21(l i=1;i<8.14;i++){s(8.p(i,0)==""){K(1i);B}s(8.p(i,3)==""){K(1g);B}l c=X 16();c.z("n",8.p(i,0));c.z("r",8.p(i,1));c.z("t",8.p(i,3));c.z("G",8.p(i,4));c.z("I",8.p(i,6));c.z("D",8.p(i,7));b[i-1]=c}a.2c("2d",b);l d=a.2e();y(d,"2f",F,17)};m 18(){l a=8.1z();l b=8.2h();s(a<=0)B;$("#n").9(8.p(a,0));l c=8.p(a,1);$("#t").9(8.p(a,3));$("#G").9(8.p(a,4));$("#I").9(8.p(a,6));$("#D").9(8.p(a,7));s(b==5){l d=8.p(a,7);s(d=="")B;2i(d)}l e=8.2j;l f=8.2k;l g=(8.p(a,0));l h="2m.R?2n="+f+"&11=2o&n="+g;l i=E.2p+2q;l j=E.2s+2t;l k="2v=H,2x=H,2y=2z,2A=H,2B=H,2C=H,2D=2E,2F=2G,2H="+j+",Z="+i;s(e==2){E.1h(h,"",k)}1x(c)};m 2J(){s($("#n").9()==o||$("#n").9()==""){K(1i);B}s($("#t").9()==o||$("#t").9()==""){K(1g);B}2K("2L",1a)};m 2M(){s(8.1e(0)==\'-1\'){8.2O()}Y{8.2P(8.1e(0),"2Q")}};m 2R(){l a=8.2S();8.2T(a)};m 2U(){E.1h("2V.R","",2W)};',62,183,'||||||||objSBGrid|val||||||||||||var|function|sPRJT_STAGE|null|getTextMatrix|option|sTASK_ID|if|sOUTPUT_ID|false|searchPrjtID|fn_SetSBGridCol|sPRJT_ID|fn_AjaxSend|put|selected|return|center|sDEF_FILE_NM|window|fn_SelectPrjtInfo|sOUTPUT_NM|no|sOUTPUT_DESC|true|alert|input|setColHidden|value|document|prjtStage|ID|jsp|fn_Init_Data|section|select|resultData|empty|new|else|left||DV050101|objColumnsInfo|TASK|rows|fn_SetDataSelectInitID|Map|PMS_PROC_INSERT|fn_SelectListInfo|sCODE|fn_InsertPrjt|sCODE_NM|fn_SetDataSelectPrjtInitInfo|output|selectedRow|rebuild|SELECT_OUTPUT_ID|open|SELECT_PRJT_STAGE|fn_File_Clear|objGridInitInfo|fn_SetDataSelectPrjtInfo|fn_SetDataInitLoad|getElementById|uploadFile|selection|clear|uploadWbsFile|each|fn_SelectInitID|append|fn_InitGrid|outputInfo|fn_SelectInitTask|fn_SetDataSelectInitTask|getRow|DV050181|fn_InitLoad|DV050102|prjTaskInfo|sTASK_NM|DV050111|brswType|textarea|text|type|fn_SelectPrjtInitInfo|DV050114|location|outputPoolInfo|fn_Init_Clear|fn_GetFileName|DV050121|onclick|fn_DeletePrjt|DV050141|PMS_PROC_DELETE|fn_ModifyPrjt|addEventListener|createColumns|Array|07|06|for|sDEF_IMG_URL|imageF|05|04|03|imageS|02|01|combo|00|putMapList|sPRJT_OUTPUT|jsonParse|DV050122|fn_AjaxSendParam|getCol|fn_DownloadFile|col|row|createSBDataGrid|PU010131|nSelRow|sTASK_INFO|screenX|150|400px|screenY|100|prjtOutputInfo|toolbar|fn_InitSBGrid|directories|scrollbars|yes|resizable|status|menubar|width|520|height|700|top|40|fn_InsertPrjtFile|fn_InsertUploadFile|DV05|fn_AddRow|30|addItem|insertItem|below|fn_DelRow|getClickedRow|deleteItem|fn_SearchPrjtInfo|PU010101|popupStyle'.split('|'),0,{}))

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
    		        <h2>[DV05] 산출물정의</h2>
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
    		        <!-- START : input table section -->
    		        <div id="section" class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100"><pk>*</pk> 진행단계</th>
    		                        <td>
    		                        	<select class="selectbox" id="sPRJT_STAGE" name="sPRJT_STAGE" onChange="javascript:fn_SelectInitTask('');">
										</select>
    		                        </td>
    		                        <th class="w100"><pk>*</pk> 산출물 ID</th>
    		                        <td>
                                        <input type="text" class="txtinp w100" id="sOUTPUT_ID" name="sOUTPUT_ID" />
                                    </td>
    		                    </tr>
    		                    <tr>
	    		                    <th class="w150">TASK ID</th>
	    		                    <td colspan="3">
	    		                       <select class="selectbox wp100" name="selectbox" id="sTASK_ID" name="sTASK_ID">
										</select>
	    		                    </td>
	    		                </tr>
    		                    <tr>
    		                        <th class="w100">산출물명</th>
    		                        <td colspan="3">
										<input type="text" class="txtinp w700" name="sOUTPUT_NM" id="sOUTPUT_NM" />
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">비고</th>
    		                        <td colspan="3">
										<textarea class="txtinp w700" cols="100" rows="5" name="sOUTPUT_DESC" id="sOUTPUT_DESC" ></textarea>
                                    </td>
    		                    </tr>
    		                    <tr>
									<th>첨부파일</th>
									<td colspan="3">
										<div class="inputfile">
											<input type="text" class="txtinp w590" id="sDEF_FILE_NM" name="sDEF_FILE_NM" readOnly/>
											<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sDEF_FILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>
										</div>
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
    		                <li><a href="javascript:fn_InsertPrjtFile();" class="btnimg03">저장</a></li>
    		                <li><a href="javascript:fn_DeletePrjt();" class="btnimg04">삭제</a></li>
    		            </ul>
    		        </div><!--//section-->
    		        <!-- END : button section -->
    		        <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox_top right">
    		                <li><a href="javascript:fn_SelectPrjtInitInfo();" class="btn01">산출물 POOL 조회</a></li>
    		                <li><a href="javascript:fn_SelectPrjtInfo();" class="btn01">산출물 목록 조회</a></li>
    		                <li><a href="javascript:fn_AddRow();" class="btn02">행추가</a></li>
    		                <li><a href="javascript:fn_DelRow();" class="btn03">행 삭제</a></li>
    		            </ul>
    		        </div><!--//section-->
    		        <!-- END : button section -->

	    		    <!-- START : grid section -->
	    		    <div class="section">
	    		        <div id="prjtOutputInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
	    		    <!-- START : button section -->
    		        <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_ModifyPrjt();" class="btnimg03">저장</a></li>
    		            </ul>
    		        </div>
				</div><!--//pixbox-->
				<div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sTEST_STAGE" name="sTEST_STAGE"/>
				</div>
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