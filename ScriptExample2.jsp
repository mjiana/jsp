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
//Ǯ������ �������� import�� ���ص� �ȴ�.
java.util.Date date = new java.util.Date();
%>
�Ǽ� f�� �ݿø� ���� ? <%=i %><p>
���� ��¥�� �ð���? <%=date.toString() %>
</body>
</html>