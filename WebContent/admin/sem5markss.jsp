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
        background-repeat:no-repeat;
        background-size:cover;
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

    <div class="container">

      <h1 align="center" class="my-3" >Semister-5 Marks</h1><hr>

      <form action="sem5marks.jsp"  method="post" >
        <div class="form-group row" style="margin-left:20%;">
          <label for="stdno" class="col-sm-2  col-form-label">Student Reg.No :</label>
          <div class="col-sm-5">
            <input type="text" class="form-control" id="stdno" name="stdreg" placeholder="Student registration number" required>
          </div>
        </div><hr>


        <div class="row">
          <div class="col-lg-6">

            <h3 class="my-4">Subject-1 details</h3>
            <div class="form-group row ">
              <label for="sub" class="col-sm-2 col-form-label">Subject :</label>

              <select class=" col-sm-5 form-control mx-3"  id="sub" name="subj1" required>
                <option selected disabled value="">Subject</option>
                <option value="DATE WAREHOUSING AND DATA MINING">DATE WAREHOUSING AND DATA MINING</option>
                <option value="OBJECT ORIENTED SOFTWARE ENGINEERING">OBJECT ORIENTED SOFTWARE ENGINEERING</option>
                <option value="MOOCS">MOOCS</option>
                <option value="DESIGN AND ANALYSIS OF ALGORITHMS">DESIGN AND ANALYSIS OF ALGORITHMS</option>
                <option value="COMPUTER GRAPHICS">COMPUTER GRAPHICS</option>
                <option value="COMPILER DESIGN">COMPILER DESIGN</option>
                <option value="SOFTWARE ENGINEERING MINI PROJECT LAB">SOFTWARE ENGINEERING MINI PROJECT LAB</option>
                <option value="WEB TECHNOLOGIES LAB">WEB TECHNOLOGIES LAB</option>
              </select>
            </div>
            <div class="form-group row ">
              <label for="internal" class="col-sm-2 col-form-label">Internal :</label>
              <div class="col-sm-6">
                <input type="text" class="form-control" id="internal" name="s1intr" placeholder="Internal" required>
              </div>
            </div>
            <div class="form-group row ">
              <label for="external" class="col-sm-2 col-form-label">External :</label>
              <div class="col-sm-6">
                <input type="text" class="form-control" id="external" name="s1extr" placeholder="External" required>
              </div>
            </div><hr>

            <h3 class="my-4">Subject-2 details</h3>
            <div class="form-group row ">
              <label for="sub" class="col-sm-2 col-form-label">Subject :</label>
              <select class=" col-sm-5 form-control mx-3"  id="sub" name="subj2" required>
                <option selected disabled value="">Subject</option>
                <option value="DATE WAREHOUSING AND DATA MINING">DATE WAREHOUSING AND DATA MINING</option>
                <option value="OBJECT ORIENTED SOFTWARE ENGINEERING">OBJECT ORIENTED SOFTWARE ENGINEERING</option>
                <option value="MOOCS">MOOCS</option>
                <option value="DESIGN AND ANALYSIS OF ALGORITHMS">DESIGN AND ANALYSIS OF ALGORITHMS</option>
                <option value="COMPUTER GRAPHICS">COMPUTER GRAPHICS</option>
                <option value="COMPILER DESIGN">COMPILER DESIGN</option>
                <option value="SOFTWARE ENGINEERING MINI PROJECT LAB">SOFTWARE ENGINEERING MINI PROJECT LAB</option>
                <option value="WEB TECHNOLOGIES LAB">WEB TECHNOLOGIES LAB</option>
              </select>
            </div>
            <div class="form-group row ">
              <label for="internal" class="col-sm-2 col-form-label">Internal :</label>
              <div class="col-sm-6">
                <input type="text" class="form-control" id="internal" name="s2intr" placeholder="Internal" required>
              </div>
            </div>
            <div class="form-group row ">
              <label for="external" class="col-sm-2 col-form-label">External :</label>
              <div class="col-sm-6">
                <input type="text" class="form-control" id="external" name="s2extr" placeholder="External" required>
              </div>
            </div><hr>

            <h3 class="my-4">Subject-3 details</h3>
            <div class="form-group row ">
              <label for="sub" class="col-sm-2 col-form-label">Subject :</label>
              <select class=" col-sm-5 form-control mx-3"  id="sub" name="subj3" required>
                <option selected disabled value="">Subject</option>
                <option value="DATE WAREHOUSING AND DATA MINING">DATE WAREHOUSING AND DATA MINING</option>
                <option value="OBJECT ORIENTED SOFTWARE ENGINEERING">OBJECT ORIENTED SOFTWARE ENGINEERING</option>
                <option value="MOOCS">MOOCS</option>
                <option value="DESIGN AND ANALYSIS OF ALGORITHMS">DESIGN AND ANALYSIS OF ALGORITHMS</option>
                <option value="COMPUTER GRAPHICS">COMPUTER GRAPHICS</option>
                <option value="COMPILER DESIGN">COMPILER DESIGN</option>
                <option value="SOFTWARE ENGINEERING MINI PROJECT LAB">SOFTWARE ENGINEERING MINI PROJECT LAB</option>
                <option value="WEB TECHNOLOGIES LAB">WEB TECHNOLOGIES LAB</option>
              </select>
            </div>
            <div class="form-group row ">
              <label for="internal" class="col-sm-2 col-form-label">Internal :</label>
              <div class="col-sm-6">
                <input type="text" class="form-control" id="internal" name="s3intr" placeholder="Internal" required>
              </div>
            </div>
            <div class="form-group row ">
              <label for="external" class="col-sm-2 col-form-label">External :</label>
              <div class="col-sm-6">
                <input type="text" class="form-control" id="external" name="s3extr" placeholder="External" required>
              </div>
            </div><hr>

            <h3 class="my-4">Subject-4 details</h3>
            <div class="form-group row ">
              <label for="sub" class="col-sm-2 col-form-label">Subject :</label>
              <select class=" col-sm-5 form-control mx-3"  id="sub" name="subj4" required>
                <option selected disabled value="" >Subject</option>
                <option value="DATE WAREHOUSING AND DATA MINING">DATE WAREHOUSING AND DATA MINING</option>
                <option value="OBJECT ORIENTED SOFTWARE ENGINEERING">OBJECT ORIENTED SOFTWARE ENGINEERING</option>
                <option value="MOOCS">MOOCS</option>
                <option value="DESIGN AND ANALYSIS OF ALGORITHMS">DESIGN AND ANALYSIS OF ALGORITHMS</option>
                <option value="COMPUTER GRAPHICS">COMPUTER GRAPHICS</option>
                <option value="COMPILER DESIGN">COMPILER DESIGN</option>
                <option value="SOFTWARE ENGINEERING MINI PROJECT LAB">SOFTWARE ENGINEERING MINI PROJECT LAB</option>
                <option value="WEB TECHNOLOGIES LAB">WEB TECHNOLOGIES LAB</option>
              </select>
            </div>
            <div class="form-group row ">
              <label for="internal" class="col-sm-2 col-form-label">Internal :</label>
              <div class="col-sm-6">
                <input type="text" class="form-control" id="internal" name="s4intr" placeholder="Internal" required>
              </div>
            </div>
            <div class="form-group row ">
              <label for="external" class="col-sm-2 col-form-label">External :</label>
              <div class="col-sm-6">
                <input type="text" class="form-control" id="external" name="s4extr" placeholder="External" required>
              </div>
            </div><hr>


          </div>


          <div class="col-lg-6">

            <h3 class="my-4">Subject-5 details</h3>
            <div class="form-group row ">
              <label for="sub" class="col-sm-2 col-form-label">Subject :</label>
              <select class=" col-sm-5 form-control mx-3"  id="sub" name="subj5" required>
                <option selected disabled value="">Subject</option>
                <option value="DATE WAREHOUSING AND DATA MINING">DATE WAREHOUSING AND DATA MINING</option>
                <option value="OBJECT ORIENTED SOFTWARE ENGINEERING">OBJECT ORIENTED SOFTWARE ENGINEERING</option>
                <option value="MOOCS">MOOCS</option>
                <option value="DESIGN AND ANALYSIS OF ALGORITHMS">DESIGN AND ANALYSIS OF ALGORITHMS</option>
                <option value="COMPUTER GRAPHICS">COMPUTER GRAPHICS</option>
                <option value="COMPILER DESIGN">COMPILER DESIGN</option>
                <option value="SOFTWARE ENGINEERING MINI PROJECT LAB">SOFTWARE ENGINEERING MINI PROJECT LAB</option>
                <option value="WEB TECHNOLOGIES LAB">WEB TECHNOLOGIES LAB</option>
              </select>
            </div>
            <div class="form-group row ">
              <label for="internal" class="col-sm-2 col-form-label">Internal :</label>
              <div class="col-sm-6">
                <input type="text" class="form-control" id="internal" name="s5intr" placeholder="Internal" required>
              </div>
            </div>
            <div class="form-group row ">
              <label for="external" class="col-sm-2 col-form-label">External :</label>
              <div class="col-sm-6">
                <input type="text" class="form-control" id="external" name="s5extr" placeholder="External" required>
              </div>
            </div><hr>


            <h3 class="my-4">Subject-6 details</h3>
            <div class="form-group row ">
              <label for="sub" class="col-sm-2 col-form-label">Subject :</label>
              <select class=" col-sm-5 form-control mx-3"  id="sub" name="subj6" required>
                <option selected disabled value="">Subject</option>
                <option value="DATE WAREHOUSING AND DATA MINING">DATE WAREHOUSING AND DATA MINING</option>
                <option value="OBJECT ORIENTED SOFTWARE ENGINEERING">OBJECT ORIENTED SOFTWARE ENGINEERING</option>
                <option value="MOOCS">MOOCS</option>
                <option value="DESIGN AND ANALYSIS OF ALGORITHMS">DESIGN AND ANALYSIS OF ALGORITHMS</option>
                <option value="COMPUTER GRAPHICS">COMPUTER GRAPHICS</option>
                <option value="COMPILER DESIGN">COMPILER DESIGN</option>
                <option value="SOFTWARE ENGINEERING MINI PROJECT LAB">SOFTWARE ENGINEERING MINI PROJECT LAB</option>
                <option value="WEB TECHNOLOGIES LAB">WEB TECHNOLOGIES LAB</option>
              </select>
            </div>
            <div class="form-group row ">
              <label for="internal" class="col-sm-2 col-form-label">Internal :</label>
              <div class="col-sm-6">
                <input type="text" class="form-control" id="internal" name="s6intr" placeholder="Internal" required>
              </div>
            </div>
            <div class="form-group row ">
              <label for="external" class="col-sm-2 col-form-label">External :</label>
              <div class="col-sm-6">
                <input type="text" class="form-control" id="external" name="s6extr" placeholder="External" required>
              </div>
            </div><hr>

            <h3 class="my-4">Subject-7 details</h3>
            <div class="form-group row ">
              <label for="sub" class="col-sm-2 col-form-label">Subject :</label>
              <select class=" col-sm-5 form-control mx-3"  id="sub" name="subj7" required>
                <option selected disabled value="">Subject</option>
                <option value="DATE WAREHOUSING AND DATA MINING">DATE WAREHOUSING AND DATA MINING</option>
                <option value="OBJECT ORIENTED SOFTWARE ENGINEERING">OBJECT ORIENTED SOFTWARE ENGINEERING</option>
                <option value="MOOCS">MOOCS</option>
                <option value="DESIGN AND ANALYSIS OF ALGORITHMS">DESIGN AND ANALYSIS OF ALGORITHMS</option>
                <option value="COMPUTER GRAPHICS">COMPUTER GRAPHICS</option>
                <option value="COMPILER DESIGN">COMPILER DESIGN</option>
                <option value="SOFTWARE ENGINEERING MINI PROJECT LAB">SOFTWARE ENGINEERING MINI PROJECT LAB</option>
                <option value="WEB TECHNOLOGIES LAB">WEB TECHNOLOGIES LAB</option>
              </select>
            </div>
            <div class="form-group row ">
              <label for="internal" class="col-sm-2 col-form-label">Internal :</label>
              <div class="col-sm-6">
                <input type="text" class="form-control" id="internal" name="s7intr" placeholder="Internal" required>
              </div>
            </div>
            <div class="form-group row ">
              <label for="external" class="col-sm-2 col-form-label">External :</label>
              <div class="col-sm-6">
                <input type="text" class="form-control" id="external" name="s7extr" placeholder="External" required>
              </div>
            </div><hr>


            <h3 class="my-4">Subject-8 details</h3>
            <div class="form-group row ">
              <label for="sub" class="col-sm-2 col-form-label">Subject :</label>
              <select class=" col-sm-5 form-control mx-3"  id="sub" name="subj8" required>
                <option selected disabled value="">Subject</option>
                <option value="DATE WAREHOUSING AND DATA MINING">DATE WAREHOUSING AND DATA MINING</option>
                <option value="OBJECT ORIENTED SOFTWARE ENGINEERING">OBJECT ORIENTED SOFTWARE ENGINEERING</option>
                <option value="MOOCS">MOOCS</option>
                <option value="DESIGN AND ANALYSIS OF ALGORITHMS">DESIGN AND ANALYSIS OF ALGORITHMS</option>
                <option value="COMPUTER GRAPHICS">COMPUTER GRAPHICS</option>
                <option value="COMPILER DESIGN">COMPILER DESIGN</option>
                <option value="SOFTWARE ENGINEERING MINI PROJECT LAB">SOFTWARE ENGINEERING MINI PROJECT LAB</option>
                <option value="WEB TECHNOLOGIES LAB">WEB TECHNOLOGIES LAB</option>
              </select>
            </div>
            <div class="form-group row ">
              <label for="internal" class="col-sm-2 col-form-label">Internal :</label>
              <div class="col-sm-6">
                <input type="text" class="form-control" id="internal" name="s8intr" placeholder="Internal" required>
              </div>
            </div>
            <div class="form-group row ">
              <label for="external" class="col-sm-2 col-form-label">External :</label>
              <div class="col-sm-6">
                <input type="text" class="form-control" id="external" name="s8extr" placeholder="External" required>
              </div>
            </div><hr>



          </div>


        </div>



        <button type="submit" name="submit"  class="btn btn-outline-info my-3" style="margin-left:37%;">Submit</button>
        <button type="reset"   class="btn btn-outline-info">Reset</button>
      </form>



    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
