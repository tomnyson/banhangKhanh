<%@page import="model.sanpham"%>
<%@page import="services.sanphamsevervice"%>
<%@page import="java.util.List"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<%@include file="includes/head.jsp"%>

<body>
	<!-- top-header -->
	<%@include file="includes/menu1.jsp"%>

	<!-- banner-2 -->
	<div class="page-head_agile_info_w3l"></div>
	<!-- //banner-2 -->


	<!-- top Products -->
	<div class="ads-grid py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
			<!-- tittle heading -->
			<h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
				<span>S</span>ản <span>P</span>hẩm
			</h3>
			<!-- //tittle heading -->
			<div class="row">

				<!-- product left -->
				
				<div class="agileinfo-ads-display col-lg-9">
					<div class="wrapper">
						
						<div class="col-md-4 product-men mt-md-0 mt-5">
						
							<div class="men-pro-item simpleCart_shelfItem" >
								<%
									String id = request.getParameter("id");
																sanpham sp = sanphamsevervice.LaySanPhamTheoID(id);	
																		if(sp!=null){
								%>
										<div style="width: 1300px; height: auto;float: left; border: 2px;">
											
								<div class="men-thumb-item text-center" style="float: left;width: 400px; margin-bottom:100px;" >
									<img
									src="<%=request.getContextPath()%>/images/<%=sp.getAnhdaidien()%>" style="width: 400px; height:400px;">

								</div>
								<!-- Chỉnh dòng chữ chi tiết sản phẩm trong chitietsanpham.jsp -->
								<div class="item-info-product text-center border-top mt-4" style="width: 700px; float: left; margin-top:200px;">
									<h4 class="pt-1">
														<%=sp.getTensanpham()%></a>
									</h4>
									<!-- kết thúc -->
									<div class="info-product-price my-2">
										<span class="item_price"><%=sp.getGia()%></span>
									</div>
									<div class="info-product-price my-2">
										<span class="pt-1"><%=sp.getChitiet()%></span>
									</div>
									<!-- Chỉnh dòng chữ Add to cart -->
										<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out" style="margin-top:200px;">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													class="button btn" />
											</fieldset>
										</form>
									</div>
									</div>
									
									</div>
									<%
											}
													
										%>
								
							</div>
							
							
							
						</div>
			</div>
		</div>
				
				
	
	</div>
	</div>
	</div>
	<!-- //top products -->

	<!-- footer -->
	<%@include file="includes/footer.jsp"%>
	<!-- //footer -->
	<!-- copyright -->


</body>

</html>