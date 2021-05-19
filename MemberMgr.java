package ch11;

import java.util.*;
import java.sql.*;

//DAO
public class MemberMgr {
	private DBConnectionMgr pool = null;
	
	public MemberMgr() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch (Exception e) {
			System.out.println("Ŀ�ؼ� ���� : "+e);
		}
	}//������ end
	
	//ID�ߺ�üũ
	public boolean checkId(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean checkCon = false;
		
		try {
			con = pool.getConnection();
			String strQuery = "select id from member where id = ?";
			pstmt = con.prepareStatement(strQuery);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			checkCon = rs.next();
		} catch (Exception e) {
			System.out.println("Exception : "+e);
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return checkCon;
	}//checkId end
	
	//�����ȣ
	public Vector zipcodeRead(String area3) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Vector vecList = new Vector();
		
		try {
			con = pool.getConnection();
			// ?�� ����� �� ����. stmt�� ����ص� ����
			String strQuery = 
					"select * from zipcode where area3 like '"+area3+"%'";
			pstmt = con.prepareStatement(strQuery);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ZipcodeBean tempZipcode = new ZipcodeBean();
				tempZipcode.setZipcode(rs.getString("zipcode"));
				tempZipcode.setArea1(rs.getString("area1"));
				tempZipcode.setArea2(rs.getString("area2"));
				tempZipcode.setArea3(rs.getString("area3"));
				tempZipcode.setArea4(rs.getString("area4"));
				vecList.addElement(tempZipcode);
			}//while end
		} catch (Exception e) {
			System.out.println("zipcode Exception : "+e);
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vecList;
	}
}
