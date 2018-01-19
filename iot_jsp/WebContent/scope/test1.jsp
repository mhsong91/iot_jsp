<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

request.setAttribute("msg","난테스트 1에 세팅된거야");

session.setAttribute("msg","난테스트1에서 세팅된세션값이야");

application.setAttribute("msg","난테스트1의 어플리케이션이야");

RequestDispatcher rd= request.getRequestDispatcher("./test2.jsp");

rd.forward(request,response);
%>