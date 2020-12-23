<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>工具夹管理系统</title>
<!-- Custom Theme files -->
<link href="Resource/css/login.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Minimal Flat User Account Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

<!--Google Fonts-->
<link href='http://fonts.useso.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css'>
<!--Google Fonts-->
</head>
<body>
<div class="login">
	<div class="login-top">
		<h2>欢迎来到工具夹管理系统</h2>
		<h3>登录</h3>
    </div>
	<div class="login-bottom">
		
		
		<h3>站内登录:</h3>
	   <form action="login" method="post">
	   <div class="user">
			<input type="text" name="username" value="Username"  onfocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Username';}">
			<i></i>
		</div>
		<div class="user-in">
			<input type="password" name="password" value="Password"  onfocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Password';}">
			<i></i>
		</div>
	  <div class="keepme">
	  	<label class="checkbox"><input type="checkbox" name="checkbox" ><i> </i> 保存登录</label>
	  	<div class="keep-loginbutton">
	  		<input type="submit" value="登录" />
	  	</div>
	  	<div class="clear"> </div>
	  </div>
	  </form>
	  
	</div>
</div>
</body>
</html>