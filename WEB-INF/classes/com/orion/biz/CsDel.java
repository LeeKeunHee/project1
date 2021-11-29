package com.orion.biz;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.orion.model.CsDAO;


@WebServlet("/CsDel")
public class CsDel extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "scott";
		String db_pw = "tiger";
		String sql;
		try { 
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection(url, db_id, db_pw);
			sql = "select * from cs order by cs_date desc";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			ArrayList<CsDAO> CsList = new ArrayList<CsDAO>();
			while(rs.next()) {
				int cs_num = rs.getInt("cs_num");
				String cs_id = rs.getString("cs_id");
				String cs_name = rs.getString("cs_name");
				String cs_title = rs.getString("cs_title");
				String cs_sub = rs.getString("cs_sub");
				Date cs_date = rs.getDate("cs_date");
				String cs_file = rs.getString("cs_file");
				
				CsDAO cs = new CsDAO();
				cs.setCs_num(cs_num);
				cs.setCs_id(cs_id);
				cs.setCs_name(cs_name);
				cs.setCs_title(cs_title);
				cs.setCs_sub(cs_sub);
				cs.setCs_date(cs_date);
				cs.setCs_file(cs_file);
				
				CsList.add(cs);
			}
			request.setAttribute("CsList", CsList); // 
			RequestDispatcher view = request.getRequestDispatcher("p_CsDel.jsp"); 
			view.forward(request, response); 
			rs.close();
			stmt.close();
			con.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
