package com.orion.biz;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddNoticeCtrl")
public class AddNoticeCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String n_id = request.getParameter("n_id");
		String n_name = request.getParameter("n_name");
		String n_title = request.getParameter("n_title");
		String n_sub = request.getParameter("n_sub");
		String n_file = request.getParameter("n_file");
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
			sql = "insert into notice values(seq_num.NEXTVAL, ?, ?, ?, ?, sysdate, ?)";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, n_id);
			stmt.setString(2, n_name);
			stmt.setString(3, n_title);
			stmt.setString(4, n_sub);
			stmt.setString(5, n_file);
			int cnt = stmt.executeUpdate();
			if(cnt >= 1) { 
				response.sendRedirect("NoticeListCtrl");
			} else {
				response.sendRedirect("p_insertNotice.jsp");
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
	