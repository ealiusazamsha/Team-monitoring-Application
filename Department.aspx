<%@ Page Title="Department Entry" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="hrManage.Department" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHoldar" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyPlaceHolder" runat="server">
<br />
    <div class="container">
        <div class="row">
            <!--   -->
            <div class="col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10 col-xs-12">
                <div class="panel panel-info">
                    <div class="panel-heading text-center">
                        <h4>Department Registration Form</h4>
                    </div>
                    <div class="panel-body">

                        <div class="row">
                            <div class="col-sm-6 col-xs-12 form-group" style="color:black">
                                <label for="fname">Department Name:</label>
                                <asp:TextBox ID="txtbxDN" class="form-control" required="required" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-6 col-xs-12 form-group" style="color:black">
                                <label for="lname">Parent Department:</label>
                                <asp:DropDownList ID="drpdwnParentDept" CssClass="dropdown form-control" runat="server"></asp:DropDownList>
                            </div>

                            <asp:Button ID="btnSubmit" CssClass="btn btn-info btn-block" runat="server" Text="Add Department" OnClick="btnSubmit_Click" />

                        </div>
                    </div>
                    <div class="panel-body">
                        
                        <div class="row" style="color:black">
                            <asp:GridView ID="GridViewdepartment" CssClass="  table table-hover table-bordered table-responsive alert-info " AutoGenerateColumns="false" runat="server">
                                <Columns>
                                    <asp:BoundField  DataField="dpt_id" HeaderText="Department ID" />
                                       <asp:BoundField  DataField="dpt_name" HeaderText="Department Name" />
                                       <asp:BoundField  DataField="Parentdpt" HeaderText="Parent Department" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- container -->
</asp:Content>
