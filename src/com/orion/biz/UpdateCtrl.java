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


@WebServlet("/UpdateCtrl")
public class UpdateCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String m_id = request.getParameter("m_id");
		String m_pw = request.getParameter("m_pw");
		String m_name = request.getParameter("m_name");
		int m_birth1 = Integer.parseInt(request.getParameter("m_birth1"));
		int m_birth2 = Integer.parseInt(request.getParameter("m_birth2"));
		int m_birth3 = Integer.parseInt(request.getParameter("m_birth3"));
		String m_email = request.getParameter("m_email");
		String m_tel = request.getParameter("m_tel");
		String m_zipcode = request.getParameter("m_zipcode");
		String m_address1 = request.getParameter("m_address1");
		String m_address2 = request.getParameter("m_address2");
		
		
		//연결자/상태코드/DB 접속 정보/sql 변수 선언
		Connection con = null;
		PreparedStatement stmt = null;
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "scott";
		String db_pw = "tiger";
		String sql;
		try {
			//드라이버로딩/연결/상태정보로딩
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection(url, db_id, db_pw);
			sql = "update p_mem set m_name=?, m_pw=?, m_birth1=?, m_birth2=?, m_birth3=?, m_email=?, m_tel=?, m_zipcode=?, m_address1=?, m_address2=? where m_id=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, m_name);
			stmt.setString(2, m_pw);
			stmt.setInt(3, m_birth1);
			stmt.setInt(4, m_birth2);
			stmt.setInt(5, m_birth3);
			stmt.setString(6, m_email);
			stmt.setString(7, m_tel);
			stmt.setString(8, m_zipcode);
			stmt.setString(9, m_address1);
			stmt.setString(10, m_address2);
			stmt.setString(11, m_id);
			
			int cnt = stmt.executeUpdate();
			if(cnt >= 1) { 
				response.sendRedirect("p_mypage.jsp");
			} else {
				response.sendRedirect("index.jsp");
			}
		} catch(Exception e) {
			response.sendRedirect("e404.jsp");
			e.printStackTrace();
		}
	}

}
