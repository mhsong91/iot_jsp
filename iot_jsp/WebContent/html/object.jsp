<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
 var AjaxObj=function(params){
	 this.url=params.url;
	 
	 this.val=function(){
		 alert("유효선검사 함수");
		 this.callback("파라미스를 너어야함");
	 }
	 this.send=function(){
		 alert(params.url+"Ajax 전송함수");
	 }
	 this.callback=params.func;
	 }
 	var func=function(res){
 		alert(res);
 	}
 	var params={url:"./test.jsp",func:func};
	 var ao= new AjaxObj(params);
 ao.send();
//ao.callback();
  
</script>
<body>
</body>
</html>