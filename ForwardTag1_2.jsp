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

당신의 아이디는 <b><%=id %></b> 이고, <p>
패스워드는 <b><%=pw %></b>입니다.
</body>
</html>