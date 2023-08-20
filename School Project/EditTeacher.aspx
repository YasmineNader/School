<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="EditTeacher.aspx.cs" Inherits="School_Project.EditTeacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminContent" runat="server">
    <div>    
        <div style="margin-left: 145px;margin-top: 30px;">

        <a class="btn btn-primary" href="AddTeacherAdmin">New Teacher</a>

        </div>
    <form id="form1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="1243px" class="allgrid">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="teacheName" HeaderText="teacheName" SortExpression="teacheName" />
            <asp:BoundField DataField="courseName" HeaderText="courseName" SortExpression="courseName" />
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:schoolConnectionString %>" DeleteCommand="DELETE FROM [Teachers] WHERE [id] = @id" InsertCommand="INSERT INTO [Teachers] ([teacheName], [courseName]) VALUES (@teacheName, @courseName)" SelectCommand="SELECT [id], [teacheName], [courseName] FROM [Teachers]" UpdateCommand="UPDATE [Teachers] SET [teacheName] = @teacheName, [courseName] = @courseName WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="teacheName" Type="String" />
                <asp:Parameter Name="courseName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="teacheName" Type="String" />
                <asp:Parameter Name="courseName" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</div>

</asp:Content>
