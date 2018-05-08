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
        background-repeat: no-repeat;
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



<div class="container" style="margin-top:10%;">
  <div class="row">
    <div class="col-lg-4 mx-auto mb-3" style="border:2px solid #fff; border-radius:5px;">
      <div class="row">
        <nav class="navbar navbar-expand-xs navbar-dark bg-inverse mx-auto" >

            <a class="navbar-brand" href="#"><b>Student</b></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#student-related" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="student-related">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item active mx-2">
                  <a class="nav-link " href="addstudent.jsp">Add Student <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item mx-2">
                  <a class="nav-link " href="delstudent.jsp">Delete Student</a>
                </li>

                <li class="nav-item mx-2">
                  <a class="nav-link " href="viewstudent.jsp">View Student</a>
                </li>


              </ul>

            </div>

      </nav>

      </div>
    </div>
  </div>

    <div class="row">

    <div class="col-lg-4 mx-auto my-3" style="border:2px solid #fff; border-radius:5px;">
      <div class="row">
        <nav class="navbar navbar-expand-xs navbar-dark bg-inverse mx-auto" >

            <a class="navbar-brand" href="#"><b>Marks</b></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#marks-related" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="marks-related">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item active mx-2">
                  <a class="nav-link " href="marksmenu.jsp">Add Student Marks <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item mx-2">
                  <a class="nav-link " href="delmarkss.jsp">Delete Student Marks</a>
                </li>

                <li class="nav-item mx-2">
                  <a class="nav-link " href="viewmarks.jsp">View Student Marks</a>
                </li>


              </ul>

            </div>

      </nav>

      </div>
    </div>

  </div>



<div class="row">
    <div class="col-lg-4 mx-auto my-3" style="border:2px solid #fff; border-radius:5px;">
      <div class="row">
        <nav class="navbar navbar-expand-xs navbar-dark bg-inverse mx-auto" >

            <a class="navbar-brand" href="#"><b>Attendance</b></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#attendance-related" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="attendance-related">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item active mx-2">
                  <a class="nav-link " href="attendance.jsp">Add Student Attendance <span class="sr-only">(current)</span></a>
                </li>
                

                <li class="nav-item mx-2">
                  <a class="nav-link " href="viewatten.jsp">View Student Attendance</a>
                </li>


              </ul>

            </div>

      </nav>

      </div>
    </div>

  </div>
  </div>
</div>


    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
