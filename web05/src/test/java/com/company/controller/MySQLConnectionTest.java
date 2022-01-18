package com.company.controller;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class MySQLConnectionTest {
	private final static String DRIVER = "com.mysql.cj.jdbc.Driver";
	private final static String URL = "jdbc:mysql://localhost:3306/project?serverTimezone=UTC";
	private final static String USER = "root";
	private final static String PW = "1234";
	@Test
	public void testConnection() throws Exception {
		Class.forName(DRIVER);
		try {
			Connection conn = DriverManager.getConnection(URL, USER, PW);
			System.out.println("DB연결성공");
		} catch(Exception e) {
			System.out.println("DB연결실패");
			e.printStackTrace();
		}
		//fail("Not yet implemented");
	}

}
