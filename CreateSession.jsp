<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ���� ����</title>
</head>
<%
String strId = "combachi";
String strPw = "hello";

session.setAttribute("logID", strId);
session.setAttribute("logPW", strPw);
%>
<body>
<p>������ �����Ǿ����ϴ�</p>
<a href="ViewSessionInfo.jsp">�������� Ȯ�� �������� �̵�</a>
</body>
</html>