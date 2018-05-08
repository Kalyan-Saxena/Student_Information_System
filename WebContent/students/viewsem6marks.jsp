<%

String check = (String)session.getAttribute("check");

if(check != "yes"){
	response.sendRedirect("../index.html");
}
else{
	session.setAttribute("check","yes");
}

%>






<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>SIS</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style media="screen">
      body{
        background-image: url("img/img-7.jpg");
        background-repeat:repeat-y;
        background-size: cover;
        color: #fff;
      }


    </style>
  </head>
  <body>





   <nav class="navbar navbar-expand-lg navbar-dark bg-inverse" >
        <div class="container">
        <a class="navbar-brand" href="userhome.jsp"><b>Student Information System</b></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active mx-2">
              <a class="nav-link " href="userhome.jsp">Home <span class="sr-only">(current)</span></a>
            </li>


           <li class="nav-item mx-2">
                <div class="dropdown">
                  <button class="btn btn-info dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    View Category
                  </button>
                  <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                    <button class="dropdown-item" type="button"><a href="viewstudent.jsp" class="dropdown-item">View Student Details</a></button>
                    <button class="dropdown-item" type="button"><a href="viewmarks.jsp" class="dropdown-item">View Marks</a></button>
                    <button class="dropdown-item" type="button"><a href="viewatten.jsp" class="dropdown-item">View Attendance</a></button>
                  </div>
                </div>
            </li>
          </ul>

          <a class="btn btn-outline-info" href="logout.jsp">Logout</a>
        </div>
  </div>
</nav>

<section>
  <div class="container">
    <h1 align="center"  class="mt-3 mb-5"> Student Semister-6 Details</h1>
    <form class="col-lg-4 mx-auto form-inline" action="viewsem6.jsp" method="post">
      <div class="form-group">
        <input type="text" name="stdreg" class="form-control" placeholder="Student Registration No" required>
      </div>

      <button type="submit" class="btn btn-info mx-3" name="button">Search</button>
    </form>

     

  </div>
</section>






    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
