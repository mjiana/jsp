<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="ExceptionExample2.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
out.flush();
int one = 1;
int zero = 0;
%>
<body>
<h1>ExceptionExample1</h1>
one / zero = <%=one/zero %>
</body>
</html>