
function fn_SearchNum(args) { 
	var val = args;
    val = new String(val);

    var regex = /[^0-9]/g;

    return val.replace(regex, '');
};

function fn_ServiceErrorAlert(args) {	
	var sMsg = "[" + args.sERROR_CODE + "] " + args.sERROR_MSG;
	alert(sMsg);
	
	if (args.sERROR_CODE == "0001") {
		window.location = "CM000101.jsp";
	}
};

function fn_ErrorAlert(x, e) {
	if (x.status == 0) {
	} else if (x.status == 404) {
		alert('URL을 찾을 수 없습니다.');
	} else if (x.status == 500) {
		alert('서버 오류가 발생하였습니다. 요청하신 입력을 확인 하신 후 다시 시도하여 주시기 바랍니다.');
	} else if (e == 'parsererror') {
		alert('요청하신 입력이 정확하지 않습니다. 확인 후 다시 시도하여 주시기 바랍니다.');
	} else if (e == 'timeout') {
		alert('응답시간이 지연되었습니다. 잠시 후 다시 시도하여 주시기 바랍니다.');
	} else {
		alert('알수 없는 에러가 발생하였습니다. : ' + x.responseText);
	}
};

function fn_GetDate(args) {	
	var d = new Date();
	var currDate = d.getFullYear() + args + fn_FillString((d.getMonth() + 1), 2, '0') + args + fn_FillString(d.getDate(), 2, '0');
	return currDate;
};

function fn_GetMonth(args) {
	var d = new Date();
	var currDate = d.getFullYear() + args + fn_FillString((d.getMonth() + 1), 2, '0');
	return currDate;
};

function fn_GetHour() {
	var d = new Date();
	var currHour = null;
	var currMin = d.getMinutes();
	
	if (currMin >= 0 && currMin < 20)
		currHour = d.getHours()  + ":00";
	else if (currMin >= 20 && currMin < 40)
		currHour = d.getHours()  + ":30";
	else if (currMin >= 40 && currMin <= 59)
		currHour = (d.getHours() + 1)  + ":00";
	
	return currHour;
};

function fn_FillString(args, digits, filler) {
	var nullString = '';
	args = args.toString();

	if (args.length < digits) {
		for (var i = 0; i < digits - args.length; i++)
			nullString += filler;
	}

	return nullString + args;
};

function fn_SetDateType(args) {
	args = args.toString();

	if (args.length < 8 )
		return args;
	
	return args.substring(0,4) + "." + args.substring(4,6) + "." + args.substring(6,8); 
};

function fn_SetMonType(args) {
	args = args.toString();

	if (args.length < 6 )
		return args;
	
	return args.substring(0,4) + "." + args.substring(4,6); 	
};

function fn_SetTimeType(args) {
	args = args.toString();

	if (args.length < 4 )
		return args;
	
	return args.substring(0,2) + ":" + args.substring(2,4); 
};

var getParameter = function (param) {
	var returnValue;
	var url = location.href;
	
	var parameters = (url.slice(url.indexOf('?') + 1, url.length)).split('&');

	for (var i = 0; i < parameters.length; i++) {
		var varName = parameters[i].split('=')[0];

		if (varName.toUpperCase() == param.toUpperCase()) {
			returnValue = parameters[i].split('=')[1];
			return decodeURIComponent(returnValue);
		}
	}
};

function fn_GetFileName(args) {	
	if (args == "")
		return "";
	
	var pathHeader = args.lastIndexOf("\\");
    var pathMiddle = args.lastIndexOf(".");
    var pathEnd = args.length;
    var fileName = args.substring(pathHeader+1, pathMiddle);
    var extName = args.substring(pathMiddle+1, pathEnd);
    var selFilename = fileName+"."+extName;
    
    return selFilename;
};

var setCalendar = {
	dateFormat:'yy.mm.dd'
	, showOn: 'button'
	, buttonImage: '../images/icon/calendar.gif'
	, buttonImageOnly: true
	, changeMonth: true
	, changeYear: true
	, showButtonPanel: true
	, showAnim : 'slide'
};