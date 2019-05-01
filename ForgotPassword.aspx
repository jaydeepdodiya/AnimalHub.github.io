﻿<%@ Page Title="ForgotPassword" Language="VB" AutoEventWireup="false" CodeFile="ForgotPassword.aspx.vb" Inherits="Forgot_Password_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    



 <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">



  <title>Forgot Password</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">

</head>

<body class="bg-dark">

  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Reset Password</div>
      <div class="card-body">
        <div class="text-center mb-4">
          <h4>Forgot your password?</h4>
          <p>Enter your User Name and we will send you instructions on how to reset your password.</p>
        </div>
        <form>
          <div class="form-group">
            <div class="form-label-group">
              <input type="email" id="inputEmail" class="form-control" placeholder="Enter email address" required="required" autofocus="autofocus">
              <label for="inputEmail">Enter User Name</label>
            </div>
          </div>
          <a class="btn btn-primary btn-block" href="ChangePass.aspx">Reset Password</a>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="Register.aspx">Register an Account</a>
          <a class="d-block small" href="Login.aspx">Login Page</a>
        </div>
      </div>
    </div>
  </div>


    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>
</html>