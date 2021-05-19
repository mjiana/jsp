<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>세션 생성 예제</title>
</head>
<%
String strId = "combachi";
String strPw = "hello";

session.setAttribute("logID", strId);
session.setAttribute("logPW", strPw);
%>
<body>
<p>세션이 생성되었습니다</p>
<a href="ViewSessionInfo.jsp">세션정보 확인 페이지로 이동</a>
</body>
</html>