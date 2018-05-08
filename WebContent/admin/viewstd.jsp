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





		<section style="border:2px solid white; background-color:rgba(0,0,0,0.5);" class="my-4">

  <h3 class="m-4" align="center">Student Information Details</h3>
    <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Firstname</th>
      <th scope="col">Middlename</th>
      <th scope="col">Lastname</th>
      <th scope="col">Fathername</th>
      <th scope="col">Father Occupation</th>
      <th scope="col">Category</th>
      <th scope="col">Date-of-Birth</th>
      <th scope="col">E-mail</th>
      <th scope="col">Mobile</th>
      <th scope="col">Gender</th>
    </tr>
  </thead>
  
 
  <tbody>
  
    <tr>
      <th scope="row">Details</th>
  		
  	 	 	 <% 

try{
	
	String url = "jdbc:mysql://localhost:3307/studentdatabase";
	String user = "root";
	String userpass="mysqlpass@123";
	
	

	String stdReg = request.getParameter("stdreg");
	
	String sql = "select * from student where StudentId=?";

	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = DriverManager.getConnection(url,user,userpass);
	PreparedStatement ps =conn.prepareStatement(sql);
	
	
	
	ps.setString(1,stdReg);
	
	
	
	ResultSet rs = ps.executeQuery();
	
	while(rs.next()){
		
	%>
		    
  	
  		
      <td><%= rs.getString("StudentFirstName") %></td>
      <td><%= rs.getString("StudentMiddleName") %></td>
      <td><%= rs.getString("StudentLastName") %></td>
      <td><%= rs.getString("StudentFatherName") %></td>
      <td><%= rs.getString("StudentFatherOccupation") %></td>
      <td><%= rs.getString("Category") %></td>
      <td><%= rs.getString("DateOfBirth") %></td>
      <td><%= rs.getString("Email") %></td>
      <td><%= rs.getString("Mobile") %></td>
      <td><%= rs.getString("Gender") %></td>
      
        <% 
	}
	
	
	
}
	



catch(Exception e){
	e.printStackTrace();
}



%>
    </tr>

  </tbody>
  
 
</table>

</section>


<section style="border:2px solid white; background-color:rgba(0,0,0,0.5);" class="my-4">
  <div class="container">


    <div class="row">

    <div class="col-lg-6">
      <h3 class="m-4">Student Address Details</h3>

        <table class="table table-striped">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Address</th>
          <th scope="col">City</th>
          <th scope="col">State</th>
          <th scope="col">Country</th>
        </tr>
      </thead>
      <tbody>
      
     
      
        <tr>
          <th scope="row">Details</th>
          
          <% 

		try{
			
			String url = "jdbc:mysql://localhost:3307/studentdatabase";
			String user = "root";
			String userpass="mysqlpass@123";
			
			
			String stdReg = request.getParameter("stdreg");
			
			String sql = "select * from student where StudentId=?";
		
			Class.forName("com.mysql.jdbc.Driver");
		
			Connection conn = DriverManager.getConnection(url,user,userpass);
			PreparedStatement ps =conn.prepareStatement(sql);
			
			
			
			ps.setString(1,stdReg);
			
			
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				
				%>
				
          
		          <td><%= rs.getString("Address") %></td>
		          <td><%= rs.getString("Town") %></td>
		          <td><%= rs.getString("State") %></td>
		          <td><%= rs.getString("Country") %></td>
		          
		                  <% 
	}
	
	
	
}
	



catch(Exception e){
	e.printStackTrace();
}



%>
        </tr>

      </tbody>
    </table>

    </div>
    <div class="col-lg-6">
      <h3 class="m-4">Student Login Details</h3>

        <table class="table table-striped">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Username</th>
          <th scope="col">Password</th>
        </tr>
      </thead>
      <tbody>
      	
  
      	
        <tr>
          <th scope="row">Details</th>
          
              	<% 

try{
	
	String url = "jdbc:mysql://localhost:3307/studentdatabase";
	String user = "root";
	String userpass="mysqlpass@123";
	
	
	String stdReg = request.getParameter("stdreg");
	
	String sql = "select * from student where StudentId=?";

	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = DriverManager.getConnection(url,user,userpass);
	PreparedStatement ps =conn.prepareStatement(sql);
	
	
	
	ps.setString(1,stdReg);
	
	
	
	ResultSet rs = ps.executeQuery();
	
	while(rs.next()){
		
		%>
		
          <td><%= rs.getString("Username") %></td>
          <td><%= rs.getString("Password") %></td>
          
        <% 
	}
	
	
	
}
	



catch(Exception e){
	e.printStackTrace();
}



%>
        </tr>

      </tbody>
    </table>

    </div>


  </div>


  </div>
</section>
		


<a href="viewstudent.jsp" style="margin-left:50%;" class="btn btn-info">Back</a>



 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</body>


</html>