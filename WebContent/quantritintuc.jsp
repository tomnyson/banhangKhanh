<%@page import="services.tintucservice"%>
<%@page import="model.tintucmodel"%>
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
  <h2>Danh sách tin tức</h2>
  <p>Quản lý các tin tức của website:</p>            
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>ID</th>
        <th>Tiêu đề</th>
        <th>Mô tả ngắn</th>
        <th>Sửa</th>
        <th>Xóa</th>
      </tr>
    </thead>
    <tbody>
     <%
     	List<tintucmodel> lst = tintucservice.Laysautin();
     	
     	if(lst !=null){
     		int i = 1;
     		for(tintucmodel tt : lst){
     			
     		
     %>
      <tr>
        <td><%=i %></td>
        <td><%=tt.getTieude() %></td>
        <td><%=tt.getMotangan() %></td>
        <td><a href="suatintuc.jsp?id=<%=tt.getIdtintuc() %>">Sửa</a></td>
        <td> <a href="xoatintuc.jsp?id=<%=tt.getIdtintuc() %>">Xóa</a></td>
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