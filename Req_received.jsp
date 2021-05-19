<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
//요소명이 동일한 것들이 request영역에 여러개 있을 때
String name[] = request.getParameterValues("my");
for(int i=0; i<name.length; i++){
	out.print(name[i]+"<br>");
}
%>
</body>
</html>