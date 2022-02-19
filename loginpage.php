<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="login.css">
	<style>
			.overlay {
	background: linear-gradient(#064101a6, #165702c7);
			}
			</style>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<title>Login Form Using HTML And CSS Only</title>
</head>
<body>
	<div class="container" id="container">
		<div class="form-container log-in-container">
			<form action="adduser.php" method="POST">
				<h1>LOGIN</h1>
				<div class="social-container">
					<a href="#" class="social"><i class="fa fa-facebook fa-2x"></i></a>
					<a href="#" class="social"><i class="fab fa fa-twitter fa-2x"></i></a>
				</div>
				<span>Enter your details</span>
				<input type="text" placeholder="Username" name="username" />
				<input type="password" placeholder="Password" name="password"/>
				<a href="#">New User? Register</a>
        <div class="submit-container">
				<button type="submit" name="user" value="Login as User">Log-in</button>
        <button type="submit"name="user"value="Register">Register</button>
        <button type="submit" name="user" value="Admin">Admin</button>
      </div>
			</form>
		</div>
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-right">
					<h1>WELCOME TO AGRO-SEARCH</h1>
					<p>Enter your log in details to access the search engine.If your a new user then click register</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<?php 
session_start(); 
session_unset(); 
session_destroy(); 
?> 