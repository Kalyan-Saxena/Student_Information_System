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

	String StdReg = request.getParameter("stdreg");
	
	String sql ="insert into sem7attendance (StdReg,Subject1,Sub1TP,Subject2,Sub2TP,Subject3,Sub3TP,Subject4,Sub4TP,Subject5,Sub5TP,Subject6,Sub6TP,Subject7,Sub7TP,Subject8,Sub8TP) values(?,'null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null')";
	
	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = DriverManager.getConnection(url,user,userpass);
	PreparedStatement ps =conn.prepareStatement(sql);
	
	ps.setString(1,StdReg);
	
	ps.executeUpdate();
	
	
	
}
	



catch(Exception e){
	e.printStackTrace();
}



%>


<% 

try{
	
	String url = "jdbc:mysql://localhost:3307/studentdatabase";
	String user = "root";
	String userpass="mysqlpass@123";

	String StdReg = request.getParameter("stdreg");
	String Subject1 = request.getParameter("subj1");
	String S1P = request.getParameter("s1p");
	
	String Subject2 = request.getParameter("subj2");
	String S2P = request.getParameter("s2p");
	
	String Subject3 = request.getParameter("subj3");
	String S3P = request.getParameter("s3p");
	
	String Subject4 = request.getParameter("subj4");
	String S4P = request.getParameter("s4p");
	
	String Subject5 = request.getParameter("subj5");
	String S5P = request.getParameter("s5p");
	
	String Subject6 = request.getParameter("subj6");
	String S6P = request.getParameter("s6p");
	
	String Subject7 = request.getParameter("subj7");
	String S7P = request.getParameter("s7p");
	
	String Subject8 = request.getParameter("subj8");
	String S8P = request.getParameter("s8p");
	
	String sql = "update sem7attendance set StdReg=?,Subject1=?,Sub1TP=?,Subject2=?,Sub2TP=?,Subject3=?,Sub3TP=?,Subject4=?,Sub4TP=?,Subject5=?,Sub5TP=?,Subject6=?,Sub6TP=?,Subject7=?,Sub7TP=?,Subject8=?,Sub8TP=?  where StdReg=?";

	
	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = DriverManager.getConnection(url,user,userpass);
	PreparedStatement ps =conn.prepareStatement(sql);
	
	
	ps.setString(1,StdReg);
	
	ps.setString(2,Subject1);
	ps.setString(3,S1P);
	
	ps.setString(4,Subject2);
	ps.setString(5,S2P);
	
	ps.setString(6,Subject3);
	ps.setString(7,S3P);
	
	ps.setString(8,Subject4);
	ps.setString(9,S4P);
	
	ps.setString(10,Subject5);
	ps.setString(11,S5P);
	
	ps.setString(12,Subject6);
	ps.setString(13,S6P);
	
	ps.setString(14,Subject7);
	ps.setString(15,S7P);
	
	ps.setString(16,Subject8);
	ps.setString(17,S8P);
	
	ps.setString(18,StdReg);
	
	
	
	ps.executeUpdate();
	
	
	
	%>
	
	<script>
	
	alert("Semister-7 Attendance added successfully");
	
	</script>
	
	<%
	
	
	
	
}
	



catch(Exception e){
	out.println(e);
	
}



%>

<jsp:include page="attendance.jsp"></jsp:include>


</body>
</html>