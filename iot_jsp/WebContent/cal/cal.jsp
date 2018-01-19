<%@page import="java.util.HashMap"%>
<%@page import="com.google.gson.Gson"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int num1 = Integer.parseInt(request.getParameter("num1"));
int num2 = Integer.parseInt(request.getParameter("num2"));
String op=request.getParameter("op");
int r=0;
if(op.equals("+")){
	r=num1+num2;
}else if(op.equals("-")){
	r=num1-num2;	
}else if(op.equals("*")){
	r=num1*num2;
}else if(op.equals("/")){
	r=num1/num2;
}
 	Gson gs=new Gson();
 	HashMap<String,Object> hm = new HashMap<String,Object>();
 	hm.put("result",r);
 	String res=gs.toJson(hm);
 	out.println(res);
 	
 	
 	
%>