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

@WebServlet("/AddCsCtrl")
public class AddCsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String cs_id = request.getParameter("cs_id");
		String cs_name = request.getParameter("cs_name");
		String cs_title = request.getParameter("cs_title");
		String cs_sub = request.getParameter("cs_sub");
		String cs_file = request.getParameter("cs_file");
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
			sql = "insert into cs values(seq_cs_num.NEXTVAL, ?,  ?, ?, ?, sysdate, ?)";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, cs_id);
			stmt.setString(2, cs_name);
			stmt.setString(3, cs_title);
			stmt.setString(4, cs_sub);
			stmt.setString(5, cs_file);
			int cnt = stmt.executeUpdate();
			if(cnt >= 1) { 
				response.sendRedirect("CsListCtrl2");
			} else {
				response.sendRedirect("p_insertCs.jsp");
			}
		} catch(Exception e) {
			e.printStackTrace();
			
		}
	}
}

