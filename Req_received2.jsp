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
//��Ҹ��� �𸦶�
Enumeration <String> ename = request.getParameterNames();
while(ename.hasMoreElements()){
	String key = ename.nextElement();
	String myvalue = request.getParameter(key);
	out.print(myvalue+"<br>");
}
%>
</body>
</html>