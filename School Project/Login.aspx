<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="School_Project.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

  <section class="container">


        <div class="row centerForms">
         
               <%--Start boy Image--%>
              <div class="col-lg-4 col-sm-3">

                <div class="centerForms">
                 <img src="images/boy.png" alt="boyImage" width="300">
                </div>
            </div>

            <%-- End boy Image --%>
           
            <%--Start login Form--%> 
            <div class="col-lg-4 col-sm-5 formContent">
                  <div style="text-align:center;color:red;">
                <asp:Label ID="invalid" runat="server" class="m-5"></asp:Label>
            </div>
                <h3 style="text-align: center; color: white; margin-bottom: 20px;">Login Form</h3>
                
                    
                    <form runat="server"> 


                    <div class="form-group mb-4">
                        <asp:TextBox runat="server" type="email" class="form-control" ID="email" name="email" aria-describedby="emailHelp" placeholder="Email"></asp:TextBox>
                        <span id="emailLoginError" class="text-danger ms-2"></span>

                    </div>
                    <div class="form-group mb-4">
                        <asp:TextBox runat="server" type="password" class="form-control" ID="password" name="password" placeholder="Password"></asp:TextBox>
                        <span id="PasswordLoginError" class="text-danger ms-2"></span>

                    </div>
                    <div class="text-end">
                        <asp:Button Text="Login" runat="server" class="btn btn-primary w-50" OnClientClick="return loginCheck()"/>
                    </div>
                    <div class="mt-4 text-center">
                        <span>Don't have an account? </span><a href="/Register">Register</a>
                    </div>
                </form>

            </div>
            <%-- End login Form --%>

          

   <%--Start girl Image--%>
  <div class="col-lg-4 col-sm-3">
    <div class="centerForms">
  <img src="images/girl.png" alt="girlImage" width="300">
    </div>
</div>
 <%--End girl Image --%>



        </div>
    </section>



</asp:Content>
