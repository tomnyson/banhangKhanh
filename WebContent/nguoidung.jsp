<%@page import="services.nguoidungservice"%>
<%@page import="model.nguoidung"%>
<%@page import="java.util.List"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tin Tức</title>
<%@include file="includes/bootstrap.jsp"%>
</head>
<body>
	<header>
		<%@include file="includes/menu.jsp"%>
	</header>
	<!-- listnguoidung -->
	<section>
		<div class="container">
			<div class="row">
				<%
				List<nguoidung> lstND = nguoidungservice.LayNguoiDung();

				for (nguoidung nd : lstND) {
				%>
				<div class="col-lg-3 col-md-6 text-center">
					<h3>
						<a href="chitietnguoidung.jsp?id=<%=nd.getIdnguoidung()%>"> <%=nd.getHoten()%>
						</a>
					</h3>
					<p>
						<%=nd.getEmail()%>
					</p>
					<p>
						<%=nd.getQuyen()%>
					</p>
				</div>
				<%
				}
				%>
			</div>
		</div>
	</section>

</body>
</html>