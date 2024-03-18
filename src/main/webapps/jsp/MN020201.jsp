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


};


</script>
</head>

<body onload="fn_Init();" oncontextmenu="return false">

<div id="wraphome">

	<!-- START : include -->
	<div>
		<jsp:include page="../common/layout_header_prjt_home.jsp" flush="true" />
	</div>
	<!-- END : include -->

	<div id="containerhome">
 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">
					<br/>
	     		    
					

				</div><!--//pixbox-->
	    		<div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sPRJT_ID" name="sPRJT_ID"/>
				</div>	
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