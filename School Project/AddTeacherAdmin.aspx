<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="AddTeacherAdmin.aspx.cs" Inherits="School_Project.AddTeacherAdminaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminContent" runat="server">


      <div>

        <asp:Label ID="msg" runat="server" class="m-5"></asp:Label>
       <form runat="server" class="w-50 m-5"> 

           <h4 class="mb-4">Add Teacher </h4>

              <div class="form-group mb-4">
                        <%--<asp:TextBox runat="server" class="form-control" ID="imageName" name="imageName"  placeholder="Image Name"></asp:TextBox>
                        <span id="imageNameError" class="text-danger ms-2"></span>--%>
                  <%--<asp:Label ID="Label1" runat="server" Text="Teacher Image : "></asp:Label>--%>
                  <h6 style="display: inline;">Teacher Image : </h6>
                         <asp:FileUpload ID="imageUpload" runat="server" />
                   <span id="imageUploadError" class="text-danger ms-2"></span>

                    </div>
                    <div class="form-group mb-4">
                        <asp:TextBox runat="server" class="form-control" ID="teachername" name="teachername"  placeholder="Teacher Name"></asp:TextBox>
                        <span id="teachernameError" class="text-danger ms-2"></span>

                    </div>
             
                <div class="form-group mb-4">
                        <asp:TextBox runat="server" class="form-control" ID="courseName" name="courseName"  placeholder="Course Name"></asp:TextBox>
                        <span id="courseNameError" class="text-danger ms-2"></span>

                    </div>
          
               
                    <div class="text-end">
                        <a href="EditTeacher.aspx" class="btn btn-dark w-25">Edit</a>
                        <asp:Button Text="Add" runat="server" class="btn btn-primary w-25" OnClientClick="AddTeacherCheck()"/>
                    </div>
                  
                </form>

  </div>
</asp:Content>
