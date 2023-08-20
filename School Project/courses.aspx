<%@ Page Title="" Language="C#" MasterPageFile="~/MainFrame.Master" AutoEventWireup="true" CodeBehind="courses.aspx.cs" Inherits="School_Project.courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">




        <div class="courseContent">

            
            <div class="container">


         
                <h2 class="courseTitle">Our Courses</h2>


                <div style="margin-bottom: 80px; justify-content: space-evenly;" class="row ">
                    <asp:Repeater ID="coursesData" runat="server">
                          <ItemTemplate>


                           <div class="card p-0 mb-5" style="width: 18rem;">

                <img src="images/<%# Eval("ImageName") %>" class="card-img-top" alt="Card image cap" height="200">

                        <div class="card-body" style="border-top: 5px solid #dc3545">
                            <h5 class="card-title" style="color: #dc3545"><%# Eval("CourseName") %></h5>
                            <p class="card-text" style="color: grey"><%# Eval("description") %></p>
                            <div class="text-center">
                                <a href="/courseDetails?id=<%# Eval("id") %>" class="btn btn-danger w-100">Go</a>
                            </div>
                        </div>
                    </div>
            </ItemTemplate>

                    </asp:Repeater>

                 



                 <%--   <div class="card p-0 mb-5" style="width: 18rem;">
                        <img class="card-img-top" src="images/math1.jpg" alt="Card image cap" height="200">
                        <div class="card-body" style="border-top: 5px solid #dc3545">
                            <h5 class="card-title" style="color: #dc3545">Math Course</h5>
                            <p class="card-text" style="color: grey">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <div class="text-center">
                                <a href="#" class="btn btn-danger w-100">Go</a>
                            </div>
                        </div>
                    </div>
                 

                    <div class="card p-0 mb-5" style="width: 18rem;">
                        <img class="card-img-top" src="images/history.jpg" alt="Card image cap" height="200">
                        <div class="card-body" style="border-top: 5px solid #dc3545">
                            <h5 class="card-title" style="color: #dc3545">History Course</h5>
                            <p class="card-text" style="color: grey">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <div class="text-center">
                                <a href="#" class="btn btn-danger w-100">Go</a>
                            </div>
                        </div>
                    </div>--%>
                </div>

            </div>
               </div>
</asp:Content>
