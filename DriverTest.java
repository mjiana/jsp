package chapter08;

import java.sql.*;

public class DriverTest {

	public static void main(String[] args) {
		Connection con;
		
		try {
			//����Ŭ���� �ε�
			Class.forName("org.gjt.mm.mysql.Driver").newInstance();
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/jspdb","jspuser","1234");
			// ?useUnicode=true&characterEncoding=euckr
			System.out.println("���� ����");
			
		} catch (SQLException ex) {
			System.out.println("SQL exception : "+ex);
		} catch (Exception e) {
			System.out.println("SQL exception : "+e);
		}
	}

}
