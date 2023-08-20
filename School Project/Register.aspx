<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="School_Project.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">




    <section class="container centerForms">


        <div class="row">

            <%--Start left side and image--%>

            <div class="leftSide col-lg-6 col-md-6 col-sm-6 col-6 centerForms">
            </div>
            <%--End left side and image--%>

            <%--Start right side and Form--%>
            <div class="rightSide col-lg-6 col-md-6 col-sm-6 col-6 ">

                <div class="centerForms studentRegForm" style="flex-direction: column;">

                    <%--<form action="" method="post" >--%>
                            <asp:Label ID="msgReg" runat="server" class="m-2"></asp:Label>

                    <form runat="server">
                        <h3 class="registerTitle">Register Form</h3>

                        <div class="row">
                            <div class="form-group mb-4 col-md-6">
                                <asp:TextBox runat="server" type="text" class="form-control studentRegInput" id="firstName" name="firstName" placeholder="First Name"></asp:TextBox>
                                <span id="firstNameError" class="text-danger ms-2"></span>


                            </div>

                            <div class="form-group mb-4 col-md-6">
                                <asp:TextBox runat="server" type="text" class="form-control studentRegInput" id="lastName" name="lastName" placeholder="Last Name"></asp:TextBox>
                                <span id="lastNameError" class="text-danger ms-2"></span>

                            </div>
                        </div>

                        <div class="form-group mb-4">
                            <asp:TextBox runat="server" type="text" class="form-control studentRegInput" id="phone" name="phone" placeholder="Mobile"></asp:TextBox>
                            <span id="phoneError" class="text-danger ms-2"></span>
                        </div>

                        <%--                            <div class="row">
                                <div class="form-group mb-4 col-md-6">
                                    <input type="text" class="form-control studentRegInput" id="phone" name="phone"   placeholder="Mobile" >
                                   
                                </div>
                                <div class="form-group mb-4 col-md-6">
                                    <select class="form-control " id="city" name="city"   required>
                                        
                                        <option value="" selected disabled >City</option>
                                        <option value="Cairo">Cairo</option>
                                        <option value="Giza">Giza</option>
                                        <option value="Alexandris">Alexandris</option>
                                        <option value="Aswan">Aswan</option>
                                        <option value="Hurghada">Hurghada</option>
                                    </select>
                                   
                                </div>
                            </div>--%>


                        <div class="form-group mb-4">
                            <asp:TextBox runat="server" type="email" class="form-control studentRegInput" id="email"
                                aria-describedby="emailHelp" name="email" placeholder="Email"></asp:TextBox>

                            <span id="emailError" class="text-danger ms-2"></span>

                        </div>
                        <div class="form-group mb-4">
                            <asp:TextBox runat="server" type="password" class="form-control studentRegInput" id="password" name="password" placeholder="Password"></asp:TextBox>
                            <span id="passwordError" class="text-danger ms-2"></span>


                        </div>
                        <div class="form-group mb-4">
                            <asp:TextBox runat="server" type="password" class="form-control studentRegInput" id="confirmPassword" name="confirmPassword" placeholder="confirm Password"></asp:TextBox>
                            <span id="confirmPasswordError" class="text-danger ms-2"></span>
                        </div>
                        <div class="text-center">
                            <asp:Button Text="Register" runat="server" class="btn btn-primary w-50" OnClientClick="registerCheck()"  ID="reg"/>
                        </div>
                        <div class="mt-4 text-center">
                            <span>Already have an account? </span><a href="/Login">Login</a>
                        </div>
                    </form>

                </div>
            </div>
            <%--End right side and Form--%>
        </div>
    </section>






</asp:Content>
