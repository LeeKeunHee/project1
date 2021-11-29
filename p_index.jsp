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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
   content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>메인 페이지</title>
<style>
div {
   display: block;
}

img {
   border: 0px; margin: 15px;
}

a {
   text-decoration: none;
}

a:link {
   color: #666666;
   text-decoration: none;
}
.vs { clear:both; width:100%; height:300px; 
background-image:url("./img/banner.gif"); background-position: center center; 
background-size:50% auto; background-repeat:no-repeat; }
.vs_tit { padding-top:100px; color:#333; text-shadow:1px 1px 3px #333; font-size:40px; 
text-align: center; }
.page { clear:both; width: 100%; border-top:3px solid #f1f1f1;  }
.page_fr { clear:both; width: 1000px; margin: 0 auto; } 
.page_tit { padding-top: 28px; }
.more { text-decoration: none; font-size:14px; text-align:right; display:block; float:right; color:#333; }
.more:hover{ color: #ABABAB; font-size: large; }
.noti_lst { clear:both; width: 1000px; }
.noti_lst li { float:left; margin:20px; width: 360px; text-align: center; }
.noti_lst li a { color:#333; }
.noti_pic { width: 360px; height: 360px; background-position:center center; 
background-repeat:no-repeat; overflow:hidden; background-size:auto 100%; }
.noti_pic img { display:block; width:auto; height:auto; max-height:360px; }
.noti_tit { line-height:2; }
.noti_com { padding-right:20px; overflow:hidden; white-space:no-wrap; text-overflow:ellipsis; }

.pro_lst { clear:both; width: 1000px; margin: 0 auto; }
.pro_lst li { float:left; margin:20px; width: 280px; text-align: center; }
.pro_lst li a { color:#333; }
.pro_pic { width: 330px; height: 360px; background-position:center center; 
background-repeat:no-repeat; overflow:hidden; background-size:auto 100%; }
.pro_pic { display:block; width:auto; height:auto; max-height:360px; }
.pro_tit { line-height:2; }
.pro_com { padding-right:20px; overflow:hidden; white-space:no-wrap; text-overflow:ellipsis; }



.link_list {
   width: 1000px;
   margin: 45px auto;
   overflow: hidden;
   position: relative;
}

.link_list .link {
   width: 330px;
   float: left;
   border-left: 2px solid #dfdfdf;
}

.link_list .link a {
   display: block;
}

.link_list .link_1_2 {
   padding-top: 20px;
   margin-top: 20px;
   position: relative;
}

.link_list .link_1_2:after {
   content: '';
   display: block;
   width: 260px;
   height: 2px;
   margin-left: -130px;
   background-color: #dfdfdf;
   position: absolute;
   top: 0;
   left: 50%;
}

.link_list .link_2_2 {
   padding-top: 20px;
   margin-top: 20px;
   position: relative;
}

.link_list .link_2_2:after {
   content: '';
   display: block;
   width: 260px;
   height: 2px;
   margin-left: -130px;
   background-color: #dfdfdf;
   position: absolute;
   top: 0;
   left: 50%;
}
.link_3 {  border-right: 2px solid #dfdfdf; }
.link_list .link_3_2 {
   padding-top: 20px;
   margin-top: 5px;
   position: relative;
}

.link_list .link_3_2:after {
   content: '';
   display: block;
   width: 260px;
   height: 2px;
   margin-left: -130px;
   background-color: #dfdfdf;
   position: absolute;
   top: 0;
   left: 50%;   
}
.ani_img { display:block; transition-delay:0.8s; }
</style>
<link rel="stylesheet" href="./css/a_common.css">
<link rel="stylesheet" href="./css/reset2.css">
</head>
<body>
   <!-- 헤더 -->
   <%@ include file="p_header.jsp"%>
   <div class="content">
      <figure class="vs">
         <div class="tit_box">
            <h2 class="vs_tit">오리온은 <br>언제나 여러분 곁에 있습니다.</h2>
         </div>
      </figure>
   <section class="page_fr">   
            <h2 class="page_tit">Notice   <a href="DetailNoticeCtrl" class="more">더보기</a></h2>
            <ul class="noti_lst">
            <%
            try {
               Class.forName("oracle.jdbc.driver.OracleDriver");
               con = DriverManager.getConnection(url, db_id, db_pw); 
               sql = "select * from (select * from notice order by n_num desc) where ROWNUM <= 3";   
               stmt = con.prepareStatement(sql);
               rs = stmt.executeQuery();
               int n=0;
               String n_file;
               while(rs.next()) {
                  n++;
                  n_file = "./img/"+rs.getString("n_file");
            %>   
               <li>   
                     <a href="NoticeListCtrl2">   
                     <img src='<%=n_file %>'  alt='<%=rs.getString("n_file") %>' class="pro_img" />
                     <h3 class="noti_tit"><%=rs.getString("n_title") %></h3>
                     <p class="noti_com"><%=rs.getString("n_sub") %></p>
                     <p class="noti_date"><%=rs.getDate("n_date") %></p>
                  </a>   
               </li>
            <%
               }
               rs.close();   
            %>
            </ul>
         </section>
      </div>
      <div class="page product">
         <!-- 최근 상품 6개 -->
         <section class="page_fr">
            <h2 class="page_tit">New Product <a href="NewProductListCtrl" class="more">더보기</a></h2>
            <ul class="pro_lst">
   <%
               sql = "select * from (select * from n_product order by n_num desc) where ROWNUM <= 6";   
               stmt = con.prepareStatement(sql);    //상태(200)연결자에 sql명령 저장
               rs = stmt.executeQuery();//실제 SQL명령을 실행하여 결과를 반환
               n=0;
               String n_img;
               while(rs.next()) {
                  n++;
                  n_img = "./img/"+rs.getString("n_img");
   %>
               <li>
                     <img src='<%=n_img %>'  alt='<%=rs.getString("n_name") %>' class="pro_img" />
                     <h3 class="pro_tit"><%=rs.getString("n_name") %></h3>
                     <p class="pro_com">
                        <span class="pro_kind"><%=rs.getString("n_kind") %></span>
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

      <!-- 푸터 -->
      <%@ include file="p_footer.jsp"%>
</body>
</html>