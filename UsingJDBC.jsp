<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*" %>
<%-- 
import="java.sql.*" : �ڹٿ��� �����ͺ��̽� ���� ���̺귯���� ����
�����ͺ��̽� ���� ���α׷� �� �ݵ�� ����Ʈ
--%>
<%
//JDBC MySQL ����̹� �ε�
Class.forName("org.gjt.mm.mysql.Driver");
/*
MySQL : "org.gjt.mm.mysql.Driver"
Oracle : "oracle.jdbc.driver.OracleDriver", classes12.zip���·� ����̹� ����
ODBC �긮�� : "sun.jdbc.odbc.JdbcOdbcDriver"
*/
//���������̹Ƿ� �ݵ�� �ʱ�ȭ�ϱ�
Connection con = null; //����̹� �ε� �� Ŀ�ؼ� ��ü ����
Statement stmt = null; //Ŀ�ؼ� ���� �� ���ǿ� ��ü ����
ResultSet rs = null; //���� ���� �� ���ڵ带 ���� ��ü ����, select������ ���

String id="", passwd="", name="", mem_num1="", mem_num2="", 
	e_mail="", phone="", zipcode="", address="", job="";
int counter=0;
try {
	//Ŀ�ؼ� ����
	con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/jspdb","jspuser","1234");
	/*
	getConnection�޼����� 3�� ���� : 
		1.JDBC URL/databaseName 2.DB�α��� ����  3.������й�ȣ
	Oracle : con = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521/����","����","��ȣ");
	ODBC : con = DriverManager.getConnection(
				"jdbc:odbc:DSNname","sa","");
	*/
	//Ŀ�ؼ��� ���� ���� ���ۿ� ��ü
	stmt = con.createStatement();
	//stmt�� ���� ���Ǹ� ������ �޼��� ���, ����� ResultSet���� �޴´�.
	rs = stmt.executeQuery("select * from member");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP DB����</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<h2>JSP��ũ��Ʋ�� DB���� ����</h2>
<br>
<h3>ȸ������</h3>
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
	<%
	if(rs != null){
		/*
		next() : ���� �������� ���� ���ڵ���� �ϳ��� �޴� �޼ҵ�
				���� ���ڵ带 ��ȯ�ϰ� ���� ���ڵ带 �����ͷ� �̵���Ų��.
				���ڵ尡 �ִ� ���� ���� �������� ���� ���ڵ���� �ϳ��� ��ȯ�Ѵ�.
		*/
		while(rs.next()){
			//�� Į���� ���� ���� ����, Į���� ���������� ���� get���� ���������� �޶�����.
			//�÷��� ��� ������ ���� ���� ������ ���� ������ �ε����� ��츦 �����ϸ� �÷����� ����Ѵ�.
			id = rs.getString("id");
			passwd = rs.getString("passwd");
			name = rs.getString("name");
			mem_num1 = rs.getString("mem_num1");
			mem_num2 = rs.getString("mem_num2");
			e_mail = rs.getString("e_mail");
			phone = rs.getString("phone");
			zipcode = rs.getString("zipcode");
			address = rs.getString("address");
			job = rs.getString("job");
			
			//�� ��ºκ�
	%>
	<tr>
		<td><%=id %></td>
		<td><%=passwd %></td>
		<td><%=name %></td>
		<td><%=mem_num1 %></td>
		<td><%=mem_num2 %></td>
		<td><%=e_mail %></td>
		<td><%=phone %></td>
		<td><%=zipcode %></td>
		<td><%=address %></td>
		<td><%=job %></td>
	</tr>
	<%
			counter++;
		}// while end
	}//if end
	%>
</table>
<br><br>
</body>
</html>
<%
//�����ͺ��̽� ���� �� �ʿ��� ����ó��
} catch (SQLException ex) {
	System.out.println("SQL exception : "+ex);
} catch (Exception e) {
	System.out.println("SQL exception : "+e);
} finally{
	if(rs != null) { 
		try{ rs.close(); } catch(SQLException ex) {}
	}
	if(stmt != null) { 
		try{ stmt.close(); } catch(SQLException ex) {}
	}
	if(con != null) { 
		try{ con.close(); } catch(SQLException ex) {}
	}
}
%>