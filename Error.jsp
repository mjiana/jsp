<%--@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Error</h1>
<%@ page language="java" 
	contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    isErrorPage="true"
%>
다음과 같은 예외가 발생하였습니다.
<%=exception.getMessage() %>
</body>
</html>