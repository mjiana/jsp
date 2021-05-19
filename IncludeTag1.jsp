<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
request.setCharacterEncoding("EUC-KR");
String name = "Korea Football";
%>
<body>
<h1>IncludeTag1</h1>
<jsp:include page="IncludeTagTop1.jsp"/>
include Action Tag의 Body입니다.
</body>
</html>