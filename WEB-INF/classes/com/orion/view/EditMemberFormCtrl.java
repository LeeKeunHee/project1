package com.orion.view;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.orion.model.MemberDAO;

@WebServlet("/EditMemberFromCtrl")
public class EditMemberFormCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String m_id = request.getParameter("id");
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String db_id = "scott";
		String db_pw = "tiger";
		String sql;
		try { 
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection(url, db_id, db_pw);
			sql = "select * from p_mem where m_id=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, m_id);
			rs = stmt.executeQuery();
			MemberDAO mem = new MemberDAO();
			if(rs.next()) {
				mem.setM_id(rs.getString("m_id"));
				mem.setM_pw(rs.getString("m_pw"));
				mem.setM_name(rs.getString("m_name"));
				mem.setM_birth1(rs.getInt("m_birth1"));
				mem.setM_birth2(rs.getInt("m_birth2"));
				mem.setM_birth3(rs.getInt("m_birth3"));
				mem.setM_email(rs.getString("m_email"));
				mem.setM_tel(rs.getString("m_tel"));
				mem.setM_zipcode(rs.getString("m_zipcode"));
				mem.setM_address1(rs.getString("m_address1"));
				mem.setM_address2(rs.getString("m_address2"));
				mem.setRegdate(rs.getDate("regdate"));
				
			
			} else {
				response.sendRedirect("MemberListCtrl");
			}
			request.setAttribute("mem", mem);
			RequestDispatcher view =  request.getRequestDispatcher("p_editMemberForm.jsp");
			view.forward(request, response);
			rs.close();
			stmt.close();
			con.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}