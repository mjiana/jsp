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
//���������� ���������� ������ 0����, ���ڿ��� null�� �ڵ� �ʱ�ȭ�ȴ�. 
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