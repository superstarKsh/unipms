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

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('3 t(){$("#7 r[o=u], #7 k, #7 w").d("");h()};3 h(){8 a="v^협력사명^사업자번호^전화번호^팩스번호";8 b="m%,q%,9%,9%,9%";c=K("O","5",a,b,"l","e",n,0);5=p(c);f=[2("s","1","g","6",0,4),2("x","1","y","z",0,4),2("A","1","B","6","C-D-E",4),2("F","1","G","6",0,4),2("H","1","I","6",0,4)];5.J(f);i()};3 i(){8 a={g:$("#L").d()};M(a,"N",j,0)};3 j(a){e=a.P;5.Q()};3 R(a){S.T("U.V","",W)};',59,59,'null|output|fn_SetSBGridCol|function|false|objSBGrid|center|container|var|20|||objGridInitInfo|val|resultData|objColumnsInfo|sCOOP_ID|fn_InitGrid|fn_SelectPrjtInfo|fn_SetDataSelectPrjtInfo|select|500px|10|true|type|createSBDataGrid|30|input|00|fn_Init|text|ID|textarea|01|sCOOP_NM|left|02|sCOOP_REG_NUM|99|999|99999|03|sPHONE_NUM|04|sFAX_NUM|createColumns|fn_InitSBGrid|searchCoopID|fn_AjaxSend|AD030111|corpInfo|coopInfo|rebuild|fn_SearchCoop|window|open|PU010121|jsp|popupStyle'.split('|'),0,{}))

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
    		        <h2>[PJ03] 협력사정보조회</h2>
    		        <!-- END : title -->

					<!-- START : search section -->
    		        <div class="section">
    		            <div class="search">
    		                <div class="box">
    		                    <ul>
    		                        <li class="name"><span>협력사</span></li>
    		                        <li><input type="text" class="txtinp w100" id="searchCoopID" name="searchCoopID" readOnly/></li>
    		                        <li><input type="text" class="txtinp w200" id="searchCoopNM" name="searchCoopNM" readOnly/></li>
    		                        <li><a href="javascript:fn_SearchCoop();" class="btn01">검색</a></li>
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
	    		        <div id="corpInfo">
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