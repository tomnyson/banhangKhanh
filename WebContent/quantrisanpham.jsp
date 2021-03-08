<%@page import="services.sanphamsevervice"%>
<%@page import="model.sanpham"%>
<%@page import="java.util.List"%>
<%@ page     pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
		<div class="container">
  <h2>Danh sách Sản Phẩm</h2>
  <p>Quản lý các Sản Phẩm của website:</p>            
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>ID</th>
        <th>Tên Sản Phẩm</th>
        <th>Giá</th>
        <th>Sửa</th>
        <th>Xóa</th>
      </tr>
    </thead>
    <tbody>
     <%
     	List<sanpham> lstSP = sanphamsevervice.sanphams();
          	
          	if(lstSP !=null){
          		int i = 1;
          		for(sanpham sp : lstSP){
     %>
      <tr>
        <td><%=i %></td>
        <td><%=sp.getTensanpham() %></td>
        <td><%=sp.getGia() %></td>
        <td><a href="suasanpham.jsp?id=<%=sp.getIdsanpham() %>">Sửa</a></td>
        <td> <a href="xoasanpham.jsp?id=<%=sp.getIdsanpham() %>">Xóa</a></td>
      </tr>
    <%
     			i++;
     		}
     	}
     	
    %>
    </tbody>
  </table>
  <%
  
  		if(session.getAttribute("loi") != null){
     		%>
     		<span><%=session.getAttribute("loi") %></span>
     		<%
     		
     		session.removeAttribute("loi");
     	}
     	
   %>
</div>
	
	</body>
</html>