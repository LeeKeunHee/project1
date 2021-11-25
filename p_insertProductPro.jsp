<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>  
<%@ page import="java.util.*"%>
<%@ page import="java.lang.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*" %>   
<%
      Connection conn = null;
      PreparedStatement stmt = null;
      
      String url = "jdbc:oracle:thin:@localhost:1521:xe";
      String id="scott";
      String pw="tiger";
      String sql;
      request.setCharacterEncoding("UTF-8");
      response.setCharacterEncoding("UTF-8");
       
       MultipartRequest multi = null;
       try {
         String p_num = request.getParameter("p_num");
         String p_name = request.getParameter("p_name");
         String p_kind = request.getParameter("p_kind");
         int p_price = Integer.parseInt(request.getParameter("p_price"));
         String p_sub = request.getParameter("p_sub");
         String p_img = request.getParameter("p_img");

         try {
            Class.forName("oracle.jdbc.OracleDriver");
            conn = DriverManager.getConnection(url, id, pw);
            sql = "insert into product(p_num, p_name,p_kind, p_price, p_sub, p_img) values (?, ?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, p_num);
            stmt.setString(2, p_name);
            stmt.setString(3, p_kind);
            stmt.setInt(4, p_price);
            stmt.setString(5, p_sub);
            stmt.setString(6, p_img);
            int n = stmt.executeUpdate();
            if(n>=1) {
               //제품 등록 성공시 이동
               response.sendRedirect("ProductListCtrl");
            } else {
               //제품 등록 실패시 이동
               response.sendRedirect("p_insertProduct.jsp");
            }
            stmt.close();
            conn.close();
         } catch (ClassNotFoundException e) {
            System.out.println("드라이버 로딩이 실패되었습니다.");
            e.printStackTrace();
         } catch (SQLException e) {
            System.out.println("DB연결이 실패되었거나 SQL을 처리하지 못했습니다.");
            e.printStackTrace();
         }
       } catch(Exception e){
         out.write("업로드 용량 오류 또는 그 이외..." + e.getMessage());
       }

%>