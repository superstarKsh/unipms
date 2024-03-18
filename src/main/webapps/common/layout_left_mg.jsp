<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
</head>
<body>
	<div class="nav">
		<h1>프로젝트관리</h1>
		<ul>
			<li id="displayUni"></li>
		</ul>
	</div>
</body>

<script type="text/javascript">
	var domainPath=location.href.substring(offsetUniPath + 1,location.href.indexOf('/',offsetUniPath+1));
	if(domainPath == "wise")
	    document.getElementById('displayUni').innerHTML = "";
	else
		document.getElementById('displayUni').innerHTML = "<li><a href='MG110101.jsp'>사업관리(ACTIVITY)</a></li>"
																 + "<li><a href='MG120101.jsp'>사업관리(TASK)</a></li>"
																 + "<li><a href='MG130101.jsp'>프로젝트사업관리</a></li>"
																 + "<li><a href='MG140101.jsp'>사업관리현황조회</a></li>"
														+ "</li>";
														
$("#MTOP_HOME").removeClass();
$("#MTOP_MG").addClass("on");

</script>