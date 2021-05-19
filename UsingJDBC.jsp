<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*" %>
<%-- 
import="java.sql.*" : 자바에서 데이터베이스 관련 라이브러리를 포함
데이터베이스 관련 프로그램 시 반드시 임포트
--%>
<%
//JDBC MySQL 드라이버 로딩
Class.forName("org.gjt.mm.mysql.Driver");
/*
MySQL : "org.gjt.mm.mysql.Driver"
Oracle : "oracle.jdbc.driver.OracleDriver", classes12.zip형태로 드라이버 제공
ODBC 브리지 : "sun.jdbc.odbc.JdbcOdbcDriver"
*/
//지역변수이므로 반드시 초기화하기
Connection con = null; //드라이버 로딩 후 커넥션 객체 생성
Statement stmt = null; //커넥션 생성 후 질의용 객체 생성
ResultSet rs = null; //질의 수행 후 레코드를 받을 객체 생성, select문에만 사용

String id="", passwd="", name="", mem_num1="", mem_num2="", 
	e_mail="", phone="", zipcode="", address="", job="";
int counter=0;
try {
	//커넥션 생성
	con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/jspdb","jspuser","1234");
	/*
	getConnection메서드의 3개 인자 : 
		1.JDBC URL/databaseName 2.DB로그인 계정  3.계정비밀번호
	Oracle : con = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521/디비명","계정","암호");
	ODBC : con = DriverManager.getConnection(
				"jdbc:odbc:DSNname","sa","");
	*/
	//커넥션을 통한 질의 전송용 객체
	stmt = con.createStatement();
	//stmt를 통해 질의를 수행할 메서드 사용, 결과는 ResultSet으로 받는다.
	rs = stmt.executeQuery("select * from member");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP DB연동</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<h2>JSP스크립틀릿 DB연동 예제</h2>
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
	<%
	if(rs != null){
		/*
		next() : 질의 수행결과로 받은 레코드들을 하나씩 받는 메소드
				현재 레코드를 반환하고 다음 레코드를 포인터로 이동시킨다.
				레코드가 있는 동안 질의 수행결과로 받은 레코드들을 하나씩 반환한다.
		*/
		while(rs.next()){
			//각 칼럼에 대한 값을 추출, 칼럼의 데이터형에 따라 get뒤의 데이터형이 달라진다.
			//컬럼명 대신 순서를 통해 값을 가져올 수는 있으나 부득이한 경우를 제외하면 컬럼명을 사용한다.
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
			
			//값 출력부분
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
//데이터베이스 연동 시 필요한 예외처리
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