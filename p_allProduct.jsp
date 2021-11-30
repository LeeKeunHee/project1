<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ page import="com.orion.model.*" %> 
<%
Connection con = null;
PreparedStatement stmt = null;
ResultSet rs = null;
int data;
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String db_id = "scott";
String db_pw = "tiger";
String sql;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 목록</title>
<style>
.page { clear:both; width: 100%; border-top:3px solid #f1f1f1;  }
.page_fr { clear:both; width: 1000px; margin: 0 auto; } 
.page_tit { padding-top: 28px; font-weight: bold; }
.more { text-decoration: none; font-size:14px; text-align:right; display:block; float:right; color:#333; }
.more:hover{ color: #ABABAB; font-size: large; }
.pro_lst { clear:both; width: 1000px; margin: 0 auto; }
.pro_lst li { float:left; margin:20px; width: 280px; }
.pro_lst li a { color:#333; }
.pro_pic { width: 330px; height: 360px; background-position:center center; 
background-repeat:no-repeat; overflow:hidden; background-size:auto 100%; }
.pro_pic { display:block; width:auto; height:auto; max-height:360px; }
.pro_tit { line-height:2; }
.pro_com { padding-right:20px; overflow:hidden; white-space:no-wrap; text-overflow:ellipsis; }

</style>
<link rel="stylesheet" href="./css/a_common.css">
<link rel="stylesheet" href="./css/reset2.css">
</head>
<body>
	<%@ include file="p_header.jsp"%>
<div class="page product">
			<!-- 최근 상품 6개 -->
			<section class="page_fr">
				<h2 class="page_tit">제품보기<a href="ProductListCtrl" class="more">더보기</a></h2>
				<ul class="pro_lst">
			<%
				try {
					Class.forName("oracle.jdbc.driver.OracleDriver");
					con = DriverManager.getConnection(url, db_id, db_pw); 
					sql = "select * from (select * from product order by p_num desc) where ROWNUM <= 6";	
					stmt = con.prepareStatement(sql);
					rs = stmt.executeQuery();
					int n=0;
					String p_img;
					while(rs.next()) {
						n++;
						p_img = "./img/"+rs.getString("p_img");
				%>
					<li>
							<img src='<%=p_img %>'  alt='<%=rs.getString("p_name") %>' class="pro_img" />
							<h3 class="pro_tit"><%=rs.getString("p_name") %></h3>
							<p class="pro_com">
								<span class="pro_kind"><%=rs.getString("p_kind") %></span>
							</p>
						</a>
					</li>
	<%
					}
					rs.close();
					stmt.close();
					con.close();
				} catch(Exception e) {
					e.printStackTrace();
				}
	 %>				
				</ul>
			</section>		
		</div>
				<%@ include file="p_footer.jsp"%>
</body>
</html>