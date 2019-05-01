<%@ Page Title="Dashboard" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Dashboard.aspx.vb" Inherits="Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="content-wrapper">

        <div class="container-fluid">

            <!-- Breadcrumbs-->
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="Dashboard.aspx">Dashboard</a>
                </li>
                <li class="breadcrumb-item active">Home Page</li>
            </ol>

            <!-- Page Content -->
            <h1>Welcome To Animal Hub!</h1>
            <hr>

            <form runat="server">
                <div class="row">
                    <div class="col-xl-6 col-sm-12">
                        <div class="card text-white bg-primary o-hidden h-100">
                            <div class="card-body">
                                <div class="card-body-icon">
                                    <i class="fas fa-fw fa-comments"></i>
                                </div>
                                <div class="mr-5">Buy a Pet</div>
                            </div>
                            <a class="card-footer text-white clearfix small z-1" href="PurchasePet.aspx">
                                <span class="float-left">Click Here</span>
                                <span class="float-right">
                                    <i class="fas fa-angle-right"></i>
                                </span>
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-6 col-sm-12">
                        <div class="card text-white bg-warning o-hidden h-100">
                            <div class="card-body">
                                <div class="card-body-icon">
                                    <i class="fas fa-fw fa-list"></i>
                                </div>
                                <div class="mr-5">Sell an Animal</div>
                            </div>
                            <a class="card-footer text-white clearfix small z-1" href="SellAnimal.aspx">
                                <span class="float-left">Click Here</span>
                                <span class="float-right">
                                    <i class="fas fa-angle-right"></i>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
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