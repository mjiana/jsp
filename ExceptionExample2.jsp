<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
String msg = exception.getMessage();
String objectMsg = exception.toString();
%>
<body>
<h1>ExceptionExample2</h1>
에러메세지 : <b><%=msg %></b><p>
에러 실체의 클래스명과 에러 메세지 : <b><%=objectMsg %></b></p>
</body>
</html>