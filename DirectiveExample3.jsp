<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="Error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>DirectiveExample3</h1>
<% 
/*
������ ����Ʈ ũ��� 8kb, �ּ� ���۷��� 512byte
�ּ� ���۷��� �����߸� ������ �ڵ����� ������� �����Ƿ� 
html�� ��ٸ��� �ʰ� ��ü������ ����ó���� �ع�����.
�׷��Ƿ� out.flush();�� ���� �ϴ� ������ ���� �����ְ� 
�غ� �Ϸ�Ǹ� �ٽ� ������ ������.
*/
out.flush();
int one = 1;
int zero = 0;
%>
one�� zero�� ��Ģ����<p>
one + zero = <%=one+zero %><p>
one - zero = <%=one-zero %><p>
one * zero = <%=one*zero %><p>
one / zero = <%=one/zero %><p>
</body>
</html>