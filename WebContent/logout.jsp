<%@ page 
    pageEncoding="utf-8"%>
    //nếu lấy tên Attribute có tên là ss_login khác null
<% if(session.getAttribute("ss_login") != null){
	
	//xóa ssection có tên ss_login
	session.removeAttribute("ss_login");
	response.sendRedirect("index.jsp");
}
%>