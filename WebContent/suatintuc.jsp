<%@page import="services.tintucservice"%>
<%@page import="model.tintucmodel"%>
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
	tintucmodel tt = tintucservice.LayTinTheoID(id);
	
	
	
	%>

	<form action="suatintuc" method="POST">
			<div class="form-group">
		 
		    <input hidden value="<%=tt.getIdtintuc() %>" name="idtintuc" type="text" class="form-control" id="idtintuc">
		  </div>
			<div class="form-group">
		    <label for=hoten>Tiêu đề:</label>
		    <input name="tieude" value="<%=tt.getTieude() %>" type="text" class="form-control" id="tieude">
		  </div>
		  <div class="form-group">
		    <label for="motangan">Mô tả ngắn:</label>
		    <input name="motangan" value="<%=tt.getMotangan() %>" type="text" class="form-control" id="motangan">
		  </div>
		  <div class="form-group">
		  <label for="anhdaidien">Ảnh đại diện:</label>
		    <input   name="anhdaidien" value="<%=tt.getAnhdaidien() %>" type="text" class="form-control" id="anhdaidien">
		  </div>
		  <div class="form-group">
		    <label for="chitietbaiviet">Chi tiết bài viết:</label>
		    <input name="chitietbaiviet" value="<%=tt.getChitietbaiviet() %>" type="text" class="form-control" id="chitietbaiviet">
		  </div>
		  <div class="form-group">
		    <label for="nguoidang">Người đăng:</label>
		    <input name="nguoidang" value="<%=tt.getNguoidang() %>" type="text" class="form-control" id="nguoidang">
		  </div>
		  	<div class="form-group">
		    <label for="ngaydang">Ngày đăng:</label>
		    <input name="ngaydang" value="<%=tt.getNgaydang() %>" type="text" class="form-control" id="ngaydang">
		  </div>
		  			
		  <button type="submit" class="btn btn-primary">Sửa</button>
	</form>			
</section>

</body>

</html>