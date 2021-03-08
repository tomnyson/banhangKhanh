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
		<section class="banner-area relative">
			<div class="container">
				<div class="row fullscreen align-items-center justify-content-center">
					<div class="banner-left col-lg-6">
						<img class="d-flex mx-auto img-fluid" src="img/header-img.png" alt="">
					</div>
					<div class="col-lg-6">
						<div class="story-content">
							<h6 class="text-uppercase">Contact With Us</h6>
							<h1>Behind Every <span class="sp-1">Success</span><br>
							There is a <span class="sp-2">Cactus</span></h1>
							<a href="#" class="genric-btn primary circle arrow">Get Started<span class="lnr lnr-arrow-right"></span></a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Banner Area -->
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
		<%@include file="includes/footer.jsp" %>
		<!-- End Footer Area -->

				<div class="footer-bottom d-flex justify-content-between align-items-center flex-wrap">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					<p class="footer-text m-0">Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</div>
			</div>
		</footer>
		<!-- End Footer Area -->
	</div>

		<%@include file="includes/javascrip.jsp" %>
	</body>
</html>
