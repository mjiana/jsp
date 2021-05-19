<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" info="JSPstudy" %>
<%
String pageInfo = this.getServletInfo();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>PageExample1</h1>
현재페이지의 info 값 : <%=pageInfo %>
</body>
</html>