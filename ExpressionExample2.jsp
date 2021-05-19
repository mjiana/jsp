<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Expression Example2</h1>
<%!
public int operation(int i, int j){
	return i > j ? i : j; //삼항연산자
}
%>
<%
java.util.Date date = new java.util.Date();
int hour = date.getHours();
//
int one = 10;
int two = 12;
%>

지금은 오전? 오후? <%=(hour < 12) ? "오전" : "오후" %><p>
one two 중 큰 숫자는 ? <%=operation(one, two) %>
</body>
</html>