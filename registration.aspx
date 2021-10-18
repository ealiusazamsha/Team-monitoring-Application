<%@ Page Title="Registration" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="hrManage.registration"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHoldar" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyPlaceHolder" runat="server">
    <br />
    <div class="container" style="padding:inherit">
        <div class="row">
            <!--   -->
            <div class="col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10 col-xs-12">
                <div class="panel panel-info">
                    <div class="panel-heading text-center">
                        <h4>Registration Form</h4>
                    </div> 
                    <div class="panel-body">
                        <div id="divmsg" class="alert alert-info" visible="false" runat="server">
                            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 col-xs-12 form-group" style="color:black">
                                <label for="fname">First Name:</label>
                                <asp:TextBox ID="txtbxFName" class="form-control" required="required" runat="server"></asp:TextBox>

                            </div>
                            <div class="col-sm-6 col-xs-12 form-group" style="color:black">
                                <label for="lname">Last Name:</label>
                                <asp:TextBox ID="txtbxLName" class="form-control" required="required" runat="server"></asp:TextBox>

                            </div>
                            <div class="col-sm-6 col-xs-12 form-group" style="color:black">
                                <label for="faname">Father's Name:</label>
                                <asp:TextBox ID="txtbxFaName" class="form-control" required="required" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-6 col-xs-12 form-group" style="color:black">
                                <label for="mname">Mother's Name:</label>
                                <asp:TextBox ID="txtbxMaName" class="form-control" required="required"  runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-6 col-xs-12 form-group" style="color:black">
                                <label for="email">Email:</label>
                                <asp:TextBox ID="txtbxEmail" textmode="Email" class="form-control" required="required" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-6 col-xs-12 form-group" style="color:black">
                                <label for="cemail">Confirm Email:</label>
                                <asp:TextBox ID="txtbxConEmail" textmode="Email" class="form-control" required="required" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-6 col-xs-12 form-group" style="color:black">
                                <label for="cono">Contact No:</label>
                                <asp:TextBox ID="txtBxContactNo" class="form-control" required="required"  runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-6 col-xs-12 form-group" style="color:black">
                                <label for="birth">Date of Birth:</label>
                                <asp:TextBox ID="txtbxDob" textmode="Date" class="form-control" required="required" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-6 col-xs-12 form-group" style="color:black">
                                <label for="paddr">Present Address:</label>
                                <asp:TextBox ID="txtbxPresentAdd" TextMode="MultiLine" class="form-control" required="required" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-6 col-xs-12 form-group" style="color:black">
                                <label for="parddr">Permanent Address:</label>
                                <asp:TextBox ID="txtbxParmanentAdd" TextMode="MultiLine" class="form-control"  required="required" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-6 col-xs-12 form-group" style="color:black">
                                <label for="jdate">Joining Date:</label>
                                <asp:TextBox ID="txtbxJoinDate" textmode="Date" class="form-control" required="required"  runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-6 col-xs-12 form-group" style="color:black">
                                <label for="deper">Department:</label>
                                <asp:TextBox ID="txtbxDep" class="form-control" required="required"  runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-4 col-xs-12 form-group" style="color:black">
                                <label for="design">Designation:</label>
                                <asp:TextBox ID="txtbxDesignation" class="form-control" required="required"  runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-4 col-xs-12 form-group" style="color:black">
                                <label for="ladeg">Last Academic Degree:</label>
                                <asp:TextBox ID="txtbxDegree" class="form-control"  required="required" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-4 col-xs-12 form-group" style="color:black">
                                <label for="bsal">Basic Salary:</label>
                                <asp:TextBox ID="txtbxSalary" class="form-control" required="required"  runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <asp:Button ID="btnSubmit"  CssClass="btn btn-info btn-block" runat="server" Text="Register Now" OnClick="btnSubmit_Click" />
                    

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
