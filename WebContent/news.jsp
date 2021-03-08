<%@page import="model.tintucmodel"%>
<%@page import="services.tintucservice"%>
<%@page import="model.tintucmodel"%>
<%@page import="java.util.List"%>
<%@ page    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx" class="no-js">
	<head>
		<%@include file="includes/head.jsp" %>
	</head>
	<body>
		<div class="oz-body-wrap">
			<!-- Start Header Area -->
			<%@include file="includes/menu1.jsp" %>
			<!-- End Header Area -->
			
			
			<!-- Start Banner Area -->
			<section class="generic-banner relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row height align-items-center justify-content-center">
						<div class="col-lg-10">
							<div class="banner-content text-center">
								<h2>The Generic Page</h2>
								<p>It won’t be a bigger problem to find one video game lover in your <br> neighbor. Since the introduction of Virtual Game.</p>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- End Banner Area -->
			<!-- Start Video Area -->
			<section class="video-area pt-40 pb-40">
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="video-content">
						<a href="https://www.youtube.com/watch?v=th2si-forvI" class="play-btn"><img src="img/play-btn.png" alt=""></a>
						<div class="video-desc">
							<h3 class="h2 text-white text-uppercase">Being unique is the preference</h3>
							<h4 class="text-white">Youtube video will appear in popover</h4>
						</div>
					</div>
				</div>
			</section>
			<!-- End Video Area -->
			
			<!-- About Generic Start -->
			<section class="about-generic-area">
				<div class="container border-top-generic">
					<h3 class="about-title mb-70">Elaboration about Generic Page</h3>
					<div class="row">
						<div class="col-md-12">
							<div class="img-text">
								<img src="img/a.jpg" alt="" class="img-fluid float-left mr-20 mb-20">
								<p>Recently, the US Federal government banned online casinos from operating in America by making it illegal to transfer money to them through any US bank or payment system. As a result of this law, most of the popular online casino networks such as Party Gaming and PlayTech left the United States. Overnight, online casino players found themselves being chased by the Federal government. But, after a fortnight, the online casino industry came up with a solution and new online casinos started taking root. These began to operate under a different business umbrella, and by doing that, rendered the transfer of money to and from them legal. A major part of this was enlisting electronic banking systems that would accept this new clarification and start doing business with me. Listed in this article are the electronic banking systems that accept players from the United States that wish to play in online casinos.</p>
							</div>
						</div>
						<div class="col-lg-12">
							<p>Recently, the US Federal government banned online casinos from operating in America by making it illegal to transfer money to them through any US bank or payment system. As a result of this law, most of the popular online casino networks such as Party Gaming and PlayTech left the United States. Overnight, online casino players found themselves being chased by the Federal government. But, after a fortnight, the online casino industry came up with a solution and new online casinos started taking root. These began to operate under a different business umbrella, and by doing that, rendered the transfer of money to and from them legal. A major part of this was enlisting electronic banking systems that would accept this new clarification and start doing business with me. Listed in this article are the electronic banking systems that accept players from the United States that wish to play in online casinos.</p>
						</div>
						<div class="col-lg-12">
							<p>Recently, the US Federal government banned online casinos from operating in America by making it illegal to transfer money to them through any US bank or payment system. As a result of this law, most of the popular online casino networks such as Party Gaming and PlayTech left the United States. Overnight, online casino players found themselves being chased by the Federal government. But, after a fortnight, the online casino industry came up with a solution and new online casinos started taking root. These began to operate under a different business umbrella, and by doing that, rendered the transfer of money to and from them legal. A major part of this was enlisting electronic banking systems that would accept this new clarification and start doing business with me. Listed in this article are the electronic banking systems that accept players from the United States that wish to play in online casinos.</p>
						</div>
						<div class="col-md-12">
							<div class="img-text">
								<img src="img/a2.jpg" alt="" class="img-fluid float-left mr-20 mb-20">
								<p>Recently, the US Federal government banned online casinos from operating in America by making it illegal to transfer money to them through any US bank or payment system. As a result of this law, most of the popular online casino networks such as Party Gaming and PlayTech left the United States. Overnight, online casino players found themselves being chased by the Federal government. But, after a fortnight, the online casino industry came up with a solution and new online casinos started taking root. These began to operate under a different business umbrella, and by doing that, rendered the transfer of money to and from them legal. A major part of this was enlisting electronic banking systems that would accept this new clarification and start doing business with me. Listed in this article are the electronic banking systems that accept players from the United States that wish to play in online casinos.</p>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- End generic Area -->
			<!-- section tin tức -->
					<section>
		<div class="container">
			<div class="row">

  <div class="leftcolumn1" style="width: 1300px;">
  <%
					List<tintucmodel> lstTT = tintucservice.LayTin();
			
					for(tintucmodel tt : lstTT ){	
				
				%>
    <div class="card">
      <h2><a href="chitiettintuc.jsp?id=<%=tt.getIdtintuc() %>"> <%= tt.getTieude() %> </a></h2>
      <h5><%= tt.getNgaydang() %> ,Người Đăng: <%= tt.getNguoidang() %></h5>
       <div class="fakeimg" ><img src="<%=request.getContextPath()%>/images/<%= tt.getAnhdaidien() %>" sytle></div>
      <p><%= tt.getMotangan() %></p>
    </div>
    <%
					}
				
				%>
  </div>
  
