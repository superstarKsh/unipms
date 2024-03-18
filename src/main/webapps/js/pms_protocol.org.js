function fn_GetUrl() {
	 var offset=location.href.indexOf(location.host)+location.host.length;
	 var UniPath=location.href.substring(0,location.href.indexOf('/',offset+1));
	 return UniPath;
};

function fn_GetContextRoot() {
	var offset=location.href.indexOf(location.host)+location.host.length;
	var UniPath=location.href.substring(offset,location.href.indexOf('/',offset+1));
	return UniPath;
};

function fn_AjaxSend(sendData, method, callback, message) {
	
	$.ajax({
		type:"POST"
		, url : fn_GetUrl() + "/" + method + ".do"
		, dataType : "JSON"
		, contentType : "application/json; charset=utf-8"
		, data : JSON.stringify(sendData)
		, success  : function(result) {
			if(typeof callback === 'function' ) {
				if (message != null)
					alert(message);

				callback(result);
			} else {
				if (message != null)
					alert(message);
			}
		}
		, error : function(x, s, e) {
			fn_ErrorAlert(x, e);
			return -1;
		}
	});
};

function fn_AjaxSendParam(sendData, method, callback, message, args1, args2, args3) {
	
	$.ajax({
		type:"POST"
		, url : fn_GetUrl() + "/" + method + ".do"
		, dataType : "JSON"
		, contentType : "application/json; charset=utf-8"
		, data : JSON.stringify(sendData)
		, success  : function(result) {
			if(typeof callback === 'function' ) {
				if (message != null)
					alert(message);

				callback(result, args1, args2, args3);
			} else {
				if (message != null)
					alert(message);
			}
		}
		, error : function(x, s, e) {
			fn_ErrorAlert(x, e);
			return -1;
		}
	});
};

function fn_AjaxSendSesUrl(sendData, sendUrl, targetUrl, callback) {
	$.ajax({
		type:"POST"
		, url : "../common/" + sendUrl
		, data : sendData
		, success  : function(result) {
        }
		, complete : function(xhr, status) {
			if (targetUrl != null)
				window.location = targetUrl;

			if (callback != null)
				callback();
        }
		, error : function(x, e) {
        	fn_ErrorAlert(x, e);
        	return;
		}
	});
};

function fn_AjaxSendSesUrlParam(sendData, sendUrl, targetUrl, callback, args1, args2, args3) {
	$.ajax({
		type:"POST"
		, url : "../common/" + sendUrl
		, data : sendData
		, success  : function(result) {
        }
		, complete : function(xhr, status) {
			if (targetUrl != null)
				window.location = targetUrl;

			if (callback != null)
				callback(args1, args2, args3);
        }
		, error : function(x, e) {
        	fn_ErrorAlert(x, e);
        	return;
		}
	});
};

function fn_DownloadFile(category, args) {
	var popup = window.open("../common/pms_downloadfile.jsp?sCategory=" + category + "&filename=" + args, "dnjsp", "width=0, height=0, top=0, statusbar=no, scrollbars=no, toolbar=no");
	popup.focus();
};

function fn_InsertUploadFile(category, callback) {
	var form = document.contentsForm;
	
	var iframe = document.createElement("iframe");
    iframe.setAttribute("id", "uploadIFrame");
    iframe.setAttribute("name", "uploadIFrame");
    iframe.setAttribute("width", "0");
    iframe.setAttribute("height", "0");
    iframe.setAttribute("border", "0");
    iframe.setAttribute("style", "width: 0; height: 0; border: none;");
 
    form.parentNode.appendChild(iframe);
    window.frames['uploadIFrame'].name = "uploadIFrame";
 
    iframeId = document.getElementById("uploadIFrame");
 
    var eventHandler = function () {
 
		if (iframeId.detachEvent) iframeId.detachEvent("onload", eventHandler);
        else iframeId.removeEventListener("load", eventHandler, false);

        if (iframeId.contentDocument) {
            content = iframeId.contentDocument.body.innerHTML;
        } else if (iframeId.contentWindow) {
            content = iframeId.contentWindow.document.body.innerHTML;
        } else if (iframeId.document) {
            content = iframeId.document.body.innerHTML;
        }
        
        if (content == null || content == "")
        	callback();
        else
        	alert("파일 업로드에 실패하였습니다.");
		
        setTimeout('iframeId.parentNode.removeChild(iframeId)', 250);
    };
 
    if (iframeId.addEventListener){
    	iframeId.addEventListener("load", eventHandler, true);
    }
    else {
    	if (iframeId.attachEvent) iframeId.attachEvent("onload", eventHandler);
    }
    
	form.method = "POST";
	form.setAttribute("target", "uploadIFrame");
	form.setAttribute("action", "../common/pms_uploadfile.jsp?sCategory="+ category);
	form.setAttribute("enctype", "multipart/form-data");
    form.setAttribute("encoding", "multipart/form-data");
	form.submit();
};

function fn_ImageUploadFile(category, callback) {
	var form = document.contentsForm;
	
	var iframe = document.createElement("iframe");
    iframe.setAttribute("id", "uploadIFrame");
    iframe.setAttribute("name", "uploadIFrame");
    iframe.setAttribute("width", "0");
    iframe.setAttribute("height", "0");
    iframe.setAttribute("border", "0");
    iframe.setAttribute("style", "width: 0; height: 0; border: none;");
 
    form.parentNode.appendChild(iframe);
    window.frames['uploadIFrame'].name = "uploadIFrame";
 
    iframeId = document.getElementById("uploadIFrame");
 
    var eventHandler = function () {
 
		if (iframeId.detachEvent) iframeId.detachEvent("onload", eventHandler);
        else iframeId.removeEventListener("load", eventHandler, false);

        if (iframeId.contentDocument) {
            content = iframeId.contentDocument.body.innerHTML;
        } else if (iframeId.contentWindow) {
            content = iframeId.contentWindow.document.body.innerHTML;
        } else if (iframeId.document) {
            content = iframeId.document.body.innerHTML;
        }
        
        if (content == null || content == "")
        	callback();
        else
        	alert("파일 업로드에 실패하였습니다.");
		
        setTimeout('iframeId.parentNode.removeChild(iframeId)', 250);
    };
 
    if (iframeId.addEventListener){
    	iframeId.addEventListener("load", eventHandler, true);
    }
    else {
    	if (iframeId.attachEvent) iframeId.attachEvent("onload", eventHandler);
    }
	
	form.method = "POST";
	form.setAttribute("target", "uploadIFrame");
	form.setAttribute("action", "../common/pms_uploadimage.jsp?sCategory="+ category);
	form.setAttribute("enctype", "multipart/form-data");
    form.setAttribute("encoding", "multipart/form-data");
	form.submit();
};
