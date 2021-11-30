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

@WebServlet("/joinCtrl")
public class joinCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con = null;
		PreparedStatement stmt = null;
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id="scott";
		String db_pw="tiger";
		String sql;
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String m_id = request.getParameter("m_id");
		String m_pw = request.getParameter("m_pw");
		String m_name = request.getParameter("name");
		int m_birth1 = Integer.parseInt(request.getParameter("birth1"));
		int m_birth2 = Integer.parseInt(request.getParameter("birth2"));
		int m_birth3 = Integer.parseInt(request.getParameter("birth3"));
		String m_email = request.getParameter("email");
		String m_tel = request.getParameter("tel");
		String m_zipcode = request.getParameter("zipcode");
		String m_address1 = request.getParameter("address1");
		String m_address2 = request.getParameter("address2");
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection(url, db_id, db_pw);
			sql = "insert into p_mem(m_id, m_pw, m_name, m_birth1, m_birth2, m_birth3, m_email, m_tel, m_zipcode, m_address1, m_address2, regDate) "
					+ "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, m_id);
			stmt.setString(2, m_pw);
			stmt.setString(3, m_name);
			stmt.setInt(4, m_birth1);
			stmt.setInt(5, m_birth2);
			stmt.setInt(6, m_birth3);
			stmt.setString(7, m_email);
			stmt.setString(8, m_tel);
			stmt.setString(9, m_zipcode);
			stmt.setString(10, m_address1);
			stmt.setString(11, m_address2);
			int n = stmt.executeUpdate();
			if(n>=1) {
				
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
