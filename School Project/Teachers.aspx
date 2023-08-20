<%@ Page Title="" Language="C#" MasterPageFile="~/MainFrame.Master" AutoEventWireup="true" CodeBehind="Teachers.aspx.cs" Inherits="School_Project.Teachers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">


<div class="container teacherContainer" >



    <div class="row" style="justify-content: space-around;">

        <asp:Repeater ID="teachersData" runat="server">

            <ItemTemplate>
                <div class="card" style="width: 18rem; border: none">
                    <img src="images/<%# Eval("imageName") %>" class="card-img-top" alt="images" style="border-radius: 50%;">
                    <div class="card-body" style="text-align: center;">
                        <p class="card-text"><%# Eval("teacherName") %></p>
                        <p class="card-text"><%# Eval("courseName") %></p>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>



<%--          <div class="card" style="width: 18rem;border:none">
  <img src="images/man.png" class="card-img-top" alt="..." style="border-radius: 50%;">
  <div class="card-body" style=" text-align: center;">
    <p class="card-text">David Adams</p>
    <p class="card-text">Math Teacher</p>

  
  </div>
</div>

  <div class="card" style="width: 18rem;border:none">
  <img src="images/Woman.png" class="card-img-top" alt="..." style="border-radius: 50%;">
  <div class="card-body" style=" text-align: center;">
    <p class="card-text">Sarah Adams</p>
    <p class="card-text">History Teacher</p>

  
  </div>--%>
</div>

    </div>





</asp:Content>
