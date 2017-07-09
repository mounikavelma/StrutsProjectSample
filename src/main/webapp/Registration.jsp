<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/style.css" rel="stylesheet">
    <script type="text/javascript"href="script/script.js">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration page</title>
</head>
<body>
<h1> Welcome to Registration Page</h1>
<div>
<p> Please Enter Below Details</p>
<form name="register" action="registration.do" method="post" onsubmit="return Validate()">
Student ID: <input type="text" name="sid" id="sid">
First Name: <input type="text" name="fname" id="fname">
Last Name: <input type="text" name="lname" id="lname">
Mail ID: <input type="text" name="mailid" id="email">
Password: <input type="password" name="password" id="pwd">
Confirm Password: <input type="password" name="confirmpassword" id="cpwd">
<input type="submit" value="Register">
<!-- <script type="text/javascript">
	/* function ValidateEmail(inputText) {
		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		if (inputText.value.match(mailformat)) {
			document.register.mailid.focus();
			return true;
		} else {
			alert("You have entered an invalid email address!");
			window.location.href="http://localhost:8000/StrutsProject/failure.jsp";
			// alert("You have entered an invalid email address!");
			//window.location.href = "http://www.google.com";
			// document.register.mailid.focus(); 

			// document.getElementById("alarm").innerHTML = "Email Address do not match. Retry"
			return false;
		}
		//document.form1.text1.focus();
		// document.register.mailid.focus();
	} */
	
	function passwordValidate(password, confirmPassword){
		var pwd= password;
		var cpwd= confirmPassword;
		
		if(pwd.equals(cpwd)){
			return true;
		}
		else{
			alert("You have entered an invalid password address!");
			window.location.href="http://localhost:8000/StrutsProject/failure.jsp";
			return false;
		}
		
	}
</script> -->
<script type="text/javascript">
 function Validate()
 {
	 var pwd =document.getElementById("pwd").value();
     var cpwd = document.getElementById("cpwd").value();
	 var pwdreturn = pwdvalidation(pwd, cpwd);
     
     return pwdreturn;
 }
    function pwdvalidation(pwd, cpwd){
        if (pwd.equals(cpwd))
            return true;
        else
            return false;
    }
</script>
</form>
</div>
</body>
</html>