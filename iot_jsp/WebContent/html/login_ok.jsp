<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("userId");
	String pwd = request.getParameter("userPwd");
	String name = request.getParameter("userName");
	String age = request.getParameter("userAge");
	String msg = "test님 로그인 성공하셨네여";
	if (id.equals("test")) {
		if (!pwd.equals("1234")) {
			msg = "비밀번호 확인하세요";
		}
	} else {
		msg = "아이디를 틀렸습니다";
	}
	out.print(msg);
%>
</body>
</html>