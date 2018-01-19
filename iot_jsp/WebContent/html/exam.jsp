<%@page import="java.util.HashMap"%>
<%@page import="com.google.gson.Gson"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String param=request.getParameter("param");
Gson gs =new Gson();
HashMap hm = gs.fromJson(param,HashMap.class);

String res=gs.toJson(hm);
out.println(res);

%>