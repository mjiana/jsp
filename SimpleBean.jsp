<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<jsp:useBean id="test" class="chapter07.SimpleBean" scope="page" />
<!-- scope="page"�� ������ ������, ����Ʈ ���̹Ƿ� �Ⱦ��� page���̴�  -->
<jsp:setProperty property="message" name="test" value="���� ���� ��������"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>������ �� ���α׷���</h1><br>
Message : <jsp:getProperty property="message" name="test"/>
</body>
</html>