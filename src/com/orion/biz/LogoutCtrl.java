package com.orion.biz;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogoutCtrl")
public class LogoutCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String m_id = (String) session.getAttribute("m_id");
		String name = (String) session.getAttribute("m_name");
		if(m_id!="") {
			session.invalidate();
		}
		response.sendRedirect("index.jsp");		
	}

}
