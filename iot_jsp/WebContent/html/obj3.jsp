<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script >
var obj={
		fun1:function(res){
			alert(res);
		},
		fun2:function(res){
			alert(res);
		}
}

var func= function(obj){
	this.callAllFunc = function(){
		obj.func1("test");
		obj.func2("test2");
	}
}
var f= new func(obj);
f.callAllFunc();

var car= function(p1,p2,p3){
	this.wheels=p1;
	this.engines=p2;
	this.seats=p3;
}

var c =new car(1,2,3);

</script>
<body>

</body>
</html>