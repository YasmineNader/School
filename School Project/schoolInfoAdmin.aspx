<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="schoolInfoAdmin.aspx.cs" Inherits="School_Project.schoolInfoAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminContent" runat="server">




            
    <div>
        
        <asp:Label ID="msg" runat="server" class="m-5"></asp:Label>
       <form runat="server" class="w-50 m-5"> 

           <h4 class="mb-4">School Info</h4>


                    <div class="form-group mb-4">
                        <asp:TextBox runat="server" class="form-control" ID="address" name="address"  placeholder="Address"></asp:TextBox>
                        <span id="addressError" class="text-danger ms-2"></span>

                    </div>
             
                <div class="form-group mb-4">
                        <asp:TextBox runat="server" class="form-control" ID="emailInfo" name="emailInfo"  placeholder="Email"></asp:TextBox>
                        <span id="emailInfoError" class="text-danger ms-2"></span>

                    </div>
                <div class="form-group mb-4">
                        <asp:TextBox runat="server" class="form-control" ID="phoneInfo" name="phoneInfo"  placeholder="Phone"></asp:TextBox>
                        <span id="phoneInfoError" class="text-danger ms-2"></span>

                    </div>
               



                    <div class="text-end">
                        <a href="editInfoAdmin.aspx" class="btn btn-dark w-25">Edit</a>
                        <asp:Button Text="Add" runat="server" class="btn btn-primary w-25" OnClientClick="AdminSchoolInfoCheck()"/>
                    </div>
                  
                </form>

  </div>

</asp:Content>
