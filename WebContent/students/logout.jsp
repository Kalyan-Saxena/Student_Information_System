<%

try{
	
	session.invalidate();
	response.sendRedirect("../index.html");
	
	
}
catch(Exception e){
	e.printStackTrace();
}


%>