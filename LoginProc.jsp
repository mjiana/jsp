<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="memMgr" class="ch11.MemberMgr"/>
<%
String mem_id = request.getParameter("mem_id");
String mem_passwd = request.getParameter("mem_passwd");
boolean loginCheck = memMgr.loginCheck(mem_id, mem_passwd);

if(loginCheck){
	session.setAttribute("idKey", mem_id);
	response.sendRedirect("Login.jsp");
}else{
	response.sendRedirect("LogError.jsp");
}
%>