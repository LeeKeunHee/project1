<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.orion.model.MemberDAO" %>
<%
   ArrayList<MemberDAO> memberList = (ArrayList<MemberDAO>) request.getAttribute("memberList"); 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
<link rel="stylesheet" href="./css/reset2.css">
<link rel="stylesheet" href="./css/a_common.css">
<style>
h2 { width: 1000px; height: 50px;  }
.tit{ clear:both; text-align: center; margin: 0 auto; padding-top: 30px;}
table { display:table; border-collapse:collapse;}
tr { display:table-row;}
th, td{display:table=cell; text-align: center; border-left: 1px solid #333;}
th:last-child{ border-right: 1px solid #333; }
td:last-child{ border-right: 1px solid #333; }
.tb{ width:1000px; margin:20px auto; }
.tb th, .tb td{ line-height:36px; border-bottom:1px solid #333;}
.tb th { border-top:2px solid #333; background:#ABABAB;}
.tb tbody tr:nth-child(2n) td{background:#E1E1E1;}
.btn_wrap { width:220px; margin:20px auto; }
.btn_wrap .in_btn { display:block; width:80px; margin:15px; background-color:#333; color:#fff; 
text-align:center; border:0; outline:0; float:left; line-height:38px; }
.btn_wrap .in_btn:hover { background-color:#E1E1E1; }
</style>
</head>
<body>
<%@ include file="p_admin_header.jsp"%>
   <h2 class="tit">회원관리 목록</h2>
   <form action="deleteMemberCtrl" method="post" name="delForm" onsubmit="return frm_submit(this)">
   <table class="tb">
      <thead>
         <tr>
            <th class="item1">회원아이디</th>
            <th class="item2">회원비밀번호</th>
            <th class="item3">회원이름</th>
            <th class="item4">회원생년월일</th>
            <th class="item5">회원이메일</th>
            <th class="item6">회원전화번호</th>
            <th class="item7">회원주소</th>
            <th class="item8">회원가입일</th>
            <th class="item9">편집</th>
         </tr>
      </thead>      
     <tbody>
      
<%
   for(int i=0; i<memberList.size();i++){
   
      MemberDAO member = memberList.get(i);
   
%>
         <tr>
            <td class="item1"><a href=""><%=member.getM_id() %></a></td>   
            <td class="item2"><%=member.getM_pw() %></td>
            <td class="item3"><%=member.getM_name() %></td>
            <td class="item4"><%=member.getM_birth1() %>년 <%=member.getM_birth2() %>월 <%=member.getM_birth3() %>일</td>
            <td class="item5"><%=member.getM_email() %></td>
            <td class="item6"><%=member.getM_tel() %></td>
            <td class="item7"><%=member.getM_zipcode() %><br><%=member.getM_address1() %><br><%=member.getM_address2() %></td>
            <td class="item8"><%=member.getRegdate() %></td>
            <td class="item9"><input type="checkbox"  name="ck"  id="ck<%=i %>"  
		class="ck_item" value="<%=member.getM_id() %>"/></td>
         </tr>
<%
   }
%>
	</tbody>
</table>
<div class="btn_wrap">	
		<button type="submit" class="in_btn" onclick="">삭제</button>
		<button type="reset" class="in_btn" onclick="">취소</button>
	</div>
</form>	
<script>
function frm_submit(f){  //f:form 태그에서 보내온 데이터
	var sel = 'input[name="ck"]:checked';
	var item = document.querySelectorAll(sel);
	var cnt = item.length;
	if(cnt==0){ //선택체크한 체크박스가 없으면
		alert("삭제할 요소를 선택하지 않았습니다.");
		return false;
	} else {
	var qt = confirm("정말로 삭제하시겠습니까?");
	if(qt){  //qt가
		f.submit();
	} else {
		return false;
		}
	}
	
}
</script>			   
</body>
</html>