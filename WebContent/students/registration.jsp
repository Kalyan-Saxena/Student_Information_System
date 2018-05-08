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
	
	alert("Registration successfull");
	
	window.location="../index.html";
	
	</script>
	
	<%
	


	
	
}
	



catch(Exception e){
	e.printStackTrace();
}



%>



</body>
</html>