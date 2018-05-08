<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student-Info</title>
</head>
<body>





<% 

try{
	
	String url = "jdbc:mysql://localhost:3307/studentdatabase";
	String user = "root";
	String userpass="mysqlpass@123";

	String Fname = request.getParameter("firstname");
	String Mname = request.getParameter("middlename");
	String Lname = request.getParameter("lastname");
	String Fathername = request.getParameter("fathername");
	String FatherOcp = request.getParameter("foccupation");
	String Category = request.getParameter("category");
	String DOB = request.getParameter("dob");
	String Email = request.getParameter("email");
	String Mobile = request.getParameter("mobile");
	String Gender = request.getParameter("gender");
	String Address = request.getParameter("addr");
	String City = request.getParameter("city");
	String State = request.getParameter("state");
	String Country = request.getParameter("country");
	String Username = request.getParameter("username");
	String Password = request.getParameter("password");
	
	

	String sql = "insert into student " + " (StudentFirstName,StudentMiddleName,StudentLastName,StudentFatherName,StudentFatherOccupation,Category,Gender,DateOfBirth,Email,Mobile,Address,Town,State,Country,Username,Password)"+ " values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = DriverManager.getConnection(url,user,userpass);
	PreparedStatement ps =conn.prepareStatement(sql);
	
	
	ps.setString(1,Fname);
	ps.setString(2,Mname);
	ps.setString(3,Lname);
	ps.setString(4,Fathername);
	ps.setString(5,FatherOcp);
	ps.setString(6,Category);
	ps.setString(7,Gender);
	ps.setString(8,DOB);
	ps.setString(9,Email);
	ps.setString(10,Mobile);
	ps.setString(11,Address);
	ps.setString(12,City);
	ps.setString(13,State);
	ps.setString(14,Country);
	ps.setString(15,Username);
	ps.setString(16,Password);
	
	ps.executeUpdate();
	
	
	
	
	%>
	
	<script>
	
	alert("Registration successfull,Your Reg.No is ");
	
	</script>
	
	<%
	
	
	
	
}
	



catch(Exception e){
	e.printStackTrace();
}



%>


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
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@mdo</td>
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
          <td>Mark</td>
          <td>Otto</td>
          <td>@mdo</td>
          <td>Mark</td>
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
          <td>Mark</td>
          <td>Otto</td>
        </tr>

      </tbody>
    </table>

    </div>




  </div>


  </div>
</section>




</body>
</html>