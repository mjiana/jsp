<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<% 
request.setCharacterEncoding("euc-kr"); 
String season = request.getParameter("season");
String fruit = request.getParameter("fruit");
//���Ǻ��� ����ȯ
String id = (String)session.getAttribute("idKey");
//�ĺ��ڰ�
String sessionId = session.getId();
int time = session.getMaxInactiveInterval();
%>
<body>
<%
if(id != null){
%>
	<b><%=id %></b>���� �����ϴ� ������ ������ <p>
	<b><%=season %></b>�� <b><%=fruit %></b>�Դϴ�.</p>
	
	����ID : <%=sessionId %><p>
	���� �����ð� : <%=time %>��
	</p>
<%
	//���� ����
	session.invalidate();
} else{
	out.print("���� �ð��� �ʰ��Ͽ��ų� �ٸ� ������ ������ �� �����ϴ�.");
}
%>
</body>
</html>