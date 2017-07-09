<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success</title>
</head>
<body>
<p> Registration is Success</p>
<p>New User Created.</p>
<p>Details: </p>
<div>
<%=session.getAttribute("sid") %><br><br>
<%=session.getAttribute("fname") %><br><br>
<%=session.getAttribute("lname") %><br><br>
<%=session.getAttribute("mailid") %><br><br>
<%=session.getAttribute("password") %><br><br>
<%=session.getAttribute("confirmpassword") %><br><br>
</div>
<a href="index.jsp">Home</a>
</body>
</html>