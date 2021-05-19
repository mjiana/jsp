package chapter09;

import java.sql.*;
import java.util.*;
import ch09.*;

public class MemberMgrPool {
	private DBConnectionMgr pool = null;
	
	public MemberMgrPool() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch (Exception e) {
			System.out.println("로딩 실패 "+e);
		}
	}//MemberMgrPool() end
	
	public Vector getMemberList() {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		Vector vecList = new Vector();
		
		try {
			con = pool.getConnection();
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
			pool.freeConnection(con, stmt, rs);
		} //finally end
		return vecList;
	}//getMemberList() end
	
}//class end
