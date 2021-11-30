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

@WebServlet("/EditProductCtrl")
public class EditProductCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String p_num = request.getParameter("p_num");
		String p_name = request.getParameter("p_name");
		String p_kind = request.getParameter("p_kind");
		int p_price = Integer.parseInt(request.getParameter("p_price"));
		String p_sub = request.getParameter("p_sub");
		String p_img = request.getParameter("p_img");
		
		Connection con = null;
		PreparedStatement stmt = null;
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "scott";
		String db_pw = "tiger";
		String sql;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection(url, db_id, db_pw);
			sql = "update product set p_name=?, p_kind=?, p_price=?, p_sub=?, p_img=? where p_num=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, p_name);
			stmt.setString(2, p_kind);
			stmt.setInt(3, p_price);
			stmt.setString(4, p_sub);
			stmt.setString(5, p_img);
			stmt.setString(6, p_num);
			int n = stmt.executeUpdate();
			if(n>= 1) { 
				response.sendRedirect("ProductListCtrl");
			} else {
				response.sendRedirect("ProductListCtrl");
			}
			stmt.close();
			con.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
