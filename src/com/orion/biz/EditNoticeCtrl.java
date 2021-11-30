package com.orion.biz;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EditNoticeCtrl")
public class EditNoticeCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		int n_num = Integer.parseInt(request.getParameter("n_num"));
		String n_id = request.getParameter("n_id");
		String n_name = request.getParameter("n_name");
		String n_title = request.getParameter("n_title");
		String n_sub = request.getParameter("n_sub");
		String n_file = request.getParameter("n_file");
		
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
			sql = "update notice set n_title=?, n_sub=?, n_file=? where n_id=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, n_title);
			stmt.setString(2, n_sub);
			stmt.setString(3, n_file);
			stmt.setString(4, n_id);
			int cnt = stmt.executeUpdate();
			if(cnt >= 1) { 
				response.sendRedirect("NoticeListCtrl");
			} else {
				response.sendRedirect("NoticeListCtrl");
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}