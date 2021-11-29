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

import com.orion.model.NewProductDAO;

@WebServlet("/EditNewProductFormCtrl")
public class EditNewProductFormCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String uid = request.getParameter("id");
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
			sql = "select * from n_product where n_num=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, uid);
			rs = stmt.executeQuery();
			NewProductDAO newproduct = new NewProductDAO();
			if(rs.next()) {
				newproduct.setN_num(rs.getString("n_num"));
				newproduct.setN_name(rs.getString("n_name"));
				newproduct.setN_kind(rs.getString("n_kind"));
				newproduct.setN_price(rs.getInt("n_price"));
				newproduct.setN_sub(rs.getString("n_sub"));
				newproduct.setN_img(rs.getString("n_img"));
			} else {
				response.sendRedirect("NewProductListCtrl");
			}
			request.setAttribute("newproduct", newproduct);
			RequestDispatcher view =  request.getRequestDispatcher("p_editNewProductForm.jsp");
			view.forward(request, response);
			rs.close();
			stmt.close();
			con.close();
		} catch(Exception e) {
			
			e.printStackTrace();
		}
	}	
}	