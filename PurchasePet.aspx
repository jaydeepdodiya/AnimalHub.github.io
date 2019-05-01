<%@ Page Title="Purchase Pets" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="PurchasePet.aspx.vb" Inherits="PurchasePet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="content-wrapper">

        <div class="container-fluid">

          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="index.html">Dashboard</a>
            </li>
            <li class="breadcrumb-item active">Buy a Pet</li>
          </ol>

          <!-- Page Content -->
          <h1>Buy a Pet</h1>
          <hr>
            <form runat ="server">
          <p>
              <center>
              <div class="row">
                  <div class="col-xl-3 col-6">
                      <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/cat-face_1f431.png" /><br />
                      <b>Cat</b>
                  </div>
                  <div class="col-xl-3 col-6">
                      <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/dog-face_1f436.png" /><br />
                      <b>Dog</b>
                  </div>
                  <div class="col-xl-3 col-6">
                      <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/paw-prints_1f43e.png" /><br />
                      <b>Other Pets</b>
                  </div>
                  <div class="col-xl-3 col-6">
                      <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Images/house-building_1f3e0.png" /><br />
                      <b>Pet Food & Accessories</b>
                  </div>
              </div>
                  </center>
          </p>
                </form>

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

