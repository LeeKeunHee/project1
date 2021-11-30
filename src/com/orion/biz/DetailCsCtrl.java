package com.orion.biz;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DetailCsCtrl")
public class DetailCsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String cs_id = request.getParameter("cs_id");
		String cs_name = request.getParameter("cs_name");
		String cs_title = request.getParameter("cs_title");
		String cs_sub = request.getParameter("cs_sub");
		String cs_file = request.getParameter("cs_file");
		
		//연결자/상태코드/DB 접속 정보/sql 변수 선언
		Connection con = null;
		PreparedStatement stmt = null;
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "scott";
		String db_pw = "tiger";
		String sql;
		try {
			//드라이버로딩/연결/상태정보로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, db_id, db_pw);
			sql = "update cs set cs_title=?, cs_sub=?, cs_file=? where cs_id=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, cs_title);
			stmt.setString(2, cs_sub);
			stmt.setString(3, cs_file);
			stmt.setString(4, cs_id);
			int cnt = stmt.executeUpdate();
			if(cnt >= 1) { 
				response.sendRedirect("CsListCtrl2");
			} else {
				response.sendRedirect("CsListCtrl2");
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}