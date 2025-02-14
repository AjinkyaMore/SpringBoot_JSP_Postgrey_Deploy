<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Udate - Adhyayan Pune</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style type="text/css">
.nav-item{
font-size: 18px;
font-weight: 600;
padding-left: 15px;
}
.btn{
 margin-bottom: 4px;
}

.divider:after,
.divider:before {
content: "";
flex: 1;
height: 1px;
background: #eee;
}
.h-custom {
height: calc(100% - 73px);
}
@media (max-width: 450px) {
.h-custom {
height: 100%;
}
}
</style>

</head>
<body>
<nav class="navbar navbar-expand-lg" style="background-color: #e3f2fd;">
  <div class="container-fluid">	
    <img src="https://adhyayann.com/wp-content/uploads/2023/06/logo-1-1536x384.png" alt="logo.png" height="70px" width="250px">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav" style="margin-left: auto; align-items: flex-end;">
        <li class="nav-item">
          <a class="nav-link" href="/">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Contact</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Courses</a>
        </li>
        <li class="nav-item">
          <a class="btn btn-primary" href="login">Login</a>
        </li>
        <li class="nav-item">
          <a class="btn btn-warning" href="register">Register</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<section class="vh-120">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
   <!--    <div class="col-md-9 col-lg-6 col-xl-5">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
          class="img-fluid" alt="Sample image">
      </div> -->
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
        
        <form action="update">
          <div class="divider d-flex align-items-center my-4">
            <p class="text-center fw-bold mx-3 mb-0">Update Details</p>
          </div>

		<div data-mdb-input-init class="form-outline mb-4">
            <input type="text" id="form3Example3" class="form-control form-control-lg"
              placeholder="Enter Rollno" name="rollno" value="${stu.rollno}" readonly="readonly"/>
            <label class="form-label" for="form3Example3">Roll No.</label>
          </div>
          
          <div data-mdb-input-init class="form-outline mb-4">
            <input type="text" id="form3Example3" class="form-control form-control-lg"
              placeholder="Enter Student name" name="sname" value="${stu.sname}" />
            <label class="form-label" for="form3Example3">Student Name</label>
          </div>
          
          <div data-mdb-input-init class="form-outline mb-4">
            <input type="text" id="form3Example3" class="form-control form-control-lg"
              placeholder="Enter Student Contact" name="contact" value="${stu.contact}"/>
            <label class="form-label" for="form3Example3">Student Contact</label>
          </div>
          
          <div data-mdb-input-init class="form-outline mb-4">
            <input type="text" id="form3Example3" class="form-control form-control-lg"
              placeholder="Enter Student Marks" name="marks" value="${stu.marks}"/>
            <label class="form-label" for="form3Example3">Student Marks</label>
          </div>

          <div data-mdb-input-init class="form-outline mb-4">
            <input type="text" id="form3Example3" class="form-control form-control-lg"
              placeholder="Enter Username" name="username" value="${stu.username}" />
            <label class="form-label" for="form3Example3">User Name</label>
          </div>

          <div data-mdb-input-init class="form-outline mb-3">
            <input type="password" id="form3Example4" class="form-control form-control-lg"
              placeholder="Enter Password" name="password" value="${stu.password}"/>
            <label class="form-label" for="form3Example4">Password</label>
          </div>

 		  <div class="text-center text-lg-start mt-4 pt-2 mb-3">
            <input  type="submit" data-mdb-button-init data-mdb-ripple-init class="btn btn-primary btn-lg w-100"
              style="padding-left: 2.5rem; padding-right: 2.5rem;" value="Update">
          </div>

        </form>
      </div>
    </div>
  </div>
  <div class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
    <!-- Copyright -->
    <div class="text-white mb-3 mb-md-0">
      Copyright © 2024. All rights reserved.
    </div>
    <!-- Copyright -->

    <!-- Right -->
    <div>
      <a href="#!" class="text-white me-4"><i class="fa-brands fa-facebook"></i></a>
      <a href="#!" class="text-white me-4"><i class="fa-brands fa-twitter"></i></a>
      <a href="#!" class="text-white me-4"><i class="fa-brands fa-google"></i></a>
      <a href="#!" class="text-white"><i class="fa-brands fa-linkedin"></i></a>
    </div>
    <!-- Right -->
  </div>
</section>
</body>
</html>