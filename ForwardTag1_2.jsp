<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");
%>
<body>
<h1>ForwardTag1</h1>

����� ���̵�� <b><%=id %></b> �̰�, <p>
�н������ <b><%=pw %></b>�Դϴ�.
</body>
</html>