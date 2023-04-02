<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
<style type="text/css">
.container {
  max-width: 550px;
  margin: 0 auto;
  text-align: center;
}

h1 {
  font-size: 36px;
  margin-bottom: 40px;
}

.form {
  background-color: #f8f8f8;
  padding: 20px;
  border-radius: 10px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

input[type="text"],
input[type="password"] {
  padding: 10px;
  border: none;
  background-color: #eee;
  margin-bottom: 20px;
  width: 90%;
  border-radius: 5px;
  font-size: 16px;
}

input[type="submit"] {
  background-color: #1abc9c;
  border: none;
  color: #fff;
  padding: 15px;
  border-radius: 5px;
  width: 100%;
  font-size: 20px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
  background-color: #16a085;
}

</style>
</head>
<body style="text-align: center;">
<div class="container">
<h1>Welcome to Learners Academy</h1>

             <!-- Welcome Page : enter the username and password same there is no database for it-->
  <div class="form">
<form action="LoginServlet" method="post">
<br>
Username<br>
<input type="text" name="user">
<br><br>
Password<br>
<input type="password" name="password">	
<br><br>
<input type="submit" value="login" id="lgnBtn">
<br>
<br>
</form>
</div>
</div>
</body>
</html>