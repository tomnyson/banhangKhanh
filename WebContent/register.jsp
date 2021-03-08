<%@ page    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Register</title>
  <link rel="stylesheet" href="css/style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->
    <h2 class="active"> Register </h2>
    <!-- Icon -->
    <div class="fadeIn first">
      <img src="img/logo.png" />
    </div>

    <!-- Login Form -->

       		<section class="container">
			<form action="dangky" method="POST">
				<div class="form-group">
				    <label for=hoten>Họ tên:</label>
				    <input name="hoten" type="text" class="form-control" id="hoten">
				  </div>
				  <div class="form-group">
				    <label for=hoten>Họ:</label>
				    <input name="ho" type="text" class="form-control" id="ho">
				  </div>
				  <div class="form-group">
				    <label for=hoten>Tên:</label>
				    <input name="ten" type="text" class="form-control" id="ten">
				  </div>
				  <div class="form-group">
				    <label for="email">Email address:</label>
				    <input name="email" type="email" class="form-control" id="email">
				  </div>
				  <div class="form-group">
				    <label for="pwd">Mật khẩu:</label>
				    <input name="pass" type="password" class="form-control" id="pwd">
				  </div>
				  				
				  <button type="submit" class="btn btn-primary">Đăng ký</button>
			</form>			
		</section>
    
    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="login.jsp">Login ? </a>
      <a> | </a>
      <a class="underlineHover" href="index.jsp"> Home</a>
    </div>

  </div>
</div>
<!-- partial -->
  
</body>
</html>