<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap" rel="stylesheet">
<link rel="stylesheet" href="./css/reset2.css">
<link rel="stylesheet" href="./css/a_common.css">
<style>
input { outline:0; border:0;  border-radius:0;  }
.fr { clear:both; width:960px; margin:10px auto; margin-bottom:80px;    }
.fr:after { content:""; display:block; clear:both; }
.fr_com { text-align:center; line-height:2.4; color:red; font-weight:bold; }
.fr_tit { text-align:center; line-height:3; padding-top:1em; text-align:center; font-family: 'Gothic A1', sans-serif; }
.fr_list li { clear:both;  }
.fr_list li:first-child { border-radius:30px 30px 0px 0px; }
.fr_list li:after { content:""; clear:both; display:block; }
.lb { display:block;  width:200px; height:42px; line-height:42px; float:left; padding-top:20px; padding-bottom:20px;
padding-left:150px; color:#222; font-weight:bold; font-family: 'Gothic A1', sans-serif; }
.lb.rep:before { content:"(필수)"; color:red; font-size:18px; }
.lb_data { display:block;  height:42px; line-height:42px; float:left; padding-top:20px; padding-bottom:20px; }
.in_data { display:block; float:left; border:1px solid #333; width:400px; height:40px; line-height:40px; padding-left:20px; }
.in_data2 { display:block; float:left; border:1px solid #333; width:110px; height:40px; line-height:40px; padding-left:20px; }
.in_data3 { display:block; float:left; border:1px solid #333; width:119px; height:42px; margin:0 20px 0 20px; }
.in_btn { display:block; height:40px; line-height:40px; width:130px; float:left; border-radius:22px; background:#333; color:#fff; margin-left:20px; 
cursor:pointer; }
.in_btn:hover { background-color:#ABABAB; }
.fr_col { width:50%; float:left; padding-top:20px; padding-bottom:20px; display:block; }
.fr_col .in_btn { clear:both;  }
.fr_col.first .in_btn { float:right; margin-right:25px; }
.fr_col.last .in_btn { float:left; margin-left:25px;}
</style>
</head>
<body>
<%@ include file="p_header.jsp" %>
<div class="fr">
<%
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs;
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id="scott";
	String pw="tiger";
	String sql;
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(url, id, pw);
		sql = "select * from p_mem where m_id=?";
		stmt = con.prepareStatement(sql);
		stmt.setString(1, m_id);
		rs = stmt.executeQuery();
		if(rs.next()) {
%>
	<form action="UpdateCtrl" class="frm" method="post" name="joinform" onsubmit="return joinCheck(this)">
	<h1 class="fr_tit">마이 페이지</h1>
	<ul class="fr_list">
		<li>
			<label for="m_id" class="lb rep">아이디</label>
			<span class="lb_data">
				<input type="text" name="m_id" id="m_id" maxlength="12" class="in_data" value='<%=rs.getString("m_id") %>' required readonly />
				
			</span>
		</li>
		<li>
			<label for="m_pw" class="lb rep">비밀번호</label>
			<span class="lb_data">
				<input type="password" name="m_pw" id="m_pw"  class="in_data" value='<%=rs.getString("m_pw") %>' required />
			</span>
		</li>
		<li>
			<label for="m_pw2" class="lb rep">비밀번호 확인</label>
			<span class="lb_data">
				<input type="password" name="m_pw2" id="m_pw2" class="in_data" required />
			</span>
		</li>
		<li>
			<label for="m_name" class="lb rep">이름</label>
			<span class="lb_data">
				<input type="text" name="m_name" id="m_name" class="in_data" value='<%=rs.getString("m_name") %>' required />
			</span>
		</li>
		<li>
         <label for="m_birth1" class="lb rep">생년월일</label>
         <span class="lb_data">
            <input type="text" id="yy" name="m_birth1" class="in_data2" maxlength="4" value='<%=rs.getInt("m_birth1") %>' required/>
         </span>
         <span class="lb_data">
               <select id="mm" name="m_birth2" class="in_data3" value='<%=rs.getInt("m_birth2") %>' required>
                   <option></option>
                    <option value="01">1</option>
                    <option value="02">2</option>
                    <option value="03">3</option>
                    <option value="04">4</option>
                    <option value="05">5</option>
                    <option value="06">6</option>
                    <option value="07">7</option>
                    <option value="08">8</option>
                    <option value="09">9</option>                                    
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>               
                 </select>
              </span>
              <span class="lb_data">
                 <input type="text" id="dd" name="m_birth3" class="in_data2" maxlength="4" value='<%=rs.getInt("m_birth3") %>' required/>
              </span>
      
		  
		<li>
			<label for="m_email" class="lb">이메일</label>
			<span class="lb_data">
				<input type="text" name="m_email" id="m_email" class="in_data" value='<%=rs.getString("m_email") %>' />
			</span>
		</li>
		<li>
			<label for="m_tel" class="lb">전화번호</label>
			<span class="lb_data">
				<input type="text" name="m_tel" id="m_tel" class="in_data" value='<%=rs.getString("m_tel") %>' />
			</span>
		</li>
		<li><label for="m_zipcode" class="lb">우편번호 (선택)</label>
			  <span class="lb_data">
			  		<input type="text" name="m_zipcode" id="m_zipcode" class="in_data" value='<%=rs.getString("m_zipcode") %>'/>
			  		<input type="button" value="주소찾기" onclick="findAddr()" class="in_btn" />	
			  </span>
		</li>
		<li>
		    <label for="m_address1" class="lb">주소 (선택)</label>
			<span class="lb_data">
				<input type="text" name="m_address1" id="m_address1" class="in_data" value='<%=rs.getString("m_address1") %>' />
			</span>
		</li>
		<li>
			<label for="m_address2" class="lb">상세주소 (선택)</label>
			<span class="lb_data">
				<input type="text" name="m_address2" id="m_address2" class="in_data" value='<%=rs.getString("m_address2") %>' />
			</span>
		</li>
		<li>
			<span class="fr_col first">
				<input type="submit" value="회원정보수정"  class="in_btn"/>
			</span>
			<span class="fr_col last">
				<input type="reset" value="취소" class="in_btn"/>
			</span>
		</li>
		<li><a href="ResignCtrl" class="in_btn" style="text-align:center; color: red;">회원 탈퇴</a></li>
	</ul>
	</form>
	<%
	}
	rs.close();
	stmt.close();
	con.close();							
} catch(Exception e) {

}
%>
</div>
	<script>
        function findAddr(){
            new daum.Postcode({
                oncomplete: function(data) {
                    console.log(data);                   
                    var roadAddr = data.roadAddress; // 도로명 주소 변수
                    var jibunAddr = data.jibunAddress; // 지번 주소 변수
                 
                    document.getElementById('m_zipcode').value = data.zonecode;
                    if(roadAddr !== ''){
                        document.getElementById("m_address1").value = roadAddr;
                    } 
                    else if(jibunAddr !== ''){
                        document.getElementById("m_address1").value = jibunAddr;
                    }
                }
            }).open();
        }
    </script>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
	
	<script>
	function joinCheck(f){
		if(f.m_pw.value!=f.m_pw2.value) {
			alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
			return false;
		}
	}
	</script>
<%@ include file="p_footer.jsp" %>
</body>
</html>