<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR"> 
<title>JSP Example1</title>
</head>
<body>
<h1>Script Example1</h1>
<%!
String declaration = "Declaration";

public String decMethod() {
	return declaration;
}
%>
<% 
String scriptlet = "Scriptlet";
String comment = "Comment";

out.print("���� ��ü�� �̿��� ���"+declaration+"<p>");
%>

������ ���1 : <%=declaration %><p>
������ ���2 : <%=decMethod() %><p>
��ũ��Ʋ���� ��� : <%=scriptlet %><p>
<!-- jsp �ּ� �κ� -->
<!-- jsp �ּ�: <%=comment%> --><p>
<%-- jsp �ּ� 2 : <%=comment%> --%>
<% /* �ּ�
(������ �ּ�)
*/ 
//���� �ּ�
%>

</body>
</html>