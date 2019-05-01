<%@ Page Title="My Account" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="MyAccount.aspx.vb" Inherits="MyAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


     <div id="content-wrapper">

        <div class="container-fluid">

          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
               <a href="Dashboard.aspx">Dashboard</a>
            </li>
            <li class="breadcrumb-item active">My Account</li>
          </ol>

          <!-- Page Content -->
          <h1>My Account</h1>
          <hr>
          <p>This is a great starting point for new custom pages.</p>

        </div>
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        <footer class="sticky-footer">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright © Animal Hub 2019</span>
            </div>
          </div>
        </footer>

      </div>
      <!-- /.content-wrapper -->

</asp:Content>

