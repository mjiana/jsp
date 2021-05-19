package chapter09;

import java.sql.*;
import java.util.*;
import chapter09.RegisterBean;

public class MemberMgr {
	public final String JDBC_DRIVER = "org.gjt.mm.mysql.Driver";
	public final String JDBC_URL = "jdbc:mysql://localhost:3306/jspdb";
	public final String USER = "jspuser";
	public final String PASS = "1234";
	
	public MemberMgr() {
		try {
			Class.forName(JDBC_DRIVER);
		} catch (Exception e) {
			System.out.println("JDBC드라이버 로딩 실패 "+e);
		}
	}//MemberMgr() end
	
	public Vector getMemberList() {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		Vector vecList = new Vector();
		
		try {
			con = DriverManager.getConnection(JDBC_URL, USER, PASS);
			String strQuery = "select * from member";
			stmt = con.createStatement();
			rs = stmt.executeQuery(strQuery);
			while(rs.next()) {
				RegisterBean rb = new RegisterBean();
				rb.setMem_id(rs.getString("id"));
				rb.setMem_passwd(rs.getString("passwd"));
				rb.setMem_name(rs.getString("name"));
				rb.setMem_num1(rs.getString("mem_num1"));
				rb.setMem_num2(rs.getString("mem_num2"));
				rb.setMem_email(rs.getString("e_mail"));
				rb.setMem_phone(rs.getString("phone"));
				rb.setMem_zipcode(rs.getString("zipcode"));
				rb.setMem_address(rs.getString("address"));
				rb.setMem_job(rs.getString("job"));
				vecList.add(rb);
			}//while end
		} catch (Exception e) {
			System.out.println("Exception "+e);
		} finally {
			if(rs != null) try{ rs.close(); } catch(SQLException ex) {}
			if(stmt != null) try{ stmt.close(); } catch(SQLException ex) {}
			if(con != null) try{ con.close(); } catch(SQLException ex) {}
		} //finally end
		return vecList;
	}//getMemberList() end
	
}//class end
