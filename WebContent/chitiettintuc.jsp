<%@page import="services.tintucservice"%>
<%@page import="model.tintucmodel"%>
<%@ page  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<meta charset="UTF-8">
	<title>Tin Tức </title>
<%@include file="includes/head.jsp" %>

<body>
	<!-- top-header -->

		<br>
		<% 
			String id = request.getParameter("id");
			tintucmodel tt = tintucservice.LayTinTheoID(id);	
			if(tt!=null){
		%>
		<section>
			<div class="container">
				<div class="row">
				<div class="leftcolumn2" >
				<div class="card">
						<div class="">
							<h2> <%=tt.getTieude() %></span>
						</div>
						<div class="">
							<h5><%= tt.getNgaydang() %> ,Người Đăng: <%= tt.getNguoidang() %></h5>
						</div>
						<div class="">
							<p><%= tt.getMotangan() %></p>
						</div>
						<div class="">
       <div class="fakeimg" ><img src="<%=request.getContextPath()%>/images/<%= tt.getAnhdaidien() %>""></div>
						</div>
						<div class="chitietbaiviet">
						<h4> <%= tt.getChitietbaiviet() %> </h4>
						</div>
</div>
				</div>
				</div>
			</div>
		</section>
		<%
			}
		%>
	<br>
	<!-- footer -->
	<%@include file="includes/footer.jsp" %>
	<!-- //footer -->

</body>
</html>