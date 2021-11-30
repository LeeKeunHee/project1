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

@WebServlet("/EditNewProductCtrl")
public class EditNewProductCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String n_num = request.getParameter("n_num");
		String n_name = request.getParameter("n_name");
		String n_kind = request.getParameter("n_kind");
		int n_price = Integer.parseInt(request.getParameter("n_price"));
		String n_sub = request.getParameter("n_sub");
		String n_img = request.getParameter("n_img");
		
		Connection con = null;
		PreparedStatement stmt = null;
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "scott";
		String db_pw = "tiger";
		String sql;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection(url, db_id, db_pw);
			sql = "update n_product set n_name=?, n_kind=?, n_price=?, n_sub=?, n_img=? where n_num=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, n_name);
			stmt.setString(2, n_kind);
			stmt.setInt(3, n_price);
			stmt.setString(4, n_sub);
			stmt.setString(5, n_img);
			stmt.setString(6, n_num);
			int n = stmt.executeUpdate();
			if(n>= 1) { 
				response.sendRedirect("NewProductListCtrl");
			} else {
				response.sendRedirect("NewProductListCtrl");
			}
			stmt.close();
			con.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
