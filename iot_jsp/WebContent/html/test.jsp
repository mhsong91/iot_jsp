<%@page import="java.util.HashMap"%>
<%@page import="com.google.gson.Gson"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String param=request.getParameter("param");
Gson gs =new Gson();
HashMap hm = gs.fromJson(param,HashMap.class);
hm.put("msg","로그인성골");
if(hm.get("id").equals("test")){
	if(!hm.get("pwd").equals("1234")){
		hm.put("msg","비번확인하세요");
	}
}else{
	hm.put("msg","아이디 확인하세요");
}
String res=gs.toJson(hm);
out.println(res);

%>