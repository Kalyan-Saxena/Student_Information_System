<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

try{
	
	String url = "jdbc:mysql://localhost:3307/studentdatabase";
	String user = "root";
	String userpass="mysqlpass@123";
	String dbusername="null";
	String dbuserpass="null";

	String loguser = request.getParameter("uname");
	String logpass = request.getParameter("pw");
	
	
	String sql = "select * from student where Username=? and Password=?";

	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = DriverManager.getConnection(url,user,userpass);
	PreparedStatement ps =conn.prepareStatement(sql);

	ps.setString(1,loguser);
	ps.setString(2,logpass);

	ResultSet rs = ps.executeQuery();

	while(rs.next()){
		dbusername=rs.getString("Username");
		dbuserpass= rs.getString("Password");
	}

	if(loguser.equals(dbusername) && logpass.equals(dbuserpass)){
		
		session.setAttribute("check","yes");
		%>
		
		<jsp:include page="userhome.jsp"></jsp:include> 
		<% 
	}
	else{
		
		%>
		
		<script>
	
			alert("Please enter correct login details");
			
		</script>
		<jsp:include page="loginpage.jsp"></jsp:include> 
		
		<% 
		
	}


	
}
catch(Exception e){
	out.println(e);
}


%>

</body>
</html>