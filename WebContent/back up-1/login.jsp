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
	String dbname=null;
	String dbpass=null;

	String loguser = request.getParameter("username");
	String logpass = request.getParameter("password");

	String sql = "select * from users where Username=? and Password=?";

	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = DriverManager.getConnection(url,user,userpass);
	PreparedStatement ps =conn.prepareStatement(sql);

	ps.setString(1,loguser);
	ps.setString(2,logpass);

	ResultSet rs = ps.executeQuery();

	while(rs.next()){
		dbname=rs.getString("Username");
		dbpass= rs.getString("Password");
	}

	if(loguser.equals(dbname) && logpass.equals(dbpass)){
		out.println("<h1>login successfull</h1>");
	}
	else{
		response.sendRedirect("login.html");
	}


	
}
catch(Exception e){
	e.printStackTrace();
}


%>

</body>
</html>