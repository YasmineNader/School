<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="addCourseAdmin.aspx.cs" Inherits="School_Project.addCourseAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="adminContent" runat="server">

     <div style="margin-bottom: 200px;">
        
        <asp:Label ID="msg" runat="server" class="m-5"></asp:Label>
       <form runat="server" id="courseAdmin" class="w-50 m-5" method="post"> 

           <h4 class="mb-4">Add Course </h4>

              <div class="form-group mb-4">
                        
                  <h6 style="display: inline;">Course Image : </h6>
                         <asp:FileUpload ID="CourseImage" runat="server" />
                   <span id="CourseImageError" class="text-danger ms-2"></span>

                    </div>
                    <div class="form-group mb-4">
                        <asp:TextBox runat="server" class="form-control" ID="course" name="course"  placeholder="Course Name"></asp:TextBox>
                        <span id="courseError" class="text-danger ms-2"></span>

                    </div>
             
                <div class="form-group mb-4">
                        <asp:TextBox runat="server" class="form-control" ID="CourseDescription" name="CourseDescription"  placeholder="Course Description"></asp:TextBox>
                        <span id="CourseDescriptionError" class="text-danger ms-2"></span>

                    </div>
          
                  <div class="form-group mb-4">
                        <asp:TextBox runat="server" class="form-control" ID="courseTeacher" name="courseTeacher"  placeholder="Course Teacher"></asp:TextBox>
                        <span id="courseTeacherError" class="text-danger ms-2"></span>

                    </div>
           
              <div class="form-group mb-4">
                        <asp:TextBox runat="server" class="form-control" ID="courseDate" name="courseDate"  placeholder="Course Date"></asp:TextBox>
                        <span id="courseDateError" class="text-danger ms-2"></span>

                    </div>
               
                     <div class="form-group mb-4">
                        <asp:TextBox runat="server" class="form-control" ID="startTime" name="startTime"  placeholder="Strat Time"></asp:TextBox>
                        <span id="startTimeError" class="text-danger ms-2"></span>

                    </div>
           <div class="form-group mb-4">
                        <asp:TextBox runat="server" class="form-control" ID="endTime" name="endTime"  placeholder="End Time"></asp:TextBox>
                        <span id="endTimeError" class="text-danger ms-2"></span>

                    </div>
                  
                  
                    <div class="text-end">
                        <a href="EditCourseAdmin.aspx" class="btn btn-dark w-25">Edit</a>
                        <asp:Button Text="Add" runat="server" class="btn btn-primary w-25" OnClientClick="AddCourseCheck()"/>
                    </div>
                  
                </form>

  </div>




</asp:Content>
