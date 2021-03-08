<%@page import="controller.login"%>
<%@page import="services.nguoidungservice"%>
<%@page import="model.nguoidung"%>
<%@ page     pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx" class="no-js">
	<head>
		<meta charset="UTF-8">
		<title>Trang Thông Tin Người Dùng</title>
		<%@include file="includes/head.jsp" %>
		<%@include file="includes/bootstrap.jsp" %>
		
	</head>
	<body>
	<br>
		<header>
			<%@include file="includes/menu1.jsp" %>
		</header>
			<br><br><br>
		
<center><h2>Thông tin chi tiết người dùng</h2></center>
 <center> <p>Xem thông tin bao gồm Họ Tên, Email, Mật Khẩu bên dưới:</p> </center> 
		<br>	
		<% 
			
			nguoidung nd = nguoidungservice.LayNguoiDungTheoID(Integer.toString(login.id));	
			if(nd!=null){
		%>
		<form action="#" method="POST">
			<div class="form-group">
		    <label for=hoten>Họ Tên:</label>
		    <input disabled name="hoten" value="<%=nd.getHoten() %>" type="text" class="form-control" id="hoten">
		  </div>
		  <div class="form-group">
		    <label for="email">Email Address:</label>
		    <input disabled name="email" value="<%=nd.getEmail() %>" type="email" class="form-control" id="email">
		  </div>
		  <div class="form-group">
		    <label for="pass">Mật Khẩu: </label>
		    <input disabled name="pass" value="<%=nd.getMatkhau() %>" type="pass" class="form-control" id="pass">
		  </div>  
		<%
			}
		%>
	<!-- footer -->

		<!-- End Footer Area -->
	</div>
		
	</body>
</html>
