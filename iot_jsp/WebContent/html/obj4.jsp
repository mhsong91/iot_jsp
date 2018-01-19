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
	function cheackvalues(){
		var user={
			id:document.getElementById("id").value,
			pwd:document.getElementById("pwd").value,
			name:document.getElementById("name").value
		}
		//for(var key in user){
			//console.log(key+":"+user[key]);
		//}
		var data="param="+encodeURIComponent(JSON.stringify(user));
		
		
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
<div id="result_div"></div>
<input type="text" id="id">
<input type="text" id="pwd">
<input type="text" id="name">
<input type="button" value="값확인" onclick="cheackvalues()">
</body>
</html>