<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�������� �ִ°�� Bean Ȱ��</title>
</head>
<body>
������ ������ ����� ����  �׼��±׸� ����Ѵ�.<br>
<!-- bean �ν��Ͻ� ���� �׼��±� -->
<jsp:useBean id="tb" class="chapter07.TestBean"/>
<!-- bean�� �� �����ϱ�  property: value: name: -->
<jsp:setProperty property="name" value="ȫ�浿" name="tb"/>
<jsp:setProperty property="age" value="30" name="tb"/>
<!-- bean���� �� ������ -->
<jsp:getProperty property="name" name="tb"/><br>
<jsp:getProperty property="age" name="tb"/><br>
</body>
</html>