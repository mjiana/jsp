package board;

import java.sql.*;
import java.util.*;
import mydb.poolfact.*;

public class BoardQuery {
	String board = "board2"; //table name
	String idxNum = "board2_idx_seq.naxtval"; //sequence
	ConnectionPool pool = null; 
	
	//객체가 생성될 때 연결
	public BoardQuery() {
		try {
			pool = ConnectionPool.getInstance();
		} catch (Exception e) {
			System.out.println("연결실패 "+ e);
		}
	}//BoardQury() end
	
	
}// class end
