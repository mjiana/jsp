<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String name = "JSPstudy";
String bType = request.getParameter("bloodType");
%>
<jsp:forward page='<%="ForwardTag2_"+bType+".jsp" %>'>
	<jsp:param value="<%=name %>" name="name" />
</jsp:forward>