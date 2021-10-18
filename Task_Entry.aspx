<%@ Page Title="Task Entry" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="Task_Entry.aspx.cs" Inherits="hrManage.Task_Entry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHoldar" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyPlaceHolder" runat="server">
   <br />
     <div class="container">
         <div class="row" style="color: black">
             <!--   -->
             <div class="col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10 col-xs-12">
                 <div class="panel panel-info">
                     <div class="panel-heading text-center">
                         <h4>Task Registration Form</h4>
                     </div>
                     <div class="panel-body">

                         <div class="row">
                             <div class="col-sm-6 col-xs-12 form-group">
                                 <label for="lname">Employee ID:</label>
                                 <asp:DropDownList ID="drpdwnEmpId" required runat="server"></asp:DropDownList>
                             </div>

                             <div class="col-sm-6 col-xs-12 form-group">
                                 <label for="email">Task Department:</label>
                                 <asp:DropDownList ID="drpdwnDept" required runat="server"></asp:DropDownList>
                             </div>

                             <div class="col-sm-6 col-xs-12 form-group">
                                 <label for="fname">Task Name:</label>
                                 <asp:TextBox ID="txtbxTN" class="form-control" required="required" runat="server"></asp:TextBox>
                             </div>
                             <div class="col-sm-6 col-xs-12 form-group">
                                 <label for="taskdetails">Task Details:</label>
                                 <asp:TextBox ID="txtTD" class="form-control" TextMode="MultiLine" required="required" runat="server"></asp:TextBox>
                             </div>

                             <div class="col-sm-6 col-xs-12 form-group">
                                 <label for="faname">Task Start Date:</label>
                                 <asp:TextBox ID="TextBTSD" type="date" class="form-control" required="required" runat="server"></asp:TextBox>
                             </div>
                             <div class="col-sm-6 col-xs-12 form-group">
                                 <label for="mname">Task Update:</label>
                                 <asp:TextBox ID="TextBTU" class="form-control" TextMode="MultiLine" required="required" runat="server"></asp:TextBox>
                             </div>
                              


                             <asp:Button ID="btnSubmit" CssClass="btn btn-info btn-block" runat="server" Text="Add Task" OnClick="btnSubmit_Click" />

                         </div>
                     </div>
                 </div>
             </div>
         </div>
        <!-- container -->
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foterPlaceHolder1" runat="server">
</asp:Content>
