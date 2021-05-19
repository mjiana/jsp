<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, chapter09.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP Bean DB 연동</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<h2>Bean을 사용한 데이터베이스 연동 예제</h2>
<br>
<h3>회원정보</h3>
<table border="1">
	<tr>
		<td><b>ID</b></td>
		<td><b>PASSWD</b></td>
		<td><b>NAME</b></td>
		<td><b>MEM_NUM1</b></td>
		<td><b>MEM_NUM2</b></td>
		<td><b>E_MAIL</b></td>
		<td><b>PHONE</b></td>
		<td><b>ZIPCODE</b></td>
		<td><b>ADDRESS</b></td>
		<td><b>JOB</b></td>
	</tr>
	
	<jsp:useBean id="memMgr" class="chapter09.MemberMgr"/>
	
	<%
	Vector vlist = memMgr.getMemberList();
	int counter = vlist.size();
	for(int i=0; i<vlist.size(); i++){
		RegisterBean rb = (RegisterBean)vlist.elementAt(i);
	%>
	<tr>
		<td><%=rb.getMem_id() %></td>
		<td><%=rb.getMem_passwd() %></td>
		<td><%=rb.getMem_name() %></td>
		<td><%=rb.getMem_num1() %></td>
		<td><%=rb.getMem_num2() %></td>
		<td><%=rb.getMem_email() %></td>
		<td><%=rb.getMem_phone() %></td>
		<td><%=rb.getMem_zipcode() %></td>
		<td><%=rb.getMem_address() %></td>
		<td><%=rb.getMem_job() %></td>	
	</tr>
	<%
	} //for end
	%>
	</table>
	<br><br>
	total records : <%=counter %>
</body>
</html>