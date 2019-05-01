<%@ Page Title="Cat" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Cat.aspx.vb" Inherits="Cat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="content-wrapper">

        <div class="container-fluid">
            <form runat="server">

                <!-- Breadcrumbs-->
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="Dashboard.aspx">Dashboard</a>                      
                    </li>

                    <li class="breadcrumb-item">                        
                        <a href="PurchasePet.aspx">Purchasepet</a>
                    </li>

                    <li class="breadcrumb-item active">Cat</li>
                </ol>

                <!-- Page Content -->
                <h1>Cat</h1>
                <hr>
                <div class="form-group table-responsive">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-striped" OnRowDataBound="OnRowDataBound">
                        <Columns>
                            <asp:TemplateField HeaderText="Image">
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="100px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="TITLE" HeaderText="Title" SortExpression="TITLE"></asp:BoundField>
                            <asp:BoundField DataField="DISCRIPTION" HeaderText="Discription" SortExpression="DISCRIPTION"></asp:BoundField>
                            <asp:BoundField DataField="FIXED_PRICE" HeaderText="Fix Price" SortExpression="FIXED_PRICE"></asp:BoundField>
                            <asp:BoundField DataField="PRICE_FROM" HeaderText="Minimum Price" SortExpression="PRICE_FROM"></asp:BoundField>
                            <asp:BoundField DataField="PRICE_TO" HeaderText="Maximum Price" SortExpression="PRICE_TO"></asp:BoundField>
                            <asp:BoundField DataField="ADDRESS" HeaderText="Address" SortExpression="ADDRESS"></asp:BoundField>
                            <asp:BoundField DataField="MOBILE" HeaderText="Mobile Phone" SortExpression="MOBILE"></asp:BoundField>
                        </Columns>
                    </asp:GridView>
                </div>

                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\AnimalHubDB.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [TITLE], [FIXED_PRICE], [PRICE_FROM], [PRICE_TO], [DISCRIPTION], [ADDRESS], [MOBILE], [IMAGE], [ENTRY_DATE] FROM [SELL_DATA] WHERE ANIMAL_TYPE = 1 ORDER BY ENTRY_DATE DESC"></asp:SqlDataSource>
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