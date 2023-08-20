<%@ Page Title="" Language="C#" MasterPageFile="~/MainFrame.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="School_Project.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">





    <section>

        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/science.jpg" class="d-block w-100" alt="..." style="height: 650px;">
                </div>
                <div class="carousel-item">
                    <img src="images/math.jpg" class="d-block w-100" alt="..." style="height: 650px;">
                </div>

                <div class="carousel-item">
                    <img src="images/math1.jpg" class="d-block w-100" alt="..." style="height: 650px;">
                </div>
                <div class="carousel-item">
                    <img src="images/science2.jpg" class="d-block w-100" alt="..." style="height: 650px;">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <div class="container">
            <div class="homeContents">

                <asp:Label ID="vision" runat="server" class="homeTitles"></asp:Label>
                <asp:Label ID="visionText" runat="server" class="vision" ></asp:Label>
      <%--          <p class="vision">
                    Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis, eaque cumque et ea reprehenderit rem fugit dolores eos animi ipsam, minima tempore voluptate aut ex labore nesciunt. Cum, optio fuga?Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis, eaque cumque et ea reprehenderit rem fugit dolores eos animi ipsam, minima tempore voluptate aut ex labore nesciunt. Cum, optio fuga?
       Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis, eaque cumque et ea reprehenderit rem fugit dolores eos animi ipsam, minima tempore voluptate aut ex labore nesciunt. Cum, optio fuga?Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis, eaque cumque et ea reprehenderit rem fugit dolores eos animi ipsam, minima tempore voluptate aut ex labore nesciunt. Cum, optio fuga?

                </p>--%>

            </div>


            <div class="missionContent">

<%--                <h2 class="homeTitles">Our Mission</h2>--%>
                  <asp:Label ID="mission" runat="server" class="homeTitles"></asp:Label>


                <asp:Label ID="missionText" runat="server" class="vision"></asp:Label>


             <%--   <p class="vision">
                    Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis, eaque cumque et ea reprehenderit rem fugit dolores eos animi ipsam, minima tempore voluptate aut ex labore nesciunt. Cum, optio fuga?Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis, eaque cumque et ea reprehenderit rem fugit dolores eos animi ipsam, minima tempore voluptate aut ex labore nesciunt. Cum, optio fuga?
       Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis, eaque cumque et ea reprehenderit rem fugit dolores eos animi ipsam, minima tempore voluptate aut ex labore nesciunt. Cum, optio fuga?Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis, eaque cumque et ea reprehenderit rem fugit dolores eos animi ipsam, minima tempore voluptate aut ex labore nesciunt. Cum, optio fuga?

                </p>--%>

            </div>

        



        </div>





    </section>







</asp:Content>
