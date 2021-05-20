<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="memMgr" class="ch11.MemberMgr"/>
<jsp:useBean id="regBean" class="ch11.RegisterBean"/>
<jsp:setProperty property="*" name="regBean"/>
<% boolean flag = memMgr.memberInsert(regBean); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 추가</title>
<link rel="stylesheet" type="text/css" href="Reg_style.css">
</head>
<body>
<br>
<%
if(flag){
%>
	<p> <b>회원가입을 축하드립니다.</b> </p>
	<p> <input type="button" value="로그인" onclick="location.href='Login.jsp'"> </p> 
<%
} else{
%>
	<p> <b>다시 입력하여 주십시오.</b> </p>
	<p> <input type="button" value="다시 가입" onclick="location.href='Register.jsp'"> </p> 
<%
}
%>
</body>
</html>