<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
String protocol = request.getProtocol();
String serverName = request.getServerName();
int serverPort = request.getServerPort();
String remoteAddr = request.getRemoteAddr();
String remoteHost = request.getRemoteHost();
String method = request.getMethod();
StringBuffer requestURL = request.getRequestURL();
String requestURI = request.getRequestURI();
String useBrowser = request.getHeader("User-Agent");
String fileType = request.getHeader("Accept");
%>
<body>
<h1>RequestExample2</h1>
�������� : <%=protocol %><br>
������ �̸� : <%=serverName %><br>
������ ��Ʈ��ȣ : <%=serverPort %><br>
����� ��ǻ���� �ּ� : <%=remoteAddr %><br>
����� ��ǻ���� �̸� : <%=remoteHost %><br>
��� Method : <%=method %><br>
��û���(URL) : <%=requestURL %><br>
��û���(URI) : <%=requestURI %><br>
���� ����ϴ� ������ : <%=useBrowser %><br> 
<!-- Mozilla�� ��� �������� ���ʰ��̴� -->
�������� �����ϴ� file type : <%=fileType %>
</body>
</html>