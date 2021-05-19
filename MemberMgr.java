package chapter10;

import java.sql.*;

public class MemberMgr {

	private DBConnectionMgr pool;
	
	public MemberMgr() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch (Exception e) {
			System.out.println("Error 커넥션 연결 실패 \n "+e);
		}
	}//MemberMgr() end
	
	public boolean passCheck(String cust_id, String cust_pw) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean result = false;
		
		try {
			con = pool.getConnection();
			String query = "select count(*) from member where id=? and passwd=?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, cust_id);
			pstmt.setString(2, cust_pw);
			rs = pstmt.executeQuery();
			rs.next();
			if(rs.getInt(1)>0) result = true;
		} catch (Exception e) {
			System.out.println("Exception : "+e);
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return result;
	}//passCheck end
}//class end
