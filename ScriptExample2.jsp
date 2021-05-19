<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP Example2</title>
</head>
<body>
<h1>Script Example2</h1>
<% 
float f = 2.3f;
int i = Math.round(f);
//풀네임을 가져오면 import를 안해도 된다.
java.util.Date date = new java.util.Date();
%>
실수 f의 반올림 값은 ? <%=i %><p>
현재 날짜와 시간은? <%=date.toString() %>
</body>
</html>