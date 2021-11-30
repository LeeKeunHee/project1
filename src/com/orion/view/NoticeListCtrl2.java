package com.orion.view;

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

import com.orion.model.NoticeDAO;


@WebServlet("/NoticeListCtrl2")
public class NoticeListCtrl2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
			sql = "select * from notice order by n_date desc";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			ArrayList<NoticeDAO> noticeList= new ArrayList<NoticeDAO>();
			while(rs.next()) {
				int num = rs.getInt("n_num");
				String id = rs.getString("n_id");
				String name = rs.getString("n_name");
				String title = rs.getString("n_title");
				String sub = rs.getString("n_sub");
				Date date = rs.getDate("n_date");
				
				NoticeDAO notice = new NoticeDAO();
				notice.setN_num(num);
				notice.setN_id(id);
				notice.setN_name(name);
				notice.setN_title(title);
				notice.setN_sub(sub);
				notice.setN_date(date);
				
				noticeList.add(notice);
			}
			request.setAttribute("noticeList", noticeList); // 보내질 List 데이터를 지정
			RequestDispatcher view = request.getRequestDispatcher("p_noticeList2.jsp"); //보내질곳지정
			view.forward(request, response); //지정한 곳으로 데이터 보냄
			rs.close();
			stmt.close();
			con.close();
		} catch(Exception e) {
			response.sendRedirect("e404.jsp");
			e.printStackTrace();
		}
	}

}
