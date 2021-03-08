<%@ page  pageEncoding="UTF-8"%>


		<header class="default-header">
			<div class="container-fluid">
				<div class="header-wrap">
					<div class="header-top d-flex justify-content-between align-items-center">
						<div class="logo">
							<a href="index.jsp"><img src="img/logo.png" alt=""></a>
						</div>
						<%
						String mail;
						if(session.getAttribute("ss_login") == null){
							
						
						%>
						
						<%
						}else{
							mail = session.getAttribute("ss_login").toString();
						%>
						<a class="nav-link dropdown-toggle" href="#" id="navbardrop"
						data-toggle="dropdown" style="color: #f9ca18" >Tài Khoản: <%=mail%>
					</a>
						<div class="dropdown-menu" style="text-decoration: none; text-align: center; color: black;">
							<a class="dropdown-item" href="logout.jsp">Đăng Xuất</a>
							<a class="dropdown-item" href="suauser.jsp">Đổi Mật Khẩu</a>
							<a class="dropdown-item" href="chitietuser.jsp">Xem Thông Tin</a>
							<a class="dropdown-item" href="index2.jsp">Quản Trị</a>							
						</div>`
						<%
						}
					%>
						<div class="main-menubar d-flex align-items-center">
							<nav class="hide">
								<a href="index.jsp">Home</a>
								<a href="news.jsp" target="_blank">News</a>
								<a href="about.jsp" target="_blank">About</a>
								<a href="sanpham.jsp" target="_blank">Shop</a>
								<a href="contact.jsp" target="_blank">Contact</a>
								<a href="login.jsp">Login</a>
								<a href="register.jsp">Register</a>

								<!--<a href="login.html">Login</a>
								<a href="register.html">Register</a>-->
							</nav>
							<div class="menu-bar"><span class="lnr lnr-menu"></span></div>
						</div>
					</div>
				</div>
			</div>
		</header>