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
	String Subject1 = request.getParameter("subj1");
	String S1Intr = request.getParameter("s1intr");
	String S1Extr = request.getParameter("s1extr");
	String Subject2 = request.getParameter("subj2");
	String S2Intr = request.getParameter("s2intr");
	String S2Extr = request.getParameter("s2extr");
	String Subject3 = request.getParameter("subj3");
	String S3Intr = request.getParameter("s3intr");
	String S3Extr = request.getParameter("s3extr");
	String Subject4 = request.getParameter("subj4");
	String S4Intr = request.getParameter("s4intr");
	String S4Extr = request.getParameter("s4extr");
	String Subject5 = request.getParameter("subj5");
	String S5Intr = request.getParameter("s5intr");
	String S5Extr = request.getParameter("s5extr");
	String Subject6 = request.getParameter("subj6");
	String S6Intr = request.getParameter("s6intr");
	String S6Extr = request.getParameter("s6extr");
	String Subject7 = request.getParameter("subj7");
	String S7Intr = request.getParameter("s7intr");
	String S7Extr = request.getParameter("s7extr");
	String Subject8 = request.getParameter("subj8");
	String S8Intr = request.getParameter("s8intr");
	String S8Extr = request.getParameter("s8extr");
	
	
	
	

	String sql = "insert into semister8marks " + " (StdReg,Subject1,Sub1Internal,Sub1External,Subject2,Sub2Internal,Sub2External,Subject3,Sub3Internal,Sub3External,Subject4,Sub4Internal,Sub4External,Subject5,Sub5Internal,Sub5External,Subject6,Sub6Internal,Sub6External,Subject7,Sub7Internal,Sub7External,Subject8,Sub8Internal,Sub8External)"+ " values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = DriverManager.getConnection(url,user,userpass);
	PreparedStatement ps =conn.prepareStatement(sql);
	
	
	ps.setString(1,StdReg);
	ps.setString(2,Subject1);
	ps.setString(3,S1Intr);
	ps.setString(4,S1Extr);
	ps.setString(5,Subject2);
	ps.setString(6,S2Intr);
	ps.setString(7,S2Extr);
	ps.setString(8,Subject3);
	ps.setString(9,S3Intr);
	ps.setString(10,S3Extr);
	ps.setString(11,Subject4);
	ps.setString(12,S4Intr);
	ps.setString(13,S4Extr);
	ps.setString(14,Subject5);
	ps.setString(15,S5Intr);
	ps.setString(16,S5Extr);
	ps.setString(17,Subject6);
	ps.setString(18,S6Intr);
	ps.setString(19,S6Extr);
	ps.setString(20,Subject7);
	ps.setString(21,S7Intr);
	ps.setString(22,S7Extr);
	ps.setString(23,Subject8);
	ps.setString(24,S8Intr);
	ps.setString(25,S8Extr);
	

	
	ps.executeUpdate();
	

	
	%>
	
	<script>
	
	alert("Semister-8 marks added successfully");
	
	</script>
	
	<%
	
	
	
	
}
	



catch(Exception e){
	e.printStackTrace();
}



%>

<jsp:include page="marksmenu.jsp"></jsp:include>


</body>
</html>