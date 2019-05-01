<%@ Page Title="ContactUs" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

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
            <li class="breadcrumb-item active">Contact Us</li>
          </ol>

          <!-- Page Content -->
          <h1>Contact Us</h1>
          <hr>
            <p>Direct your message to the Animal Hub. Once you write your issue, we will be contact you back.</p>
            <hr>
          <form runat ="server">

            <div class="row">                  
                  <div class="col-xl-6 col-sm-12">
                      Name :
                      <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server"></asp:TextBox>                   

                  </div>
              </div>

              <div class="row">                  
                  <div class="col-xl-6 col-sm-12">
                      Subject :
                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>                   

                  </div>
              </div>


              <div class="row">                  
                  <div class="col-xl-6 col-sm-12">
                      Your Email Address :
                      <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"></asp:TextBox>                   

                  </div>
              </div>


              <div class="row">                  
                  <div class="col-xl-6 col-sm-12">
                      Mobile Phone :
                      <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"></asp:TextBox>                   

                  </div>
              </div>

              <div class="row">
                  <div class="col-xl-6 col-sm-12">
                      Discription :
                      <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>

                  </div>
              </div><br />

              <div class="row">
              <div class="col-xl-6 col-sm-12">
                      <asp:Button ID="Button1" CssClass="btn btn-success btn-block" runat="server" Text="Submit" />
                      </div>
                </div><br />
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

