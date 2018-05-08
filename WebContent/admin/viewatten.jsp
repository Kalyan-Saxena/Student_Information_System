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
        <a class="navbar-brand" href="adminhome.jsp"><b>Student Information System</b></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active mx-2">
              <a class="nav-link " href="adminhome.jsp">Home <span class="sr-only">(current)</span></a>
            </li>


            <li class="nav-item mx-2">
                <div class="dropdown">
                  <button class="btn btn-info dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    New Entry
                  </button>
                  <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                    <button class="dropdown-item" type="button"><a href="addstudent.jsp" class="dropdown-item">Add Student</a></button>
                    <button class="dropdown-item" type="button"><a href="marksmenu.jsp" class="dropdown-item">Add Marks</a></button>
                    <button class="dropdown-item" type="button"><a href="attendance.jsp" class="dropdown-item">Add Attendance</a></button>
                  </div>
                </div>
            </li>

          </ul>

          <a class="btn btn-outline-info" href="logout.jsp">Logout</a>
        </div>
  </div>
</nav>

<section style="margin-top:10%;" >
  <div class="container py-5" style="background-color:rgba(0,0,0,0.5); border:2px solid white; ">
    <h1 align="center"  class="mt-3 mb-5"><i> View Student Attendance </i></h1>

    <div class="container" style="margin-left:5%;">

    <a href="viewsem1attendance.jsp" class="btn  btn-outline-info mx-2">Semister-1</a>
    <a href="viewsem2attendance.jsp" class="btn  btn-outline-info mx-2">Semister-2</a>
    <a href="viewsem3attendance.jsp" class="btn  btn-outline-info mx-2">Semister-3</a>
    <a href="viewsem4attendance.jsp" class="btn  btn-outline-info mx-2">Semister-4</a>
    <a href="viewsem5attendance.jsp" class="btn  btn-outline-info mx-2">Semister-5</a>
    <a href="viewsem6attendance.jsp" class="btn  btn-outline-info mx-2">Semister-6</a>
    <a href="viewsem7attendance.jsp" class="btn  btn-outline-info mx-2">Semister-7</a>
    <a href="viewsem8attendance.jsp" class="btn  btn-outline-info mx-2">Semister-8</a>

      </div>
  </div>
</section>





    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
