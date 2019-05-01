 <%@ Page Title="About animal hub" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="About.aspx.vb" Inherits="About" %>

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
            <li class="breadcrumb-item active">About</li>
          </ol>

          <!-- Page Content -->
          <h1>About</h1>
          <hr>
          <h2><%: Title %></h2>
          <hr>
             <p>Animal Hub is buying and selling animal portal that provide such type of animal that people get easily from our website. Animal Hub coming with a vision to make pet parenting hassle or as per requirement people find such animals. We have carefully analyzed all the requirements of our project and prepare the abstract of project. We discussed existing problem and think about the possible solutions. So we have built new website in asp.net that can be helpful to animal lovers who want to buying and selling easily as their requirements.</p>
            <hr>
    <address>
        Shantilal Shah Engineering College, Bhavnagar<br />
        Created By Atul Goyani, Jaydeep Dodiya, Jignesh Lakum<br />
        Information Technology 2019 Batch
    </address>
            <hr>
    <address>
        <strong>Support:</strong><a href="mailto:Support@animalhub.com">Support@animalhub.com</a><br />        
    </address>

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

