var NOTICE_USER_INFO = "사원정보가 없습니다. 입력한 아이디와 비밀번호가 일치하지 않거나 사원정보를 등록하여주시기 바랍니다.";
var INSERT_LOGIN_INFO = "로그인 정보를 입력하여 주십시오.";

var PMS_PROC_INSERT = "등록되었습니다.";
var PMS_PROC_UPDATE = "수정되었습니다.";
var PMS_PROC_DELETE = "삭제되었습니다.";

var SELECT_PRJT_STAGE = "진행단계를 선택하여 주십시오.";
var SELECT_TASK_ID = "TASK ID를 선택하여 주십시오.";
var SELECT_SEG_ID = "SEGMENT ID를 선택하여 주십시오.";
var SELECT_SEG_SUB_ID = "SUB SEGMENT ID를 선택하여 주십시오.";
var SELECT_TEST_SCN_ID = "테스트시나리오를 선택하여 주십시오.";
var SELECT_PRJM_ID = "프로그램 ID를 선택하여 주십시오.";
var SELECT_ACTIVITY_ID = "TASK, SEGMENT, SUB SEGMENT 구분을 선택하여 주십시오.";

var INSERT_PRJT_ID = "프로젝트 아이디를 입력하여 주십시오.";
var INSERT_TASK_ID = "TASK ID를 입력하여 주십시오.";
var INSERT_SEG_ID = "SEGMENT ID를 입력하여 주십시오.";
var INSERT_PRJM_ID = "프로그램 ID를 입력하여 주십시오.";
var INSERT_TASK_LEVEL = "TASK LEVEL을 입력하여 주십시오.";
var INSERT_TEST_SCN_ID = "테스트시나리오 ID를 입력해주십시오.";
var INSERT_TEST_CASE_ID = "테스트케이스ID를 입력하여 주십시오.";

var SELECT_MODIFY_FILE = "일괄 저장할 파일을 선택하여 주십시오.";
var SELECT_OUTPUT_ID = "산출물  ID를 입력하여 주십시오.";

var PMS_USED_ID = "이미 사용중인 ID입니다.";

var PMS_RPLC_CODE = "프로젝트 내부에서 사용하는 고정 코드입니다. 수정만 가능합니다.";

var PMS_SEARCH_IMAGE = "../images/icon/search.gif";

Map = function(){
	this.map = new Object();
};
Map.prototype = {
	put : function(key, value){
		this.map[key] = value;
	},
	putMap : function(key, value){
		this.map[key] = value.map;
	},
	putMapList : function(key, value){
		var list = new Array();
		for(var i=0;i<value.length;i++){
			list.push(value[i].map);
		}
		this.map[key] = list;
	},
	get : function(key){
		return this.map[key];
    },
    containsKey : function(key){
		return key in this.map;
    },
    containsValue : function(value){
		for(var prop in this.map){
			if(this.map[prop] == value) return true;
		}
		return false;
    },
    isEmpty : function(key){
		return (this.size() == 0);
    },
    clear : function(){
		for(var prop in this.map){
			delete this.map[prop];
		}
	},
	remove : function(key){
		delete this.map[key];
	},
	keys : function(){
		var keys = new Array();
		for(var prop in this.map){
			keys.push(prop);
		}
		return keys;
	},
	values : function(){
		var values = new Array();
		for(var prop in this.map){
			values.push(this.map[prop]);
		}
		return values;
	},
	size : function() {
		var count = 0;
		for (var prop in this.map) {
			count++;
		}
		return count;
	},
	jsonString: function(){
		return JSON.stringify(this.map);
	},
	jsonParse: function(){
		return this.map;
	}
};

var yesNo = [
				{"label":"확정", "value":"Y"},
				{"label":"미확정", "value":"N"}
			];

var yesNo_YN = [
				{"label":"Y", "value":"Y"},
				{"label":"N", "value":"N"}
			];

function fn_InitSBGrid(parentId, divId, caption, colWidth, height, jsonRef, sort, fixdRow) {

	var jsonMap = new Map();
	
	jsonMap.put("strParentId"			, parentId);
	jsonMap.put("strId"	        		, divId);
	jsonMap.put("strCaption"	        , caption);
	jsonMap.put("strColWidth"	        , colWidth);
	jsonMap.put("strRowHeight"	        , "25");
	jsonMap.put("strDataHeight"	        , "25");
	jsonMap.put("strJsonRef"	        , jsonRef);
	jsonMap.put("strFocusColor"	        , "#FEEEDB");
	jsonMap.put("strSelectFontColor"	, "#000");
	if (sort)
		jsonMap.put("strExplorerbar"	, "sortshow");
	if (fixdRow != null)
		jsonMap.put("nFrozenCols"	    , fixdRow);
	jsonMap.put("bAllowCopy"	        , true);
	jsonMap.put("bIsShowLoadingImage"	, false);
	jsonMap.put("strStyle"	            , "height:"+height + "; width:100%; font-family:Nanum Gothic, gulim, arial;font-size:10pt;");

	return jsonMap.jsonParse();
};

function fn_SetSBGridCol(id, type, ref, style, format, hidden) {

	var jsonMap = new Map();
	
	jsonMap.put("id"			, "col"+id);
	jsonMap.put("type"	        , type);
	jsonMap.put("ref"	        , ref);
	
	if (style == "center")
		jsonMap.put("style"	        , "text-align:center;");
	else if (style == "left")
		jsonMap.put("style"	        , "text-align:left; padding-left:5px;");
	else if (style == "right")
		jsonMap.put("style"	        , "text-align:right; padding-right:5px;");
	
	if (type == "imageF") {
		jsonMap.put("type"	        , "image");
		jsonMap.put("imageStyle"    , "width:14px;height:14px;cursor:pointer;border:0px");
	} else if (type == "imageS") {
		jsonMap.put("type"	        , "image");
		jsonMap.put("imageUri"	    , "../images/icon/search.gif");
		jsonMap.put("imageStyle"    , "width:14px;height:14px;cursor:pointer;border:0px");
	} else if (type == "combo") {
		jsonMap.put("strJsonNodeSet" , format[0]);
		jsonMap.put("strLabelRef"    , format[1]);
		jsonMap.put("strValueRef"    , format[2]);
	} else if (format != null) {
		jsonMap.put("format"	     , format);
	}

	if (hidden)
		jsonMap.put("bIsColHidden"	    , true);

	return jsonMap.jsonParse();
};

function fn_GetInnerHtml(hidden, value) {
	var contentsStr = "";
	contentsStr += "<ul class='cont'>";
	contentsStr += value;
	contentsStr += "</ul>";
	contentsStr += "<input type='hidden' class='txtinpd' id='" + hidden + "' name='" + hidden + "' />";

	return contentsStr;
};

function fn_GetInputInnerHtml(id, hidden) {
	var contentsStr = "";
	contentsStr += "<input type='text' class='txtinpd' id='" + id + "' name='" + id + "' readOnly/>";
	if (hidden != null)
		contentsStr += "<input type='hidden' class='txtinpd' id='" + hidden + "' name='" + hidden + "' />";
	return contentsStr;
};
