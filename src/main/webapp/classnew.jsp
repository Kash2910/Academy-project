<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="pojo.ClassName" %>
    <%@ page import="DAO.ClassDAO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Class</title>
<style type="text/css">
/* Global styles */
* {
  box-sizing: border-box;
}

body {
  margin: 0;
  font-family: Arial, sans-serif;
  background-color: #f8f9fa;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 20px;
}

/* Navigation bar styles */
.nav-bar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  background-color: #fff;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  padding: 10px;
}

.navbar-brand {
  font-size: 24px;
  font-weight: bold;
  text-decoration: none;
}

.navbar-brand:hover {
  color: #eb8934;
}

.navbar-nav {
  display: flex;
  list-style: none;
  margin: 0;
  padding: 0;
}

.nav-item {
  margin-left: 20px;
}

.nav-link {
  text-decoration: none;
  color: #212529;
}

.nav-link:hover {
  color: #eb8934;
}

/* Button styles */
.btns {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 20px;
}

.btn {
  border: none;
  background-color: #ffc107;
  color: #212529;
  font-size: 18px;
  padding: 10px 20px;
  border-radius: 5px;
  transition: all 0.2s ease-in-out;
  cursor: pointer;
  margin: 0 10px;
}

.btn:hover {
  background-color: #eb8934;
  color: #fff;
}

.btn-links {
  text-decoration: none;
  color: #212529;
}

.btn-links:hover {
  color: #fff;
}

/* Table styles */
.table-container {
  margin-top: 20px;
  margin-left:30%;
}

table {
  width: 60%;
  border-collapse: collapse;
  background-color: #fff;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

th,
td {
  padding: 10px;
  text-align: center;
}

th {
  background-color: #212529;
  color: #fff;
}

tr:nth-child(even) {
  background-color: #f8f9fa;
}

tr:hover {
  background-color: #ffc107;
  color: #fff;
}

td a {
  text-decoration: none;
  color: #212529;
}

td a:hover {
  color: #fff;
}

</style>
</head>
<body>
<nav class="nav-bar">
        <a href="#" class="navbar-brand" style="color:#eb8934;">Learners Academy</a>
        <ul class="navbar-nav">
            <li class="nav-item nav-link active">
                <a href="classeslist.jsp" class="nav-link">Classes</a>
            </li>
            <li class="nav-item">
                <a href="studlist.jsp" class="nav-link">Students</a>
            </li>

            <li class="nav-item">
                <a href="subjectlist.jsp" class="nav-link">Subjects</a>
            </li>

            <li class="nav-item">
                <a href="teacherlist.jsp" class="nav-link">Teachers</a>
            </li>
            
            <li class="nav-item">
                <a href="LogoutServlet" class="nav-link">Logout</a>
            </li>
        </ul>
        
    </nav>

	<h2 style="margin-left:48%;">Add a Class</h2>    
	<div class= "table-container">
	<form action="classEditServlet" method="post" >
	<br>
	<table>
	<tr><td>Class ID: </td><td>
	<input type="text" name="cid">
	</td></tr>
	<tr><td>Class Name: </td><td>
	<input type="text" name="classname">
	</td></tr>
	<tr><td>
	<input type="submit" value="Add" style="margin-left:150%;"></td></tr>
	</table>
	</form>
</div>

</body>
</html>