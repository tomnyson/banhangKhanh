<%@page import="services.sanphamsevervice"%>
<%@page import="services.sanphamsevervice"%>
<%@page import="model.sanpham"%>
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
		sanpham sp = sanphamsevervice.LaySanPhamTheoID(id);
	%>

	<form action="suasanpham" method="POST">
			<div class="form-group">
		 
		    <input value="<%=sp.getIdsanpham() %>" name="idsanpham" type="text" class="form-control" id="idsanpham">
		  </div>
			<div class="form-group">
		    <label for=tensanpham>Tên sản phẩm:</label>
		    <input name="tensanpham" value="<%=sp.getTensanpham() %>" type="text" class="form-control" id="tieu">
		  </div>
		  <div class="form-group">
		  <label for="anhdaidien">Ảnh đại diện:</label>
		    <input   name="anhdaidien" value="<%=sp.getAnhdaidien() %>" type="text" class="form-control" id="anhdaidien">
		  </div>
		   <div class="form-group">
		    <label for="gia">Giá:</label>
		    <input name="gia" value="<%=sp.getGia() %>" type="text" class="form-control" id="gia">
		  </div>
		  <div class="form-group">
		    <label for="chitiet">Chi tiết:</label>
		    <input name="chitiet" value="<%=sp.getChitiet() %>" type="text" class="form-control" id="chitiet">
		  </div>
		  			
		  <button type="submit" class="btn btn-primary">Sửa</button>
	</form>			
</section>

</body>

</html>