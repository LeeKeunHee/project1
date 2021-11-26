package com.orion.view;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.orion.model.ProductDAO;

@WebServlet("/ProductListCtrl")
public class ProductListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String db_id = "scott";
		String db_pw = "tiger";
		String sql ;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection(url, db_id, db_pw);
			sql = "select * from product";
			stmt = con.prepareStatement(sql); 
			rs = stmt.executeQuery();
			ArrayList<ProductDAO> productList = new ArrayList<ProductDAO>();
			while(rs.next()) {
				String num = rs.getString("p_num");
				String name = rs.getString("p_name");
				String kind = rs.getString("p_kind");
				int price = rs.getInt("p_price");
				String sub = rs.getString("p_sub");
				String img = rs.getString("p_img");
				
				ProductDAO product = new ProductDAO();
				product.setP_num(num);
				product.setP_name(name);
				product.setP_kind(kind);
				product.setP_price(price);
				product.setP_sub(sub);
				product.setP_img(img);
				
				productList.add(product);
			}
			request.setAttribute("productList", productList);
			RequestDispatcher view = request.getRequestDispatcher("p_productList.jsp");
			view.forward(request, response);
			rs.close();
			stmt.close();
			con.close();
			
		} catch(Exception e) {
			response.sendRedirect("e404.jsp");
			e.printStackTrace();
		}
		
	}

}
