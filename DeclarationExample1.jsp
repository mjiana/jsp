<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Declaration Example1</title>
</head>
<body>
<h1>DeclarationExample1</h1>
<% 
//��������(��ũ��Ʋ�� �ȿ��� ����� ����)�� ���� ���Ŀ��� ȣ�� �����ϴ�.
String name = team + "Fighting!"; 
%>
<%! 
//����δ� ��ũ��Ʋ�� ���� ���� ����Ǿ�
//���������� ���� �� ���� ȣ������� ������� ȣ�� �����ϴ�.
String team = "Korea"; 
%>
��� ����� ? <%=name %>
</body>
</html>