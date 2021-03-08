<%@page import="services.sanphamsevervice"%>
<%@ page   pageEncoding="UTF-8"%>

<%
	if(session.getAttribute("quyen").equals("admin")){
		if(request.getParameter("id") != null){
			String id  = request.getParameter("id");
			
			boolean kq  = sanphamsevervice.Xoasanpham(id);
			
			if(kq){
				session.setAttribute("loi", "Xóa thành công!");
			}else{
				session.setAttribute("loi", "Xóa thất bại!");
			}
			
			response.sendRedirect(request.getContextPath() +  "/index2.jsp");
		}
	}
	

%>