<%@page import="services.nguoidungservice"%>
<%@page import="model.nguoidung"%>
<%@ page   pageEncoding="UTF-8"%>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Trang quản trị</title>
		<%@include file="includes/bootstrap.jsp" %>
	</head>
	<body>
		<header>
			<%@include file="includes/menu.jsp" %>
		</header>
		
<section class="container">
	<%
	
	String id = request.getParameter("id");
	nguoidung nd = nguoidungservice.LayNguoiDungTheoID(id);
	
	
	
	%>

	<form action="suanguoidung" method="POST">
			<div class="form-group">
		 
		    <input hidden value="<%=nd.getIdnguoidung() %>" name="idnguoidung" type="text" class="form-control" id="idnguoidung">
		  </div>
			<div class="form-group">
		    <label for=hoten>Họ tên:</label>
		    <input name="hoten" value="<%=nd.getHoten() %>" type="text" class="form-control" id="hoten">
		  </div>
		  <div class="form-group">
		    <label for="email">Email Address:</label>
		    <input disabled name="email" value="<%=nd.getEmail() %>" type="email" class="form-control" id="email">
		  </div>
		  <div class="form-group">
		    <input hidden name="pass" value="<%=nd.getMatkhau() %>" type="text" class="form-control" id="pass">
		  </div>
		  <div class="form-group">
		    <label for="pwd">Quyền:</label>
		    
		    <select name="quyen"  class="form-control" >
		    <% 
		    	if(nd.getQuyen().equals("admin")){
		    		%>
		    		<option value="admin" selected  >Quản trị</option>
		    		<option value="user">Người dùng</option>
		    		<%
		    	}else{
		    		%>
		    		<option value="admin"   >Quản trị</option>
		    		<option value="user" selected>Người dùng</option>
		    		<%
		    	}
		    %>
		    
		    	
		    	
		    </select>	    
		    
		  </div>
		  				
		  <button type="submit" class="btn btn-primary">Sửa</button>
	</form>			
</section>

</body>

</html>