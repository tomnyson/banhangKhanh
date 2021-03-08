<%@page import="services.nguoidungservice"%>
<%@ page   pageEncoding="UTF-8"%>

<%
	if(session.getAttribute("quyen").equals("admin")){
		if(request.getParameter("id") != null){
			String id  = request.getParameter("id");
			
			boolean kq  = nguoidungservice.Xoa(id);
			
			if(kq){
				session.setAttribute("loi", "Xóa thành công!");
			}else{
				session.setAttribute("loi", "Xóa thất bại!");
			}
			
			response.sendRedirect(request.getContextPath() +  "/index2.jsp");
		}
	}
	

%>