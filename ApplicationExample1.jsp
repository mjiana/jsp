<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
String serverInfo = application.getServerInfo();
String mimeType1 = application.getMimeType("RequestExample1.html");
String mimeType2 = application.getMimeType("RequestExample1.jsp");
String realPath = application.getRealPath("/");
application.log("application ���� ��ü �α� �׽�Ʈ");
%>
<body>
<h1>ApplicationExample1</h1>
���� �����̳��� �̸��� ���� : <%=serverInfo %><p>
<!-- MIME Type : ASCII�ڵ�� ������ ������ ���̳ʸ� �ڵ��� ������ �ؽ�ƮŸ������ ���� -->
RequestExample1.html�� MIME Type : <%=mimeType1 %><p>
RequestExample1.jsp�� MIME Type : <%=mimeType2 %><p>
���� ���� �ý��� ��� : <%=realPath %>
</body>
</html>