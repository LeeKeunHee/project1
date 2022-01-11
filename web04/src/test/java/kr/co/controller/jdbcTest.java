package kr.co.controller;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class jdbcTest {
	private final static String DRIVER = "oracle.jdbc.driver.OracleDriver";
	private final static String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private final static String USER = "system";
	private final static String PW = "1234";
	@Test
	public void testConnection() throws Exception {
		Class.forName(DRIVER);
		try {
			Connection conn = DriverManager.getConnection(URL, USER, PW);
			System.out.println("DB가 제대로 연결되었습니다.");
		} catch(Exception e) {
			System.out.println("DB 연결이 실패되었습니다.");
			e.printStackTrace();
		}
		//fail("Not yet implemented");
	}

}
