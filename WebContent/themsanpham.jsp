<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Thêm Tin Tức</title>
<%@include file="includes/bootstrap.jsp"%>
<link href="<%=request.getContextPath()%>/css/cssform1.min.css"
	rel="stylesheet">
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script src="js/jquery.validate.js"></script>

<script type="text/javascript"
	src="http://js.nicedit.com/nicEdit-latest.js"></script>
<script type="text/javascript">
	//<![CDATA[
	bkLib.onDomLoaded(function() {
		nicEditors.allTextAreas()
	});
	//]]>
</script>
</head>
<body>

	<header>
		<%@include file="includes/menu.jsp"%>
	</header>
	<form id="signupForm1" method="post" class="form-horizontal"
		action="themsanpham">
		<div class="form-group">
			<label class="col-sm-4 control-label" for="tensanpham">Tên
				Sản Phẩm</label>
			<div class="col-sm-5">
				<textarea name="tensanpham" style="width: 100%;height:100px"
					style='margin-left: 100px'>
       					Nhập Tên Sản Phẩm ở đây!!
				</textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="anhdaidien">Hình
				Đại Diện</label>
			<div class="col-sm-5">
				<input type="text" id="anhdaidien" name="anhdaidien"
					placeholder="Hình Đại Diện" value="" /> 
					<img src="" id="img" width="200" height="auto"> 
					<span id="result"> </span>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="nguoidang">Giá</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="gia"
					name="gia" placeholder="gia" value="" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="chitiet">Chi
				Tiết</label>
			<div class="col-sm-5">
				<textarea name="chitietbaiviet" style="width: 100%;height:500px"
					style='margin-left: 100px'>
       					Nhập Chi Tiết Ở Đây!!
				</textarea>
			</div>

			<br />
		</div>
		
		<div class="form-group">
			<div class="col-sm-5 col-sm-offset-4">
				<div class="checkbox">
					<label> <input type="checkbox" id="agree1" name="agree1"
						value="agree" />Đồng Ý Để Tạo Sản Phẩm !!
					</label>
				</div>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-9 col-sm-offset-4">
				<button type="submit" class="btn btn-primary" name="signup1"
					value="Sign up" id="submit">Tạo Sản Phẩm</button>
			</div>
		</div>
	</form>

	<script>
		var flag = true;
		$("#signupForm1")
				.validate(
						{
							rules : {
								gia : "required",
								anhdaidien : {
									required : true,
									minlength : 1,
								},
								chitiet : {
									required : true,
									minlength : 1,
								},
								tensanpham : {
									required : true,
									minlength : 1,
								},
								agree1 : "required"
							},
							messages : {

								gia : "Vui Lòng Nhập giá tiền!!",
								anhdaidien : {
									required : "Hãy Chọn Hình Đại Diện Của Bạn!!",
									minlength : "Tối Thiểu 1 ảnh đại Diện"
								},
								chitiet : {
									required : "Vui Lòng Nhập Chi Tiết Của Bạn!!",
									minlength : "Chi Tiết Tối Thiểu 1 kí tử"
								},
								tensanpham : {
									required : "Hãy viết tên sản phẩm",
									minlength : "tên cho sản phẩm của bạn tối thiểu 1 kí tự",
								},
								agree1 : "Bạn Chưa Đồng Ý Các Điều Khoản"
							},
							errorElement : "em",
							errorPlacement : function(error, element) {
								// Add the `help-block` class to the error element
								error.addClass("help-block");

								// Add `has-feedback` class to the parent div.form-group
								// in order to add icons to inputs
								element.parents(".col-sm-5").addClass(
										"has-feedback");

								if (element.prop("type") === "checkbox") {
									error.insertAfter(element.parent("label"));
								} else {
									error.insertAfter(element);
								}

								// Add the span element, if doesn't exists, and apply the icon classes to it.
								if (!element.next("span")[0]) {
									$(
											"<span class='glyphicon glyphicon-remove form-control-feedback'></span>")
											.insertAfter(element);
								}
							},
							success : function(label, element) {
								// Add the span element, if doesn't exists, and apply the icon classes to it.
								if (!$(element).next("span")[0]) {
									$(
											"<span class='glyphicon glyphicon-ok form-control-feedback'></span>")
											.insertAfter($(element));
								}
							},
							highlight : function(element, errorClass,
									validClass) {
								$(element).parents(".col-sm-5").addClass(
										"has-error").removeClass("has-success");
								$(element).next("span").addClass(
										"glyphicon-remove").removeClass(
										"glyphicon-ok");
							},
							unhighlight : function(element, errorClass,
									validClass) {
								$(element).parents(".col-sm-5").addClass(
										"has-success").removeClass("has-error");
								$(element).next("span")
										.addClass("glyphicon-ok").removeClass(
												"glyphicon-remove");
							}
						});
	</script>

</body>
</html>