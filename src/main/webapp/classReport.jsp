<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="pojo.*" %>
    <%@ page import="DAO.*" %>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Class Report</title>

<style type="text/css">
.nav-bar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  background-color: #333;
  color: white;
  height: 50px;
  padding: 0 20px;
  border-radius:15%;
}

.navbar-brand {
  font-size: 1.5rem;
  font-weight: bold;
  text-decoration:none;
}

.navbar-nav {
  display: flex;
  justify-content: center;
  align-items: center;
}

.nav-item {
  margin-right: 20px;
  list-style:none;
}

.nav-link {
  color: white;
  text-decoration: none;
  font-size: 1.2rem;
  font-weight: bold;
}

.nav-link:hover {
  color: #98eb34;
}
 
.btns {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top:20px;
  
}


.btn {
  margin: 0 10px;
  padding: 10px 20px;
  border-radius: 5px;
  background-color: #ffc107;
  color: white;
  text-align: center;
  text-decoration: none;
  font-size: 1.2rem;
  font-weight: bold;
  box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
  list-style:none;
}

.btn:hover {
  background-color: #ff9800;
}

.btn-links{
text-decoration:none;
}

.table-container {
  display: flex;
  justify-content: center;
  align-items: center;
}

table {
  border-collapse: collapse;
  width: 100%;
  max-width: 800px;
  margin: 20px;
  background-color: #fff;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

th, td {
  padding: 10px;
  text-align: left;
}

th {
  background-color: #4CAF50;
  color: #fff;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}

a {
  color: #2196F3;
  text-decoration: none;
}

a:hover {
  text-decoration: underline;
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
    <br>
    
    <%
		String Class=request.getParameter("classname");
    	List<SubjectTeachers> subteachlist= SubjectTeachersDAO.getclassReport(Class);
    	List<Students> stlist= StudentDAO.getclassReport(Class);
	%>
	
									<!-- LIST OF SUBJECT TEACHERS OF CLASS -->
									<h2 style="margin-left:45%;">Class Report</h2>    
	<h5 align="center"> List of Subject Teachers of Class <%=request.getParameter("classname") %></h5>
  	<div class="table-container">
   	<br>
      	<table border="1">
    	<tr><th>ID</th><th>Class</th><th>Subjects</th><th>Teachers</th></tr>
    	<% for(SubjectTeachers list:subteachlist){ %>
    	<tr><td><%=list.getSubtId() %></td><td><%=list.getClassname() %></td><td><%=list.getSubject() %></td>
    	<td><%=list.getTeacher() %></td>
    	<%} %>
    	</table>
    </div>
    <br>
    
    								<!-- LIST OF STUDENTS OF CLASS -->
    <h5 align="center"> List of Students of <%=request.getParameter("classname") %></h5>
	<div class="table-container">
	<table border="1">
	<tr><th>ID</th><th>First Name</th><th>Last Name</th><th>DOB</th><th>Address</th><th>Phone</th><th>Class</th></tr>
	<% for(Students sts:stlist) {%>
	<tr><td><%=sts.getStid() %></td><td><%=sts.getSfname() %></td><td><%=sts.getSlname() %></td><td><%=sts.getsDOB() %></td>
	<td><%=sts.getSaddress() %></td>
	<td><%=sts.getSphone() %></td><td><%=sts.getClassname() %></td></tr>
	<%} %>
	</table>
	</div>
	  	
</body>
</html>