</div>


				</div>
			<br>
		</section>
			<!-- kết thúc section tin tức -->
			<!-- Start Conatct- Area -->
			<section class="contact-area pt-100 pb-100 relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row justify-content-center text-center">
						<div class="single-contact col-lg-6 col-md-8">
							<h2 class="text-white">Send Us <span>Message</span></h2>
							<p class="text-white">
								Most people who work in an office environment, buy computer products.
							</p>
						</div>
					</div>
					<form id="myForm" action="mail.php" method="post" class="contact-form">
						<div class="row justify-content-center">
							<div class="col-lg-5">
								<input name="fname" placeholder="Enter your name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" class="common-input mt-20" required="" type="text">
							</div>
							<div class="col-lg-5">
								<input name="email" placeholder="Enter email address" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" class="common-input mt-20" required="" type="email">
							</div>
							<div class="col-lg-10">
								<textarea class="common-textarea mt-20" name="message" placeholder="Messege" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Messege'" required=""></textarea>
						</div>
						<div class="col-lg-10 d-flex justify-content-end">
							<button class="primary-btn white-bg d-inline-flex align-items-center mt-20"><span class="mr-10">Send Message</span><span class="lnr lnr-arrow-right"></span></button> <br>
						</div>
						<div class="alert-msg"></div>
						</div>
					</form>
				</div>
			</section>
			<!-- End Conatct- Area -->
			<!-- Strat Footer Area -->
			<footer class="section-gap">
				<div class="container">
					<div class="row pt-60">
						<div class="col-lg-3 col-sm-6">
							<div class="single-footer-widget">
								<h6 class="text-uppercase mb-20">Top Product</h6>
								<ul class="footer-nav">
									<li><a href="#">Managed Website</a></li>
									<li><a href="#">Manage Reputation</a></li>
									<li><a href="#">Power Tools</a></li>
									<li><a href="#">Marketing Service</a></li>
								</ul>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="single-footer-widget">
								<h6 class="text-uppercase mb-20">Navigation</h6>
								<ul class="footer-nav">
									<li><a href="#">Home</a></li>
									<li><a href="#">Main Features</a></li>
									<li><a href="#">Offered Services</a></li>
									<li><a href="#">Latest Portfolio</a></li>
								</ul>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="single-footer-widget">
								<h6 class="text-uppercase mb-20">Compare</h6>
								<ul class="footer-nav">
									<li><a href="#">Works & Builders</a></li>
									<li><a href="#">Works & Wordpress</a></li>
									<li><a href="#">Works & Templates</a></li>
								</ul>
							</div>
						</div>

						<div class="col-lg-3 col-sm-6">
							<div class="single-footer-widget">
								<h6 class="text-uppercase mb-20">Quick About</h6>
								<p>
									Lorem ipsum dolor sit amet, consecteturadipisicin gelit, sed do eiusmod tempor incididunt.
								</p>
								<p>
									+00 012 6325 98 6542 <br>
									support@colorlib.com
								</p>
								<div class="footer-social d-flex align-items-center">
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-twitter"></i></a>
									<a href="#"><i class="fa fa-dribbble"></i></a>
									<a href="#"><i class="fa fa-behance"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="footer-bottom d-flex justify-content-between align-items-center flex-wrap">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						<p class="footer-text m-0">Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</div>
				</div>
			</footer>
			<!-- End Footer Area -->
		</div>
		<script src="js/vendor/jquery-2.2.4.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
		<script src="js/vendor/bootstrap.min.js"></script>
		<script src="js/jquery.ajaxchimp.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/jquery.nice-select.min.js"></script>
		<script src="js/jquery.magnific-popup.min.js"></script>
		<script src="js/main.js"></script>
	</body>
</html>
