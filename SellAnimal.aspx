<%@ Page Title="Sell Animal" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="SellAnimal.aspx.vb" Inherits="SellAnimal" %>

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
            <li class="breadcrumb-item active">Sell an Animal</li>
          </ol>

          <!-- Page Content -->
          <h1>Sell an Animal</h1>
          <hr>
            <form runat ="server">
          <p>
              <div class="row">
                  <div class="col-12">
                      Select type of an Animal :
        <asp:DropDownList cssclass="form-control" ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True" Value="1">Cat</asp:ListItem>
            <asp:ListItem Value="2">Dog</asp:ListItem>
            <asp:ListItem Value="3">Other Pets</asp:ListItem>
            <asp:ListItem Value="4">Pet Food &amp; Accessories</asp:ListItem>
                      </asp:DropDownList> 
                  </div>
                  </div>
              

              <div class="row">                  
                  <div class="col-12">
                      Title :
                      <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"></asp:TextBox>                   

                  </div>
              </div>
              <div class="row">
                  <div class="col-xl-3 col-sm-12">
                      Price :
                      <asp:DropDownList cssclass="form-control" ID="DropDownList3" runat="server" AutoPostBack="True">
                          <asp:ListItem Selected="True" Value="1">Fixed Price</asp:ListItem>
                          <asp:ListItem Value="2">Price Range</asp:ListItem>
                          <asp:ListItem Value="3">Negotiable</asp:ListItem>
                      </asp:DropDownList> 

                  </div>
                  <div class="col-xl-3 col-sm-12">
                      Fixed Price :
                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>

                  </div>
                  <div class="col-xl-3 col-sm-12">
                      From :
                      <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"></asp:TextBox>

                  </div>
                  <div class="col-xl-3 col-sm-12">
                      To :
                      <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"></asp:TextBox>

                  </div>

              </div>
              <div class="row">
                  <div class="col-12">
                      Discription :
                      <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
                       </div>
                  </div>
                  <div class="row">                  
                  <div class="col-12">
                      Address:
                      <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"></asp:TextBox>                   

                  </div>
              </div>

              <div class="row">                  
                  <div class="col-xl-3 col-sm-12">
                      Mobile Phone :
                      <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server"></asp:TextBox>                   

                  </div>
              </div>
             
              <div class="row">
                  <div class="col-12">
                      Image :<br />
                      <asp:FileUpload ID="FileUpload1" CssClass="btn btn-primary btn-sm float-left form-control" runat="server" />

                  </div>
              </div> <br />
              <div class="row">
                  <div class="col-xl-6 col-sm-12">
                      <asp:Button ID="Button1" CssClass="btn btn-success btn-block" runat="server" Text="Submit" />
                      </div>
                  
                  <div class="col-xl-6 col-sm-12">
                      <asp:Button ID="Button2" CssClass="btn btn-warning btn-block" runat="server" Text="Reset" />
                      </div>
              </div>
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




