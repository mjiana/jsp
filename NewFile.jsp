<%@ page language="java" 
	contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
out.flush();
//<=out.flush()>�� ����
/*
������ ����Ʈ ũ��� 8kb, �ּ� ���۷��� 512byte
�ּ� ���۷��� �����߸� ������ �ڵ����� ������� �����Ƿ� 
html�� ��ٸ��� �ʰ� ��ü������ ����ó���� �ع�����.
�׷��Ƿ� out.flush();�� ���� �ϴ� ������ ���� �����ְ� 
�غ� �Ϸ�Ǹ� �ٽ� ������ ������.
*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
contentType="text/html; charset=EUC-KR" : ���� �������� �ѱ��� ���ԵǾ� ������ �������� �˸�
 �ǵ帮�� ��Ŭ������ ������ �Ƚ����ش�.<br>
pageEncoding="EUC-KR" : Ŭ���̾�Ʈ���� �ѱ۷� ���ڵ��ؼ� ����<br>
meta charset="EUC-KR" : ���������� ���빰�� �ѱ��� ������ �˸�
</body>
</html>