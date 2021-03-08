<%@page import="services.sanphamsevervice"%>
<%@page import="model.sanpham"%>
<%@page import="services.sanphamsevervice"%>
<%@page import="java.util.List"%>
<%@ page pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">
<head>
<%@include file="includes/head.jsp"%>
<!-- css, js Sản phẩm-->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="js/bootstrap.min.js">
<link rel="stylesheet" href="js/jquery.min.js">
<link rel="stylesheet" href="js/popper.min.js">
</head>
<div class="oz-body-wrap">
	<!-- Start Header Area -->
	<%@include file="includes/menu1.jsp"%>
	<!-- End Header Area -->

	<!-- Start Banner Area -->
	<section class="generic-banner relative">
		<div class="overlay overlay-bg"></div>
		<div class="container">
			<div class="row height align-items-center justify-content-center">
				<div class="col-lg-10">

					<div class="banner-content text-center">
						<h2>Shop Cactus</h2>
						<p>Thêm phong cách và thú vị cho ngôi nhà của bạn với hàng
							loạt đèn trà và nến của chúng tôi. Nến hình mini của chúng tôi có
							nhiều kích cỡ và kiểu dáng khác nhau, với ....</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="container d-flex justify-content-center"
		style="float: left; width: 400px; height: 400px;">
		<%
		List<sanpham> lstSPDT = sanphamsevervice.sanpham();
		System.out.print("hello world");
		%>
		<%
		for (sanpham spdt : lstSPDT) {
		%>
		<figure class="card card-product-grid card-lg">

			<div class="men-thumb-item text-center"
				style="float: left; width: 400px; margin-bottom: 50px;">
				<img
					src="<%=request.getContextPath()%>/images/<%=spdt.getAnhdaidien()%>"
					style="width: 400px; height: 400px;">
				<div class="men-cart-pro"></div>

			</div>
			<figcaption class="info-wrap">
				<div class="row">
					<div class="col-md-9">
						<a href="chitietsanpham.jsp?id=<%=spdt.getIdsanpham()%>"> <%=spdt.getTensanpham()%></a>
					</div>

					<div class="col-md-3">
						<div class="rating text-right">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i>
						</div>
					</div>
				</div>
			</figcaption>
			<div class="bottom-wrap">
				<a href="#" class="btn btn-primary float-right" data-abc="true">
					Buy now </a>
				<div class="price-wrap">
					<span class="item_price"><%=spdt.getGia()%></span> <br>
				</div>
		</figure>
	</div>
	<%
	}
	%>
</div>
<!-- End Banner Area -->
<!-- Mở Sản phẩm -->
<div class="container d-flex justify-content-center"
	style="float: left; width: 400px; height: 400px;"></div>
<%@include file="includes/javascrip.jsp"%>
</body>
</html>