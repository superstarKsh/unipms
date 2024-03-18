<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
</head>
<body>
	<div class="nav">
		<h1>이슈/회의</h1>
		<ul>
			<li id="mCF010101"><a href="CF010101.jsp">주간보고</a></li>
			<li id="mCF020101"><a href="CF020101.jsp">회의록</a></li>
			<li id="mCF030101"><a href="CF030101.jsp">이슈/리스크</a></li>
		</ul>
	</div>
</body>

<script type="text/javascript">
	$("#MTOP_HOME").removeClass();
	$("#MTOP_IS").addClass("on");
	
	if (domainPath == "wise") {
		document.getElementById('mCF010101').innerHTML = "<a href='WSCF010101.jsp'>주간보고</a>";
	}
</script>
