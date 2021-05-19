<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<% request.setCharacterEncoding("euc-kr"); %>
<body>
ForwardTag1_1
<jsp:forward page="ForwardTag1_2.jsp"/>
</body>
</html>