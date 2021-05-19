<%@ page language="java" 
	contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.util.*"
    session="true"
    buffer="16kb"
    autoFlush="true"
    isThreadSafe="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>DirectiveExample2</h1>
<%
Date date = new Date();
%>
현재날짜와 시간은?
<%=date.toLocaleString() %>
</body>
</html>