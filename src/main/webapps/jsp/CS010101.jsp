<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- start : Html Header -->
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
	$("#searchPrjtID").val("<%=(String) session.getAttribute("sPRJT_ID")%>");
	$("#searchPrjtNM").val("<%=(String) session.getAttribute("sPRJT_NM")%>");

	fn_initLoad();
};

function fn_initLoad() {
	fn_InitGrid();
};

function fn_InitGrid() {
	objGridInitInfo = {
			"strParentId":"prjtProcdInfo",
			"strId": "objSBGrid",
			"strCaption": "ID^요청일자^제목^구분^진행상태^시작일자^종료일자^요청자^담당자^첨부파일",
			"strColWidth": "10%,13%,30%,10%,10%,13%,13%,10%,10%,10%",
			"strRowHeight" : "25",
			"strDataHeight" : "25",
			"strJsonRef": "resultData",
			"strFocusColor":"#FEEEDB",
			"strSelectFontColor" : "#000",
			"strExplorerbar": "sortshow",
			"bAllowCopy" : true,
			"bIsShowLoadingImage" : false,
			"strStyle": "width:100%; height:500px; font-family:Nanum Gothic, gulim, arial;font-size:10pt;"
	};

	objSBGrid = createSBDataGrid(objGridInitInfo);

	objColumnsInfo = [
						{"id": "col0" , "type": "output", "ref": "sCSR_ID"       , "style": "text-align:center;"},
						{"id": "col1" , "type": "output", "ref": "sREQ_DT"       , "format":"yyyy.mm.dd", "style": "text-align:center;"},
						{"id": "col2" , "type": "output", "ref": "sTITLE"        , "style": "text-align:left; padding-left:5px;"},
						{"id": "col3" , "type": "output", "ref": "sSYS_TYPE_NM"  , "style": "text-align:center;"},
						{"id": "col4" , "type": "output", "ref": "sPROC_TYPE_NM" , "style": "text-align:center;"},
						{"id": "col5" , "type": "output", "ref": "sSTRT_DT"      , "format":"yyyy.mm.dd", "style": "text-align:center;"},
						{"id": "col6" , "type": "output", "ref": "sEND_DT"       , "format":"yyyy.mm.dd", "style": "text-align:center;"},
						{"id": "col7" , "type": "output", "ref": "sREQ_USER_NM"  , "style": "text-align:center;"},
						{"id": "col8" , "type": "output", "ref": "sDEV_USER_NM"  , "style": "text-align:center;"},
						{"id": "col9" , "type": "image" , "ref": "sIMG_URL"      , "imageStyle" : "width:14px;height:14px;cursor:pointer;border:0px" , "style": "text-align:center;"},
						{"id": "col10", "type": "output", "ref": "sFILE_NM"      , "style": "text-align:center;", "bIsColHidden" : true}
	                ];

	objSBGrid.createColumns(objColumnsInfo);
	objSBGrid.addEventListener("ondblclick", "fn_SelectListInfo", "","");
	objSBGrid.addEventListener("onclick", "fn_GridFileDown", "","");
	
	fn_SelectPrjtInfo();
};

function fn_SelectPrjtInfo() {
	var sendData = {
		sPRJT_ID : $("#searchPrjtID").val()
	};

	$.ajax({
		type:"POST"
		, url : currContextRoot + "/CS010111.do"
		, dataType : "JSON"
		, contentType: strContentType
		, data : JSON.stringify(sendData)
		, success  : function(result) {
			resultData = result.prjtCsrInfo;
        }
		, complete : function (xhr, status) {
			objSBGrid.rebuild();
        }
        , error : function(x, e) {
        	fn_ErrorAlert(x, e);
        	return;
		}
	});
};

function fn_SelectListInfo() {
	var nClickedRow = objSBGrid.getRow();
	var nClickedCol = objSBGrid.getCol();
	
	if (nClickedRow <= 0 )
		return;
	
	if (nClickedCol == 9) {
		var downloadFile = objSBGrid.getTextMatrix(nClickedRow, 10);
		if (downloadFile == "")
			return;
		
		fn_DownloadFile(downloadFile);
	} else {
		var content = "";
			content += "sSEARCH_YN=Y";
			content +="&";
			content += "sSEARCH_CSR_ID="+ objSBGrid.getTextMatrix(nClickedRow,0);
		
		$.ajax({
			type:"POST"
			, url : "../common/pms_session_cs0101.jsp"
			, data : content
			, success  : function(result) {
	        }
	        , complete : function(xhr, status) {
	        	window.location = "CS020101.jsp";
	        }
	        , error : function(x, e) {
	        	fn_ErrorAlert(x, e);
	        	return;
			}
		});
	}
};

function fn_GridFileDown() {
	var nClickedRow = objSBGrid.getRow();
	var nClickedCol = objSBGrid.getCol();
	if (nClickedCol == 9) {
		var downloadFile = objSBGrid.getTextMatrix(nClickedRow, 10);
		if (downloadFile == "")
			return;
		
		fn_DownloadFile(downloadFile);
	}
	
	if (nClickedCol == 0) {
		fn_SelectListInfo();
	}
};

function fn_InsertPrjt() {
	window.location = "CS020101.jsp";
};

function fn_SearchPrjtInfo() {
	window.open("PU010101.jsp","",popupStyle);
};

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
			<jsp:include page="../common/layout_left_cs.jsp" flush="true" />
		</div>

 		<div class="content">
    		<div class="cont">
     		    <div class="fixbox">
					<!-- START : title -->
    		        <h2>[CS01] CSR 정보</h2>
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
	    		        <div id="prjtProcdInfo">
						</div>
	    		    </div>
	    		    <!-- END : grid section -->
	    		    
	    		    <div class="section">
    		            <ul class="btnbox right">
    		                <li><a href="javascript:fn_InsertPrjt();" class="btnimg03">등록</a></li>
    		            </ul>
    		        </div><!--//section-->
    		    
    		    </div><!--//pixbox-->
    		    <div id="hiddenColumn">
					<input type="hidden" class="inputType" id="sCategory" name="sCategory" value="CS01"/>
				</div>
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