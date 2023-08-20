<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="EditCourseAdmin.aspx.cs" Inherits="School_Project.EditCourseAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminContent" runat="server">
     <div style="margin-bottom: 200px;">    
        <div style="margin-left: 145px;margin-top: 30px;">

        <a class="btn btn-primary" href="addCourseAdmin">New Course</a>

        </div>
    <form id="form1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="1245px" class="allgrid">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="ImageName" HeaderText="ImageName" SortExpression="ImageName" />
            <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="teacherName" HeaderText="teacherName" SortExpression="teacherName" />
            <asp:BoundField DataField="courseDate" HeaderText="courseDate" SortExpression="courseDate" />
            <asp:BoundField DataField="startTime" HeaderText="startTime" SortExpression="startTime" />
            <asp:BoundField DataField="endTime" HeaderText="endTime" SortExpression="endTime" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />



    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:schoolConnectionString %>" DeleteCommand="DELETE FROM [courseContent] WHERE [id] = @id" InsertCommand="INSERT INTO [courseContent] ([ImageName], [CourseName], [description], [teacherName], [courseDate], [startTime], [endTime]) VALUES (@ImageName, @CourseName, @description, @teacherName, @courseDate, @startTime, @endTime)" SelectCommand="SELECT * FROM [courseContent]" UpdateCommand="UPDATE [courseContent] SET [ImageName] = @ImageName, [CourseName] = @CourseName, [description] = @description, [teacherName] = @teacherName, [courseDate] = @courseDate, [startTime] = @startTime, [endTime] = @endTime WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ImageName" Type="String" />
                <asp:Parameter Name="CourseName" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="teacherName" Type="String" />
                <asp:Parameter Name="courseDate" Type="String" />
                <asp:Parameter Name="startTime" Type="String" />
                <asp:Parameter Name="endTime" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ImageName" Type="String" />
                <asp:Parameter Name="CourseName" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="teacherName" Type="String" />
                <asp:Parameter Name="courseDate" Type="String" />
                <asp:Parameter Name="startTime" Type="String" />
                <asp:Parameter Name="endTime" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
         </div>
</asp:Content>
