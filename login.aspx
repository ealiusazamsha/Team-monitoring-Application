<%@ Page Title="Log in" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="hrManage.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHoldar" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyPlaceHolder" runat="server">
    <br />
    <div class="container">
		<div class="row">
			<div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8 col-xs-12">
				<div class="panel panel-success">
					<div class="panel-heading text-center">
						<h4>Login Form</h4>
					</div>
					<div class="panel-body">
					
                        
							<div class="form-group" style="color:black">
								<label for="username">User Name</label>
                                <asp:TextBox ID="TextBuser" class="form-control" required="required" runat="server"></asp:TextBox>
							</div>
							<div class="form-group" style="color:black">
								<label for="pwd">Password:</label>
								<asp:TextBox ID="TextBoxpass" class="form-control" textmode="Password" required="required" runat="server"></asp:TextBox>
							</div>
							<div class="checkbox" style="color:black">
								<label><input type="checkbox"> Remember me</label>
							</div>
							<div>
                        <asp:Button ID="Button1" class="btn btn-success btn-block" runat="server" Text="Log in now" OnClick="Button1_Click" />
                                </div>


                        <div>
                        <tr>
                            <td></td>
                            <br />
                            <td> 
                                <asp:Label ID="lblerrormsg" runat="server" Text="Incorrect User Name or Password" class="center-block" ForeColor="Red"></asp:Label>
                            </td>

                        </tr>
                            </div>
					</div>
				</div>
			</div>
		</div>
	</div><!-- container -->
</asp:Content>
