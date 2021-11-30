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

import com.orion.model.NewProductDAO;

@WebServlet("/NewProductListCtrl")
public class NewProductListCtrl extends HttpServlet {
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
			sql = "select * from n_product";
			stmt = con.prepareStatement(sql); 
			rs = stmt.executeQuery();
			ArrayList<NewProductDAO> newProductList = new ArrayList<NewProductDAO>();
			while(rs.next()) {
				String num = rs.getString("n_num");
				String name = rs.getString("n_name");
				String kind = rs.getString("n_kind");
				int price = rs.getInt("n_price");
				String sub = rs.getString("n_sub");
				String img = rs.getString("n_img");
				
				NewProductDAO newProduct = new NewProductDAO();
				newProduct.setN_num(num);
				newProduct.setN_name(name);
				newProduct.setN_kind(kind);
				newProduct.setN_price(price);
				newProduct.setN_sub(sub);
				newProduct.setN_img(img);
				
				newProductList.add(newProduct);
			}
			request.setAttribute("newProductList", newProductList);
			RequestDispatcher view = request.getRequestDispatcher("p_newProductList.jsp");
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