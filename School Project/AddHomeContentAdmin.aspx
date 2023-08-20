<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="AddHomeContentAdmin.aspx.cs" Inherits="School_Project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminContent" runat="server">



        
    <div>
        
        <asp:Label ID="msg" runat="server" class="m-5"></asp:Label>
       <form runat="server" class="w-50 m-5"> 

           <h4 class="mb-4">Home Content</h4>
                    <div class="form-group mb-4">
                        <asp:TextBox runat="server" class="form-control" ID="title" name="title"  placeholder="Title"></asp:TextBox>
                        <span id="titleError" class="text-danger ms-2"></span>

                    </div>
                   <div class="mb-3">
                      <asp:TextBox runat="server" class="form-control " id="description" name='description' rows="5" TextMode="MultiLine" placeholder="Write a description" ></asp:TextBox>
                               <span id="descriptionError" class="text-danger ms-3"></span>

                    </div>

           
                    <div class="text-end">
                        <a href="EditContentHome.aspx" class="btn btn-dark w-25">Edit</a>
                        <asp:Button Text="Add" runat="server" class="btn btn-primary w-25" OnClientClick="AdminContentCheck()"/>
                    </div>
                  
                </form>

  </div>


    







</asp:Content>
