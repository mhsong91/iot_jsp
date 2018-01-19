<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="/js/jquery-3.2.1.js"></script>
<script >


function go(){
	var a;
	per={
	no:"1",
	id:"시라소니",
	name:"김두한",
	age:"18",
	gender:"상남자",
	address:"종로",
		$("#result_div").apped(str);
	}
	
	var data="param="+encodeURIComponent(JSON.stringify(per));
	$.ajax({
		url:"./test.jsp",
		data:data,
		type:"get",
		success: function(res){
			alert(res);
		},
		error:function(xhr,status,error){
			$("#result_div").html(xhr.responseText);
		}
		
	})
}

</script>

<body>
<div  id="result_div"></div>
<input type="button" id="id" value="클릭하세요" onclick="go()">
</body>
</html>