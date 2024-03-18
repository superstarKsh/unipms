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
<script type="text/javascript" src="../editor/js/HuskyEZCreator.js"></script>

<script type="text/javascript">

function fn_Init() {
	$("#container input[type=text], #container select, #container textarea").val("");

	$("#searchPrjtID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");
	$("#searchPrjtNM").val("<%=(String) session.getAttribute("sPRJT_NM")%>");
	$("#sSEQ_NO").val(<%=(String) session.getAttribute("sSEARCH_BOARD_SEQ_NO")%>);
	$("#regUserID").val("<%=(String) session.getAttribute("sUSER_ID")%>");

	fn_InitLoad();
};

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('6 1q(){1b()};6 1b(){4 a={r:$("#q").1(),5:$("#5").1()};p(a,"1v",19,M)};6 19(c){t(c.G==M||c.G==\'1j\'){1i}4 d=c.G;$("#K").1(12(d.K));$("#9").1(d.9);$("#F").1(d.F);$("#A").1(d.A);$("#5").1(d.5);$("#v").1(d.v);4 e=d.9;t($("#o").1()==e){$("#n").1(d.n)}J{4 f=D.z("L");4 g="";g+="<l W=\'L\' T=\'3\'>";g+="<8 7=\'P\'>";g+=d.n;g+="</8>";g+="</l>";f.O=g}4 h=D.z("1m");4 i="";i+="<10 7=\'1p\' 1l=\'0\' 1n=\'0\' 1o=\'\'>";i+="<N>";$.1L(c.1g,6(a,b){i+="<B>";i+="<Q 7=\'R\' >"+b.F+" ("+b.9+")";t($("#o").1()==b.9){i+="<l S=\'2\'>";i+="<8 7=\'y\'>";i+="<m><U  7=\'1k\' W=\'V"+b.5+"\'\'>"+b.s+"</U></m>";i+="</8>";i+="<l>";i+="<8 7=\'y\'>";i+="<m><a X=\'Y:Z("+b.5+", "+b.u+");\' 7=\'1u\'>수정</a></m>";i+="</8>";i+="</l>"}J{i+="<l S=\'2\' T=\'2\'>";i+="<8 7=\'y\'>";i+="<m 7=\'P\'>"+b.s+"</m>";i+="</8>"}i+="</l>";i+="</B>";i+="<B>";i+="<Q 7=\'R\' >"+12(b.K)+" "+1y(b.1E);t($("#o").1()==b.9){i+="<l>";i+="<8 7=\'y\'>";i+="<m><a X=\'Y:11("+b.5+", "+b.u+");\' 7=\'1J\'>삭제</a></m>";i+="</8>";i+="</l>"}i+="</B>"});i+="</N>";i+="</10>";h.O=i;4 j=D.z("1f");4 k=D.z("1h");t($("#o").1()==e){j.C("w","x:13;");k.C("w","x:13;")}J{j.C("w","x:14;");k.C("w","x:14;")}};6 15(){16.17["n"].18("1r",[]);4 a={r:$("#q").1(),5:$("#5").1(),A:$("#A").1(),n:$("#n").1(),9:$("#o").1(),v:1s($("#v").1())};p(a,"1t",H,E)};6 1w(){4 a={r:$("#q").1(),5:$("#5").1()};p(a,"1x",H,1a)};6 1z(){1A("1B",15)};6 1C(){4 a={r:$("#q").1(),u:$("#5").1(),s:$("#s").1(),9:$("#o").1()};p(a,"1D",I,E)};6 Z(a,b){4 c="#V"+a;4 d={r:$("#q").1(),5:a,u:b,s:$(c).1(),9:$("#o").1()};p(d,"1F",I,E)};6 11(a,b){4 c={r:$("#q").1(),5:a,u:b};p(c,"1G",I,1a)};6 H(){1c.1H="1I.1d"};6 1K(a){4 b=\'<1e><1M 1N="../1O/1P/\'+a+\'"></1e>\';16.17["n"].18("1Q",[b])};6 1R(){1c.1S("1T.1d","",1U)};',62,119,'|val|||var|sSEQ_NO|function|class|ul|sREG_USER_ID||||||||||||td|li|sCONTENTS|regUserID|fn_AjaxSend|searchPrjtID|sPRJT_ID|sCOMMENTS|if|sBRD_SEQ_NO|sFILE_NM|style|display|tase|getElementById|sTITLE|tr|setAttribute|document|PMS_PROC_INSERT|sREG_USER_NM|bulltnBoard|fn_MoveToList|fn_Init|else|sREG_DT|trContents|null|tbody|innerHTML|cont|th|w150|rowspan|colspan|textarea|sCOMMENTS_|id|href|javascript|fn_UpdateComment|table|fn_DeleteComment|fn_SetDateType|block|none|fn_InsertPrjt|oEditors|getById|exec|fn_SetDataSelectPrjtInfo|PMS_PROC_DELETE|fn_SelectPrjtInfo|window|jsp|span|insertBtn|boardComment|deleteBtn|return|undefined|textarea03|border|tcomment|cellspacing|summary|table01|fn_InitLoad|UPDATE_CONTENTS_FIELD|fn_GetFileName|NT020121|btn02|NT020113|fn_DeletePrjt|NT020141|fn_SetTimeType|fn_InsertPrjtFile|fn_InsertUploadFile|NT02|fn_InsertComment|NT020123|sREG_TIME|NT020133|NT020143|location|NT020101|btn03|pasteHTML|each|img|src|editor|uploadImg|PASTE_HTML|fn_SearchPrjtInfo|open|PU010101|popupStyle'.split('|'),0,{}))

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
			<jsp:include page="../common/layout_left_nt.jsp" flush="true" />
		</div>
 		<div class="content">
    		<div class="cont">
    			<form name="contentsForm" enctype="multipart/form-data"  onsubmit="return false">
     		    <div class="fixbox">

					<!-- START : title -->
    		        <h2>[NT02] 자유게시판</h2>

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
    		        <div class="section">
    		            <table class="table01" border="0" cellspacing="0" summary="">
    		                <tbody>
    		                    <tr>
    		                        <th class="w100">등록일자</th>
    		                        <td>
    		                        	<input type="text" class="txtinp w100" id="sREG_DT" name="sREG_DT"/>
    		                        </td>
    		                        <th class="w100">등록자</th>
    		                        <td>
    		                        	<ul class="tase">
	    		                        	<li><input type="text" class="txtinp w100" id="sREG_USER_NM" name="sREG_USER_NM" readOnly/></li>
	    		                            <li><input type="text" class="txtinp w200" id="sREG_USER_ID" name="sREG_USER_ID" readOnly/></li>
										</ul>
    		                        </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">제목</th>
    		                        <td colspan="3">
                                        <input type="text" class="txtinp w700" id="sTITLE" name="sTITLE"/>
                                    </td>
    		                    </tr>
    		                    <tr>
    		                        <th class="w100">내용</th>
    		                        <td id="trContents" colspan="3">
                                        <textarea class="txtinp w700" id="sCONTENTS" name="sCONTENTS" style="height:300px; display: none;"></textarea>
                                        <script type="text/javascript">
													var oEditors = [];
													nhn.husky.EZCreator.createInIFrame({
													oAppRef: oEditors,
													elPlaceHolder: "sCONTENTS",
													sSkinURI: "../editor/SmartEditor2Skin.html",
													fCreator: "createSEditor2",
													htParams: {fOnBeforeUnload : function(){}}
													});
										</script>
									</td>
    		                    </tr>
    		                    <tr>
									<th>첨부파일</th>
									<td colspan="3">
										<div class="inputfile">
											<input type="text" class="txtinp w590" id="sFILE_NM" name="sFILE_NM" readOnly/>
											<p><input type="file" class="file_add" id="uploadFile" name="uploadFile"  onchange="document.getElementById('sFILE_NM').value=this.value.replace(/^C:\\fakepath\\/i, '');"/></p>
										</div>
									</td>
								</tr>
								<tr>
									<th>댓글</th>
									<td colspan="3">
										<ul class="tase">
                                            <li><textarea class="textarea01" id="sCOMMENTS" name="sCOMMENTS"></textarea></li>
                                        	<li><a href="javascript:fn_InsertComment();"><img src="../images/btn/btn_add.png" /></a></li>
                                        </ul>
									</td>
								</tr>
    		                </tbody>
    		            </table>
    		        </div><!--//section-->
    		        <!-- END : input table section -->
    		        
    		        <div class="section" id="tcomment" name="tcomment">
    		        </div><!--//section-->
    		        <!-- END : input table section -->     		        
    		        
    		        <!-- START : button section -->
    		        <div class="section" id="modifySection">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_MoveToList();" class="btnimg03">목록</a></li>
    		                <li id="insertBtn"><a href="javascript:fn_InsertPrjtFile();" class="btnimg03">저장</a></li>
    		                <li id="deleteBtn"><a href="javascript:fn_DeletePrjt();" class="btnimg04">삭제</a></li>
    		            </ul>
    		        </div><!--//section-->
    		        
    		    </div><!--//pixbox-->
    		    <div id="hiddenColumn"> 
					<input type="hidden" class="inputType" id="sSEQ_NO" name="sSEQ_NO"/>
					<input type="hidden" class="inputType" id="regUserID" name="regUserID"/>
					<input type="hidden" class="inputType" id="sBRD_SEQ_NO" name="sBRD_SEQ_NO"/>
				</div>
				</form>
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