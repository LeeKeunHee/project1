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

import com.orion.model.CsDAO;

@WebServlet("/DetailCsFormCtrl")
public class DetailCsFormCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cs_id = request.getParameter("id");
		String num = request.getParameter("num");
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
			sql = "select * from cs where cs_id=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, cs_id);
			rs = stmt.executeQuery();
			CsDAO cs = new CsDAO();
			
			if(rs.next()) {
				cs.setCs_num(rs.getInt("cs_num"));
				cs.setCs_id(rs.getString("cs_id"));
				cs.setCs_name(rs.getString("cs_name"));
				cs.setCs_title(rs.getString("cs_title"));
				cs.setCs_sub(rs.getString("cs_sub"));
				cs.setCs_date(rs.getDate("cs_date"));
				cs.setCs_file(rs.getString("cs_file"));
				cs.setNum(num);
			} else {
				response.sendRedirect("DetailCsCtrl");
			}
			request.setAttribute("cs", cs);
			RequestDispatcher view = request.getRequestDispatcher("p_detailCs.jsp");
			view.forward(request, response);
			rs.close();
			stmt.close();
			con.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
