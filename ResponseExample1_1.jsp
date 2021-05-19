<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
response.setHeader("Pragma", "no-cache");
if(request.getProtocol().equals("HTTP/1.1")){
	response.setHeader("Cache-Control", "no-cache");
}

%>
<body>
<h1>ResponseExample1</h1>
http://localhost:8888/chapter06/ResponseExample1.jsp가 <p>
http://localhost:8888/chapter06/ResponseExample1_1.jsp로 변경되었습니다.
</body>
</html>