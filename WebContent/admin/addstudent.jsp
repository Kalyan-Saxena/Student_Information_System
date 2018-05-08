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
        color: #fff;
      }


    </style>
  </head>
  <body>

    <div class="container">

      <h1 align="center" >Student Registration</h1><hr>

              <div class="jumbotron" style=" color:black;">


            <div class="container p-3">

            <form action="studentreg.jsp" method="post" >
              <h4 >Student Information Details</h4>
              <div class="row">
                <div class="col-lg-4">
                  <div class="form-group ">
                    <label for="fn">First name :</label>
                    <input type="text" class="form-control" id="fn"  placeholder="Enter Firstname" name="firstname" required>


                  </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group ">

                        <label for="mn">Middle name :</label>
                        <input type="text" class="form-control" id="mn"  placeholder="Enter Middlename" name="middlename" required>

                      </div>
                    </div>

                    <div class="col-lg-4">
                      <div class="form-group">
                        <label for="ln">Last name :</label>
                        <input type="text" class="form-control" id="ln"  placeholder="Enter Lastname" name="lastname" required>

                      </div>
                    </div>

                    <div class="col-lg-4">
                      <div class="form-group">
                        <label for="fathern">Father name :</label>
                        <input type="text" class="form-control" id="fathern"  placeholder="Enter Fathername" name="fathername" required>

                      </div>
                    </div>

                    <div class="col-lg-4">
                      <div class="form-group">
                        <label for="fatherocp">Father Occupation :</label>
                        <input type="text" class="form-control" id="fatherocp"  placeholder="Enter Occupation" name="foccupation" required>

                      </div>
                    </div>

                    <div class="col-lg-4">
                      <div class="form-group">
                        <label for="cat">Category : </label>
                        <select class="form-control" id="cat" name="category" required>
                          <option value="General">General</option>
                          <option value="NRI">NRI</option>
                        </select>
                      </div>
                    </div>



                    <div class="col-lg-4">
                      <div class="form-group">
                        <label for="dob">Date-of-Birth :</label>
                        <input type="date" class="form-control" id="dob"  placeholder="Date-of-Birth" name="dob" required>

                      </div>
                    </div>

                    <div class="col-lg-4">
                      <div class="form-group">
                        <label for="email">E-mail :</label>
                        <input type="email" class="form-control" id="email"  placeholder="Your E-mail" name="email" required>

                      </div>
                    </div>

                    <div class="col-lg-4">
                      <div class="form-group">
                        <label for="mob">Mobile :</label>
                        <input type="number" class="form-control" id="mob"  placeholder="Enter Mobile number" name="mobile" required>

                      </div>
                    </div>

                    <div class="col-lg-4">

                      Gender :<br>

                      <input  class="mx-1 my-3" type="radio" name="gender" id="gender" value="Male">Male

                      <input   class="mx-1 my-3" type="radio" name="gender" id="gender" value="Female">Female



                    </div>



            </div><hr>

            <h4>Student Address Deatils</h4>
            <div class="row">
              <div class="col-lg-12">
                <div class="form-group">
                  <label for="mob">Address :</label>
                  <textarea name="addr" class="form-control" required></textarea>
                </div>
              </div>
            </div>
            <div class="row">


              <div class="col-lg-4">
                <div class="form-group">
                  <label for="city">City/Town :</label>
                  <input type="text" class="form-control" id="city"  placeholder="Enter Address here.." name="city" required>

                </div>
              </div>

              <div class="col-lg-4">
                <div class="form-group">
                  <label for="state">State : </label>
                  <select class="form-control" id="state" name="state" required>
                    <option value="Andhra Pradesh">Andhra Pradesh</option>
                  </select>
                </div>
              </div>


              <div class="col-lg-4">
                <div class="form-group">
                  <label for="country">Country : </label>
                  <select class="form-control" id="country" name="country" required>
                    <option value="India">India</option>
                  </select>
                </div>
              </div>

            </div><hr>

            <h4>Student Login Details</h4>

            <div class="row">


              <div class="col-lg-6">
                <div class="form-group">
                  <label for="username">Username :</label>
                  <input type="text" class="form-control" id="username"  placeholder="Enter username" name="username" required>

                </div>
              </div>

              <div class="col-lg-6">
                <div class="form-group">
                  <label for="pass">Password :</label>
                  <input type="password" class="form-control" id="pass"  placeholder="Enter password" name="password" required>

                </div>
              </div>


            </div>

            <button type="submit" name="submit" class="btn btn-primary">Submit</button>


            </form>


          </div>
            </div>

    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
