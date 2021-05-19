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

out.print("내장 객체를 이용한 출력"+declaration+"<p>");
%>

선언문의 출력1 : <%=declaration %><p>
선언문의 출력2 : <%=decMethod() %><p>
스크립틀릿의 출력 : <%=scriptlet %><p>
<!-- jsp 주석 부분 -->
<!-- jsp 주석: <%=comment%> --><p>
<%-- jsp 주석 2 : <%=comment%> --%>
<% /* 주석
(여러줄 주석)
*/ 
//한줄 주석
%>

</body>
</html>