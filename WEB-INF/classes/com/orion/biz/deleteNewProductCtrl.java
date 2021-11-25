package com.orion.biz;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteNewProductCtrl")
public class deleteNewProductCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] ck = request.getParameterValues("ck");
		PrintWriter out = response.getWriter();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String db_id = "scott";
		String db_pw = "tiger";
		String sql;
		try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url,db_id,db_pw);
		int cnt = 0;
		for(int i=0; i<ck.length; i++) {
			sql = "delete from n_product where n_num=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, ck[i]);
			cnt ++;
			stmt.executeUpdate();
		}
		if(cnt!=0) {
			
			response.sendRedirect("NewProductDel");
			
			}
		
		} catch(Exception e){
			e.printStackTrace();
		}
	}


}
	
