<%@page import="controller.login"%>
<%@page import="services.nguoidungservice"%>
<%@page import="model.nguoidung"%>
<%@ page     pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Chi tiết người dùng </title>
	<%@include file="includes/bootstrap.jsp" %>
	</head>
	<body>
		<header>
			<%@include file="includes/menu1.jsp" %>		
		</header>
		<% 
			
			nguoidung nd = nguoidungservice.LayNguoiDungTheoID(Integer.toString(login.id));	
			if(nd!=null){
		%>
		<form action="#" method="POST">
			<div class="form-group">
		 	<label for=idnguoidung>Id Người Dùng</label>
		    <input disabled name="idnguoidung" value="<%=nd.getIdnguoidung() %> "type="text" class="form-control" id="idnguoidung">
		  </div>
			<div class="form-group">
		    <label for=hoten>Họ tên:</label>
		    <input disabled name="hoten" value="<%=nd.getHoten() %>" type="text" class="form-control" id="hoten">
		  </div>
		  <div class="form-group">
		    <label for="email">Email address:</label>
		    <input disabled name="email" value="<%=nd.getEmail() %>" type="email" class="form-control" id="email">
		  </div>
		  <div class="form-group">
		    <label for="pass">Mật Khẩu: </label>
		    <input disabled name="pass" value="<%=nd.getMatkhau() %>" type="pass" class="form-control" id="pass">
		  </div>
		  <div class="form-group">
		    <label for="quyen">Quyền:</label>
		    <input disabled name="quyen" value="<%=nd.getQuyen() %>" type="quyen" class="form-control" id="quyen">
		  </div>  
		<%
			}
		%>
</body>
</html>