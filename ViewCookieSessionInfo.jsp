<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������Ű Ȯ�� ����</title>
</head>
<body>
<jsp:include page="ViewSessionInfo.jsp"/>
������Ű------------------------------------------<br>
<%--  
<jsp:include page="TasteCookie.jsp"/>�� ����ϸ� �����ϰ� �������� 
15��° �ٿ� ���� ���þ��� ������Ű�� ������� �ʱ����� ������� if���� �ɷ��� �ּ�ó��
if(!cookies[i].getName().equals("JSESSIONID"))
--%>
<%
Cookie [] cookies = request.getCookies();
if(cookies != null){
	for(int i=0; i<cookies.length; ++i){
		%>
			<p>
			Cookie Name = <%=cookies[i].getName() %><br>
			Cookie Value = <%=cookies[i].getValue() %>
			</p>
		<%
	}//for end
}//if end
%>
</body>
</html>