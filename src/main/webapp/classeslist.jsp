<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import ="DAO.*" %>
    <%@ page import = "pojo.*" %>
    <%@ page import = "java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CLASS LIST</title>
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
}

table {
  width: 100%;
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
<div class="container"> 
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

<%
ClassDAO dao= new ClassDAO();
List<ClassName> list=dao.getallclasses();
%> 

<div class="btns">
<br>
	<div class="btn btn-warning"><a href="classnew.jsp" class="btn-links">Update Class</a></div>
	<div class="btn btn-warning"><a href="studnew.jsp" class="btn-links">Update Student</a></div>
	<div class="btn btn-warning"><a href="technew.jsp" class="btn-links">Update Teachers</a></div>
</div>

<br>
<br>
<div class="table-container">
<table border="1">
<tr><th>ID</th><th>Class Name</th><th colspan="2">Action</th><th>Assign Subject & Teachers</th> <th>Details</th></tr>
<%for(ClassName cn:list){ %>
<tr><td><%=cn.getCid() %></td>
<td><%=cn.getClassname() %></td>
<td><a href="cedit.jsp?cid=<%=cn.getCid()%>">Edit</a></td>
<td><a href="cdelete.jsp?cid=<%=cn.getCid()%>">Delete</a></td>
<td><a href="SubjectsTeachers.jsp?classname=<%=cn.getClassname() %>">Subjects and Teachers</a></td>
<td><a href="classReport.jsp?classname=<%=cn.getClassname() %>">Class Report</a></td>
<%} %>
</table>
</div>
</div>
</body>
</html>