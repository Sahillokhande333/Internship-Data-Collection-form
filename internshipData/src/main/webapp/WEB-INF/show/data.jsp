<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <title>Student Information Form</title>
  
</head>
<body>
<h1 class="container text-center">Student Internship Data Collection</h1>
<hr color="black">
<div class="container mt-5">


  <form action="upload" method="post" enctype="muLtipart/form-data">
    <div class="form-row">
      <div class="form-group col-md-6">
        <label for="firstName">First Name</label>
        <input type="text" class="form-control" id="firstName" placeholder="First Name"
        name="firstName">
      </div>
      <div class="form-group col-md-6">
        <label for="lastName">Last Name</label>
        <input type="text" class="form-control" id="lastName" placeholder="Last Name"
        name="lastName">
      </div>
    </div>
    <div class="form-row">
      <div class="form-group col-md-6">
        <label for="branch">Branch</label>
        <input type="text" class="form-control" id="branch" placeholder="Branch"
        name="branch">
      </div>
      <div class="form-group col-md-6">
        <label for="batch">Batch</label>
        <input type="text" class="form-control" id="batch" placeholder="Batch"
        name="batch">
      </div>
    </div>
    <div class="form-row">
      <div class="form-group col-md-6">
        <label for="percentage">Percentage</label>
        <input type="text" class="form-control" id="percentage" placeholder="Percentage"
        name="percentage">
      </div>
      <div class="form-group col-md-6">
        <label for="dob">Date of Birth</label>
        <input type="date" class="form-control" id="dob"
        name="DOB">
      </div>
    </div>
    <div class="form-row">
      <div class="form-group col-md-6">
        <label for="collegeName">College Name</label>
        <input type="text" class="form-control" id="collegeName" placeholder="College Name"
        name="collegeName">
      </div>
      
        <!-- Add more skills as needed -->
        <div class="form-group col-md-6">
            <label for="skills">Skills</label>
            <input type="text" class="form-control" id="skills" placeholder="skills"
            name="skills">
          </div>
        </div>  

    <div class="form-row">
      <div class="form-group col-md-6">
        <label for="projects">Projects</label>
        <input type="text" class="form-control" id="projects" placeholder="Projects"
        name="projects">
      </div>
      
   
    
      <div class="form-group col-md-6">
        <label>Mode</label><br>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="mode" id="offline" value="offline">
          <label class="form-check-label" for="offline">Offline</label>
        </div>
    
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="mode" id="virtual" value="virtual">
          <label class="form-check-label" for="virtual">Virtual</label>
        </div>
    </div>
   
    <div class="form-row">
    <div class="form-check form-check-inline">
    <label for="exampleFormControlFile1"><b>upload Resume</b></label>
    <input type="file" name="uploadFile" class="form-control-file" id="exampleFormControlFile1">
  </div>
  </div>
  </div>



    <div class="container text-center">
    <button type="submit" class="btn btn-primary">Submit</button>
</div>
  </form>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</body>
</html>
