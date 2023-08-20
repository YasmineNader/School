<%@ Page Title="" Language="C#" MasterPageFile="~/MainFrame.Master" AutoEventWireup="true" CodeBehind="courseDetails.aspx.cs" Inherits="School_Project.courseDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">


    <div class="container courseDetailsConte" style="margin-bottom:150px;">
        <asp:Repeater ID="courseDetail" runat="server">
            <ItemTemplate>
    
       <div class="row">


            <div class="col">

                <img src="images/<%# Eval("ImageName") %>" width="600" class="imgsection"/>


            </div>



           <div class="col courseDetails">
               <div>

     <h5 class="descrTitle">Description</h5>
  <p class="descrPara" >
      <asp:Label ID="description" runat="server" Text="Label"></asp:Label>
 <%--Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis, 
 eaque cumque et ea reprehenderit rem fugit dolores eos animi ipsam, minima tempore voluptate aut ex labore nesciunt. 
 fugit dolores eos animi ipsam, minima tempore voluptate aut ex labore nesciunt. Cum, optio fuga?--%>
      <%# Eval("description") %>
 </p>

     </div>
     
             <div>

                <h5 class="teacherName">Teacher</h5>
              <p class="detailsPara">
             <%--Mona Adams--%>
                   <%# Eval("teacherName") %>
             </p>

               </div>
    <div>

                <h5 class="dateTitle">Course Date</h5>
              <p class="detailsPara">
                 <%-- 30/8/2023--%>
                   <%# Eval("courseDate") %>
             </p>

               </div>



                   <div>

                <h5 class="timeTitle">Course Time</h5>
              <p class="detailsPara">
                  From  <%# Eval("startTime") %> PM To  <%# Eval("endTime") %> PM
             </p>

               </div>
            </div>


       </div>
</ItemTemplate>
    </asp:Repeater>


    </div>


</asp:Content>
