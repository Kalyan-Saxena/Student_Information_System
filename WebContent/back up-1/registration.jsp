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
	String Lname = request.getParameter("lastname");
	String Uname = request.getParameter("username");
	String Pass = request.getParameter("password");
	String Email = request.getParameter("email");
	String Cont = request.getParameter("contact");

	String sql = "insert into user(Firstname,Lastname,Username,Password,Email,Contact) values(?,?,?,?,?,?)";

	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = DriverManager.getConnection(url,user,userpass);
	PreparedStatement ps =conn.prepareStatement(sql);

	ps.setString(1,Fname);
	ps.setString(2,Lname);
	ps.setString(3,Uname);
	ps.setString(4,Pass);
	ps.setString(5,Email);
	ps.setString(6,Cont);
	ps.executeUpdate();

	out.println("<h1>inserted successfully</h1>");
}

catch(Exception e){
	e.printStackTrace();
}



%>



</body>
</html>