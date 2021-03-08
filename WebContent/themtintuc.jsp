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
		action="themtintuc">
		<div class="form-group">
			<label class="col-sm-4 control-label" for="tieude">Tiêu Đề</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="tieude"
					name="tieude" placeholder="Tiêu Đề" value="" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="motangan">Mô
				Tả Ngắn</label>
			<div class="col-sm-5">
				<textarea name="motangan" style="width: 100%;height:100px"
					style='margin-left: 100px'>
       					Nhập Mô tả ngắn của bạn ở đây!!
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
			<label class="col-sm-4 control-label" for="chitietbaiviet">Chi
				Tiết Bài Viết</label>
			<div class="col-sm-5">
				<textarea name="chitietbaiviet" style="width: 100%;height:500px"
					style='margin-left: 100px'>
       					Nhập Chi Tiết Bài Viết Của Bạn Ở Đây!!
				</textarea>
			</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="nguoidang">Người
				Đăng</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="nguoidang"
					name="nguoidang" placeholder="Người Đăng" value="" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="ngaydang">Ngày Đăng</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="ngaydang" name="ngaydang"
					placeholder="Ngày Đăng" value="" />
			</div>
		</div>

			<br />
		</div>
		
		<div class="form-group">
			<div class="col-sm-5 col-sm-offset-4">
				<div class="checkbox">
					<label> <input type="checkbox" id="agree1" name="agree1"
						value="agree" />Đồng Ý Để Tạo Tin Tức !!
					</label>
				</div>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-9 col-sm-offset-4">
				<button type="submit" class="btn btn-primary" name="signup1"
					value="Sign up" id="submit">Tạo Tin Tức</button>
			</div>
		</div>
	</form>

	<script>
		var flag = true;
		$("#signupForm1")
				.validate(
						{
							rules : {
								nguoidang : "required",
								tieude : "required",
								anhdaidien : {
									required : true,
									minlength : 1,
								},
								chitietbaiviet : {
									required : true,
									minlength : 1,
								},
								motangan : {
									required : true,
									minlength : 1,
								},
								ngaydang : {
									required : true,
								},
								agree1 : "required"
							},
							messages : {

								nguoidang : "Vui Lòng Nhập Tên Của Người Đăng Tin!!",
								tieude : "Vui Lòng Nhập Tiêu Đề Cho Bài Viết!!",
								anhdaidien : {
									required : "Hãy Chọn Hình Đại Diện Của Bạn!!",
									minlength : "Tối Thiểu 1 ảnh đại Diện"
								},
								chitietbaiviet : {
									required : "Vui Lòng Nhập Chi Tiết Bài Viết Của Bạn!!",
									minlength : "Chi Tiết Bài Viết Tối Thiểu 1 kí tử"
								},
								motangan : {
									required : "Hãy viết Một Chút Mô Tả cho bài viết của bạn",
									minlength : "Mô Tả cho bài viết của bạn tối thiểu 1 kí tự",
								},
								ngaydang : "Vui Lòng Chọn Ngày Đăng Tin",
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