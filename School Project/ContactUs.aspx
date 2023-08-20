<%@ Page Title="" Language="C#" MasterPageFile="~/MainFrame.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="School_Project.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">


   <div class="container contactUscont ">

      <div class="row">


         <div class="col">
             <h3 class="mb-4">Contact Us</h3>

             <div class="mb-3">
               <i  class="fa-sharp fa-solid fa-location-dot contactLogo"></i>
                 <asp:Label ID="address" runat="server"></asp:Label>

               <%--Lorem ipsum dolor sit, amet consectetur adipisicing elit.--%>


             </div>

                <div class="mb-3">
               <i  class="fa-solid fa-envelope contactLogo"></i>
<%--        school@test.com--%>
            <asp:Label ID="emailSchool" runat="server"></asp:Label>


                </div>


                         <div class="mb-3">
               <i  class="fa-sharp fa-solid fa-tty contactLogo"></i>
                   <asp:Label ID="phone" runat="server"></asp:Label>

                        <%--33556677--%>
             </div>

         </div>




            <div class="col contactForm">

             <asp:Label ID="msgSucess" runat="server" class="m-3"></asp:Label>

               <form runat="server">
                   <div class="mb-3">
                   <asp:TextBox runat="server" class="form-control form-control-lg contactInputs1" type="text" id="subject" name="subject" placeholder="Subject" aria-label=".form-control-lg example"></asp:TextBox>
                                               <span id="subjectError" class="text-danger ms-3"></span>

                       </div>
                <div class="mb-3">
                   <asp:TextBox runat="server" class="form-control form-control-lg contactInputs2" type="text" id="email" name="email" placeholder="Email Address" aria-label=".form-control-lg example"></asp:TextBox>
                                            <span id="emailMessageError" class="text-danger ms-3"></span>

                           </div>

                   <div class="mb-3">
                      <asp:TextBox runat="server" class="form-control contactInputs3" id="message" name='message' rows="5" TextMode="MultiLine" placeholder="Write a Message" ></asp:TextBox>
                                     <span id="messageError" class="text-danger ms-3"></span>

                    </div>
                   <div class=" btnContact" >
                   <asp:Button Text="Send Message" runat="server" class="btn btn-danger" OnClientClick="messageCheck()"/>
                       </div>
               </form>




         </div>




      </div>




   </div>



</asp:Content>
