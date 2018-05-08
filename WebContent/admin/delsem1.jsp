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
	
	
	
	String sql = "delete from semister1marks where StdReg=?";

	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = DriverManager.getConnection(url,user,userpass);
	PreparedStatement ps =conn.prepareStatement(sql);
	
	
	
	ps.setString(1,StdReg);
	
	
	
	ps.executeUpdate();
	
	
	
	%>
	
	<script>
	
	alert("Deletion successfull");
	
	</script>
	
	<%
	
	
	
	
}
	



catch(Exception e){
	e.printStackTrace();
}



%>

<jsp:include page="delmarkss.jsp"></jsp:include>


</body>
</html>