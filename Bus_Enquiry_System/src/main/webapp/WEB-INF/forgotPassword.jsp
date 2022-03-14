<!DOCTYPE html>
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Login and Registration Form in HTML | CodingNepal</title>
      <link rel="stylesheet" href="login.css">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
   <body>
      <div class="wrapper">
	      <div id = 'container'>
	      	<div class = 'signup'>
				
				<form action ="forgetPasswordAction.jsp" class="login">
					<div class="field">
						<input type = "email" name = "email" placeholder = "Enter email">
					</div>	
					<div class="field">
						<input type = "password" name = "newPassword" placeholder = "Enter your new password" required>
					</div>
					<div class="field">
						<input type = "submit" value = "Save">				
					</div>
					
					
					<%
					String msg = request.getParameter("msg");
						if("done".equals(msg)) {
	
					%>
						<h1>Password Changed Successfully</h1>
						<%}%>
					<%	
						if("invalid".equals(msg)) {

					%>
						<h1>Something went Happend</h1>
					<%}%>
					
				</form>
				
				<h2>
					<a href = "login.jsp">Login</a>
				</h2>
				
				
				
	      	</div>
	      </div>
      </div>
	      
      <script>
         const loginText = document.querySelector(".title-text .login");
         const loginForm = document.querySelector("form.login");
         const loginBtn = document.querySelector("label.login");
         const signupBtn = document.querySelector("label.signup");
         const signupLink = document.querySelector("form .signup-link a");
         signupBtn.onclick = (()=>{
           loginForm.style.marginLeft = "-50%";
           loginText.style.marginLeft = "-50%";
         });
         loginBtn.onclick = (()=>{
           loginForm.style.marginLeft = "0%";
           loginText.style.marginLeft = "0%";
         });
         signupLink.onclick = (()=>{
           signupBtn.click();
           return false;
         });
      </script>
   </body>
</html>