<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
var car={
		wheels:4,
		engines:1,
		seat:5
}
var str="";
for(var key in car){
	str+=key+":"+car[key]+"<br>";
}

function lead(){
document.getElementById("result_div").innerHTML=str;
}

/*위에선언된 카 변수를 이용하여
 * 리절트 디아이브이에 자동차 휠갯수:
	 시트갯수: 엔진갯수:
		 라는 ㅗ싀을 입력해주세요
 */
</script>
<body onload="lead()">
<div id="result_div"></div>
</body>
</html>