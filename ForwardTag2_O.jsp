<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
String name = "JSPstudy";
String bType = request.getParameter("bloodType");
%>
<body>
<b><%=name %></b>����
<b><%=bType %></b>���Դϴ�.
</body>
</html>