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
������ ���� ���ܰ� �߻��Ͽ����ϴ�.
<%=exception.getMessage() %>
</body>
</html>