<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>SIS</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style media="screen">
      body{
        background-image: url("img/img-7.jpg");
        background-repeat: no-repeat;
        background-size: cover;
        color: #fff;
      }


    </style>
  </head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-inverse" >
        <div class="container">
        <a class="navbar-brand" href="adminhome.jsp"><b>Student Information System</b></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active mx-2">
              <a class="nav-link " href="adminhome.jsp">Home <span class="sr-only">(current)</span></a>
            </li>


           <li class="nav-item mx-2">
                <div class="dropdown">
                  <button class="btn btn-info dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    New Entry
                  </button>
                  <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                    <button class="dropdown-item" type="button"><a href="addstudent.jsp" class="dropdown-item">Add Student</a></button>
                    <button class="dropdown-item" type="button"><a href="marksmenu.jsp" class="dropdown-item">Add Marks</a></button>
                    <button class="dropdown-item" type="button"><a href="attendance.jsp" class="dropdown-item">Add Attendance</a></button>
                  </div>
                </div>
            </li>

          </ul>

          <a class="btn btn-outline-info" href="logout.jsp">Logout</a>
        </div>
  </div>
</nav>


<section>
  <div class="container">
    <h1 align="center"  class="mt-3 mb-5"> Student Semister-7 Attendance Details</h1>

      <table class="table my-5">
        <thead>
          <tr>
            <th scope="col">Subject</th>
            <th scope="col">Total Percentage</th>
            

          </tr>
        </thead>
        <tbody>
        
         	 	 	 <% 

try{
	
	String url = "jdbc:mysql://localhost:3307/studentdatabase";
	String user = "root";
	String userpass="mysqlpass@123";
	

	String StdReg= request.getParameter("stdreg");
	
	

	String sql = "select * from sem7attendance where StdReg=?";

	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = DriverManager.getConnection(url,user,userpass);
	PreparedStatement ps =conn.prepareStatement(sql);
	
	
	
	ps.setString(1,StdReg);
	
	
	
	ResultSet rs = ps.executeQuery();
	
	while(rs.next()){
		
	%>
		    
        
          <tr>
            <th scope="row"><%= rs.getString("Subject1") %></th>
            <td><%= rs.getString("Sub1TP") %></td>
            
          </tr>
          <tr>
            <th scope="row"><%= rs.getString("Subject2") %></th>
            <td><%= rs.getString("Sub2TP") %></td>
            

          </tr>
          <tr>
            <th scope="row"><%= rs.getString("Subject3") %></th>
            <td><%= rs.getString("Sub3TP") %></td>
            

          </tr>
          <tr>
            <th scope="row"><%= rs.getString("Subject4") %></th>
            <td><%= rs.getString("Sub4TP") %></td>
            

          </tr>
          <tr>
            <th scope="row"><%= rs.getString("Subject5") %></th>
            <td><%= rs.getString("Sub5TP") %></td>
            

          </tr>
          <tr>
            <th scope="row"><%= rs.getString("Subject6") %></th>
            <td><%= rs.getString("Sub6TP") %></td>
            

          </tr>
          <tr>
            <th scope="row"><%= rs.getString("Subject7") %></th>
            <td><%= rs.getString("Sub7TP") %></td>
            

          </tr>
          <tr>
            <th scope="row"><%= rs.getString("Subject8") %></th>
            <td><%= rs.getString("Sub8TP") %></td>
            

          </tr>
          
                 <% 
	}
	
	
	
}
	



catch(Exception e){
	e.printStackTrace();
}



%>
          
        </tbody>
      </table>

  </div>
</section>



<a href="viewatten.jsp" style="margin-left:50%;" class="btn btn-info">Back</a>



 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</body>


</html>