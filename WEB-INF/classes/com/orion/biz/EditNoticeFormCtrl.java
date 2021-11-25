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

import com.orion.model.NoticeDAO;

@WebServlet("/EditNoticeFormCtrl")
public class EditNoticeFormCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String n_num = request.getParameter("id");
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
			sql = "select * from notice where n_num=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, n_num);
			rs = stmt.executeQuery();
			NoticeDAO notice = new NoticeDAO();
			
			if(rs.next()) {
				notice.setN_num(rs.getInt("n_num"));
				notice.setN_name(rs.getString("n_name"));
				notice.setN_title(rs.getString("n_title"));
				notice.setN_sub(rs.getString("n_sub"));
				notice.setN_date(rs.getDate("n_date"));
				notice.setN_file(rs.getString("n_file"));
			} else {
				response.sendRedirect("NoticeListCtrl");
			}
			request.setAttribute("notice", notice);
			RequestDispatcher view = request.getRequestDispatcher("p_editNoticeForm.jsp");
			view.forward(request, response);
			rs.close();
			stmt.close();
			con.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
