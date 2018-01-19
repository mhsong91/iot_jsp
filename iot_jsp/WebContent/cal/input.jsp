<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="/js/jquery-3.2.1.js"></script>
<script>
function cal(){
	var num1=$("#num1").val();
	var num2=$("#num2").val();
	var op= $("#op").val();
	var param ="num1="+num1+"&num2="+num2+"&op="+encodeURIComponent(op);
	$.ajax({
		url:"./cal.jsp",
		type:"get",
		data:param,
		success:function(res){
			var obj=JSON.parse(res);
			$("#result").val(obj.result);
		}
	})
}
</script>

<body>

<input type="text" id="num1" name="num1">
<select id="op" name="op">
<option value= "+">더하기 </option>
<option value= "-">뺴기 </option>
<option value= "*">곱하기 </option>
<option value= "/">나누기 </option>
</select>
<input type="text" id="num2" name="num2">=
<input type="text" id="result"><br>
<input type="button" value="계산하기" onclick="cal()">
</body>
</html>