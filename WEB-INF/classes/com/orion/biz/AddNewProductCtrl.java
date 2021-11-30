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

import com.oreilly.servlet.MultipartRequest;

@WebServlet("/AddNewProductCtrl")
public class AddNewProductCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		MultipartRequest multi = null;
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
			//드라이버로딩/연결/상태정보로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, db_id, db_pw);
			sql = "insert into n_product values(?, ?, ?, ?, ? ,?)";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, n_num);
			stmt.setString(2, n_name);
			stmt.setString(3, n_kind);
			stmt.setInt(4, n_price);
			stmt.setString(5, n_sub);
			stmt.setString(6, n_img);
			int cnt = stmt.executeUpdate();
			if(cnt >= 1) { 
				response.sendRedirect("NewProductListCtrl");
			} else {
				response.sendRedirect("p_insertNewProduct.jsp");
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}