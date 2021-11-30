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
import javax.servlet.http.HttpSession;

@WebServlet("/ResignCtrl")
public class ResignCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		HttpSession session = request.getSession();
		String m_id = (String) session.getAttribute("id");
		
		Connection con = null;
		PreparedStatement stmt = null;
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "scott";
		String pass = "tiger";
		String sql;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, user, pass);
			sql = "delete from p_mem where m_id=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, m_id);
			int n = stmt.executeUpdate();
			if(n>=1) {
				session.invalidate();
				response.sendRedirect("p_loginpage.jsp");
			} else {
				response.sendRedirect("p_mypage.jsp");
			}
			stmt.close();
			con.close();
		} catch(Exception e ) {
			e.printStackTrace();
			response.sendRedirect("e404.jsp");
		}
	}
}