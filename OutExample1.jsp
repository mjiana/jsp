<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" buffer="5kb" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
int totalBuffer = out.getBufferSize();
int remainBuffer = out.getRemaining();
int useBuffer = totalBuffer - remainBuffer;
%>
<body>
<h1>Out Example1</h1>
<b>������������ Buffer ����</b><p>
��� Buffer�� ��ü ũ�� : <%=totalBuffer %>byte<p>
���� Buffer�� ũ�� : <%=remainBuffer %>byte<p>
���� Buffer�� ��뷮 :  <%=useBuffer %>byte
</body>
</html>