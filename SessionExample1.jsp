<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" session="true"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<% 
request.setCharacterEncoding("euc-kr"); 
String id = request.getParameter("id");
String pw = request.getParameter("pw");

//���� ���� ����
session.setAttribute("idKey", id);
//���� �����ð� ����
session.setMaxInactiveInterval(60*5);
%>
<body>
<h1>SessionExample1</h1>
<form method="post" action="SessionExample1_1.jsp">
1. ���� �����ϴ� ������?<br>
<input type="radio" name="season" value="��">��
<input type="radio" name="season" value="����">����
<input type="radio" name="season" value="����">����
<input type="radio" name="season" value="�ܿ�">�ܿ�
<p>
2. ���� �����ϴ� ������?<br>
<input type="radio" name="fruit" value="watermelon">����
<input type="radio" name="fruit" value="melon">���
<input type="radio" name="fruit" value="apple">���
<input type="radio" name="fruit" value="orange">������
<p>
<input type="submit" value="�������">
</form>
</body>
</html>