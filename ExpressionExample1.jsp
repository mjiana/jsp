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
	 //name �迭�� ������ŭ tr/td ����
%>
	<tr>
		<td width="20"><%=i %></td>
		<td width="80"><%=name[i] %></td>
	</tr>
<% } 
//����� 1�� 2ĭ������ for���� ������ 3�� 6ĭ�� �ȴ�.
%>
</table>
</body>
</html>