package com.orion.biz;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.orion.model.MemberDAO;

@WebServlet("/MemberDel")
public class MemberDel extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "scott";
		String db_pw = "tiger";
		String sql;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection(url, db_id, db_pw);
			sql = "select * from p_mem";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			ArrayList<MemberDAO> memberList = new ArrayList<MemberDAO>();
			//select로 검색한 데이터를 저장할 공간 마련 
			while(rs.next()) {
				String id = rs.getString("m_id");
				String pw = rs.getString("m_pw");
				String name = rs.getString("m_name");
				int birth1 = rs.getInt("m_birth1");
				int birth2 = rs.getInt("m_birth2");
				int birth3 = rs.getInt("m_birth3");
				String email = rs.getString("m_email");
				String tel = rs.getString("m_tel");
				String zipcode = rs.getString("m_zipcode");
				String address1 = rs.getString("m_address1");
				String address2 = rs.getString("m_address2");
				Date regdate = rs.getDate("regdate");
				
				MemberDAO mem = new MemberDAO();
				mem.setM_id(id);
				mem.setM_pw(pw);
				mem.setM_name(name);
				mem.setM_birth1(birth1);
				mem.setM_birth2(birth2);
				mem.setM_birth3(birth3);
				mem.setM_email(email);
				mem.setM_tel(tel);
				mem.setM_zipcode(zipcode);
				mem.setM_address1(address1);
				mem.setM_address2(address2);
				mem.setRegdate(regdate);
				
				memberList.add(mem); //DAO에 담긴 여러 건의 데이터를 List에 담는다.
			}
			request.setAttribute("memberList", memberList);
			RequestDispatcher view = request.getRequestDispatcher("p_memberDel.jsp"); //보내질곳 지정
			view.forward(request, response); //지정한 URL로 데이터를 송신
			rs.close();
			stmt.close();
			con.close();
		} catch(Exception e) {
			response.sendRedirect("e404.jsp");
			e.printStackTrace();
		}
	}

}
