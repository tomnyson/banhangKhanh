<%@page import="services.nguoidungservice"%>
<%@page import="model.nguoidung"%>
<%@page import="java.util.List"%>
<%@ page pageEncoding="UTF-8"%>

<div class="container">
	<nav class="navbar navbar-expand-sm bg-light navbar-light">

  <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  
  <!-- Links -->
   <div class="collapse navbar-collapse" style="color: #fff" id="collapsibleNavbar">
   <span class="mr-auto"></span>
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="<%=request.getContextPath() %>/index.jsp">Trang chủ</a>
    </li>
    <li class="nav-item">
	   <a class="nav-link" href="index2.jsp">Danh Sách Thành Viên</a>
	</li>
    <li class="nav-item">
	   <a class="nav-link" href="nguoidung.jsp">Người Dùng</a>
	</li>
	<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Sản Phẩm
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="themsanpham.jsp">Thêm Sản Phẩm</a>
        
        <a class="dropdown-item" href="quantrisanpham.jsp">Quản lý Sản Phẩm</a>
      </div>
    </li>
	<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Tin Tức
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="themtintuc.jsp">Thêm tin tức</a>
        
        <a class="dropdown-item" href="quantritintuc.jsp">Quản lý tin tức</a>
      </div>
    </li>
    <%
    	if(session.getAttribute("ss_login") != null){
			if(!session.getAttribute("quyen").equals("admin")){
				response.sendRedirect(request.getContextPath() +  "/index.jsp");
			}
    		String email = session.getAttribute("ss_login").toString();
    %>    
    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        <%=email %>
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="<%=request.getContextPath() %>/logout.jsp">Đăng xuất</a>
        
        <a class="dropdown-item" href="suataikhoan.jsp">Đổi Tên và Mật Khẩu</a>
        
        <a class="dropdown-item" href="chitiettaikhoan.jsp">Thông tin tài khoản</a>
      </div>
    </li>
    <%
    	}
    	else{
    		response.sendRedirect(request.getContextPath() +  "/login.jsp");
    	}
    %>
    
    
  </ul>
  </div>
</nav>

</div>