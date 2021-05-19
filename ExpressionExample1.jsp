<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Expression Example1</h1>
<%!
String name[] = {"Sun", "Java", "JSPstudy"};
%>
<table border="1">
<% for(int i=0; i<name.length; i++){ 
	 //name 배열의 개수만큼 tr/td 증가
%>
	<tr>
		<td width="20"><%=i %></td>
		<td width="80"><%=name[i] %></td>
	</tr>
<% } 
//현재는 1줄 2칸이지만 for문이 끝나면 3줄 6칸이 된다.
%>
</table>
</body>
</html>