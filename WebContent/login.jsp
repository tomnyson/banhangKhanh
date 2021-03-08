<%@ page    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <link rel="stylesheet" href="css/style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->
    <h2 class="active"> Login </h2>
    <!-- Icon -->
    <div class="fadeIn first">
      <img src="img/logo.png" />
    </div>
<br>
    <!-- Login Form -->
    <section class="container">
			<div class="form-login">
				<form action="login" method="post">
					  <div class="form-group">
					    <label for="email">Email of U:</label>
					    <input name="thudientu"  type="email" class="form-control" id="email">
					  </div>
					  <br>
					  <div class="form-group">
					    <label for="pwd">Password:</label>
					    <input name="matkhau"  type="password"  class="form-control" id="pwd">
					  </div>
					  <br>
					  <div class="form-group form-check">
					    <label class="form-check-label">
					      <input class="form-check-input" type="checkbox">Remember me
					    </label>
					  </div>
					  <%
					  	if(session.getAttribute("loi") != null){
					  %>
					  <div class="form-group">
					  		<label class="text-danger">
					  			<%=session.getAttribute("loi").toString() %>
					  		</label>
					  </div>
					  <%
					  	session.removeAttribute("loi");
					  	}
					  %>
					  <br>
					  <button type="submit" class="btn btn-primary">Submit</button>
				</form>			
			</div>
		</section>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="register.jsp">Create Account ?</a>
      <a>|</a>
      <a class="underlineHover" href="index.jsp">Home</a>
    </div>

  </div>
</div>
<!-- partial -->
  
</body>
</html>