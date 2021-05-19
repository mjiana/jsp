<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Declaration Example2</title>
</head>
<body>
<h1>DeclarationExample2</h1>
<%!
//전역변수는 데이터형이 정수면 0으로, 문자열은 null로 자동 초기화된다. 
int one;
int two=1;

public int plusMethod() {
	return one + two;
}

String msg;
int three;
%>
one + two = <%=plusMethod() %><p>
String msg ? <%=msg %><p>
int three ? <%=three %>
</body>
</html>