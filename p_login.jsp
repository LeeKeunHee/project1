<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	String m_id = request.getParameter("m_id"); 
	String m_pw = request.getParameter("m_pw");
	
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String id="scott";
	String pw="tiger";
	String sql;
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, id, pw);
		sql = "select * from p_mem where m_id=? and m_pw=?";
		ps = con.prepareStatement(sql);
		ps.setString(1, m_id);
		ps.setString(2, m_pw);
		rs = ps.executeQuery();
		
		if(rs.next()){
			session.setAttribute("id", rs.getString("m_id"));
			session.setAttribute("pw", rs.getString("m_pw"));
			session.setAttribute("name", rs.getString("m_name"));
			m_id = rs.getString("m_id");
			m_pw = rs.getString("m_pw");
			if(m_id.equals("admin") && m_pw.equals("1234")){
				response.sendRedirect("p_admin.jsp");
			}else{
			response.sendRedirect("p_index.jsp");				
			}
		} else {
			response.sendRedirect("p_login.html");
		}
		rs.close();
		ps.close();
		con.close();
	} catch(Exception e) {
		response.sendRedirect("e500.html");
		//out.print("시스템 오류 입니다.");
	}
%>