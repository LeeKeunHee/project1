<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>   
<%
		Connection conn = null;
		PreparedStatement stmt = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id="scott";
		String pw="tiger";
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
			conn = DriverManager.getConnection(url, id, pw);
			sql = "insert into p_mem(m_id, m_pw, m_name, m_birth1, m_birth2, m_birth3, m_email, m_tel, m_zipcode, m_address1, m_address2, regDate) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
			stmt = conn.prepareStatement(sql);
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
				//회원가입 성공시 이동
				response.sendRedirect("p_index.jsp");
			} else {
				//회원가입 실패시 이동
				response.sendRedirect("p_join.jsp");
			}
			stmt.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩이 실패되었습니다.");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("DB연결이 실패되었거나 SQL을 처리하지 못했습니다.");
			e.printStackTrace();
		}
%>