<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="userviewtsk.aspx.cs" Inherits="hrManage.userviewtsk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHoldar" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyPlaceHolder" runat="server">
    <asp:GridView ID="GridView1" CssClass="  table table-hover table-bordered table-responsive alert-info "  runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">

        <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
            <asp:BoundField DataField="task_id" HeaderText="Task ID" InsertVisible="False" ReadOnly="True" SortExpression="task_id" />
            <asp:BoundField DataField="emp_id" HeaderText="Employee ID" SortExpression="emp_id" />
            <asp:BoundField DataField="task_name" HeaderText="Task Title" SortExpression="task_name" />
            <asp:BoundField DataField="task_details" HeaderText="Task Details" SortExpression="task_details" />
            <asp:BoundField DataField="dpt_id" HeaderText="Task Under Department" SortExpression="dpt_id" />
            <asp:BoundField DataField="task_start_date" HeaderText="Task Start Date" SortExpression="task_start_date" />
            <asp:BoundField DataField="task_update_date" HeaderText="Task Update" SortExpression="task_update_date" />
                <asp:BoundField DataField="task_com" HeaderText="Agent's Comment" SortExpression="task_com" />
            

        </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />

    </asp:GridView>


<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT * FROM [Task2]"  ></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foterPlaceHolder1" runat="server">
</asp:Content>
