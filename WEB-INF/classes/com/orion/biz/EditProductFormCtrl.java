package com.orion.biz;

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

import com.orion.model.ProductDAO;

@WebServlet("/EditProductFormCtrl")
public class EditProductFormCtrl extends HttpServlet {
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
			sql = "select * from product where p_num=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, uid);
			rs = stmt.executeQuery();
			ProductDAO product = new ProductDAO();
			if(rs.next()) {
				product.setP_num(rs.getString("p_num"));
				product.setP_name(rs.getString("p_name"));
				product.setP_kind(rs.getString("p_kind"));
				product.setP_price(rs.getInt("p_price"));
				product.setP_sub(rs.getString("p_sub"));
				product.setP_img(rs.getString("p_img"));
			} else {
				response.sendRedirect("ProductListCtrl");
			}
			request.setAttribute("product", product);
			RequestDispatcher view =  request.getRequestDispatcher("p_editProductForm.jsp");
			view.forward(request, response);
			rs.close();
			stmt.close();
			con.close();
		} catch(Exception e) {
			
			e.printStackTrace();
		}
	}

}