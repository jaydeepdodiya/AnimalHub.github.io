<%@ Page Title="Registration" Language="VB" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Registration</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">

    <div class="container">
        <div class="card card-login mx-auto mt-5">
            <div class="card-header">Register an Account</div>
            <div class="card-body">
                <form runat="server">

                    <div class="form-group">
                        <div class="form-label-group">
                            Username :
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="form-label-group">
                            Password :
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>

                    <asp:Button ID="Button1" CssClass="btn btn-primary btn-block" runat="server" Text="Register" />
                </form>
                <div class="text-center">
                    <a class="d-block small mt-3" href="Login.aspx">Login Page</a>
                    <a class="d-block small" href="ForgotPassword.aspx">Forgot Password?</a>
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