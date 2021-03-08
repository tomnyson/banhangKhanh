<%@page import="services.nguoidungservice"%>
<%@page import="model.nguoidung"%>
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
  <h2>Danh sách thành viên</h2>
  <p>Quản lý các thành viên của website:</p>            
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>ID</th>
        <th>Họ tên</th>
        <th>Email</th>
        <th><center>Sửa Quyền và Họ Tên</center></th>
        <th>Xóa</th>
      </tr>
    </thead>
    <tbody>
     <%
     	List<nguoidung> lst = nguoidungservice.LayNguoiDung();
     	
     	if(lst !=null){
     		int i = 1;
     		for(nguoidung nd : lst){
     			
     		
     %>
      <tr>
        <td><%=i %></td>
        <td><%=nd.getHoten() %></td>
        <td><%=nd.getEmail() %></td>
       <td> <center><a href="suanguoidung.jsp?id=<%=nd.getIdnguoidung() %>">Sửa</a></center></td>
        <td><a href="xoanguoidung.jsp?id=<%=nd.getIdnguoidung() %>">Xóa</a></td>
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