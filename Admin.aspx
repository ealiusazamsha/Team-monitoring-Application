<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="hrManage.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Panel</title>
    <meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="content/login/css/bootstrap.min.css" rel="stylesheet" />
    <link href="content/login/css/style.css" rel="stylesheet" />
	
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <nav class="navbar navbar-default">
	  <div class="container">
		<div class="navbar-header">
		  <a class="navbar-brand" href="default.aspx">EZCS</a>
		</div>
		<ul class="nav navbar-nav">
		  <li class="active"><a href="default.aspx">Home</a></li>
		  
		</ul>
		<ul class="nav navbar-nav navbar-right">
		  <li>
			  <div class="dropdown">
			
			      

                  <asp:Button ID="Button2" class="btn btn-success btn-block" runat="server" Text="Log Out" OnClick="logout_Click" />

			  </div>
		  </li>
		</ul>
	  </div>
	</nav>
	
	  <div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-6 col-xs-12">
                <a <asp:LinkButton ID="LinkButton1" class="btn btn-block btn-default" type="button" alart=""  runat ="server" href="registration.aspx">Add User</asp:LinkButton></a>
			 <a <asp:LinkButton ID="LinkButton2" class="btn btn-block btn-primary" type="button" alart=""  runat ="server" href="Department.aspx">Add Department</asp:LinkButton></a>
                
                 <a <asp:LinkButton ID="LinkButton3" class="btn btn-block btn-primary" type="button" alart=""  runat ="server" href="Task_Entry.aspx">Add Task</asp:LinkButton></a>
			 
			  <a <asp:LinkButton ID="LinkButton4" class="btn btn-block btn-info" type="button" alart=""  runat ="server" href="viewdpt.aspx">Edit Department</asp:LinkButton></a>
			  
                <a <asp:LinkButton ID="LinkButton5" class="btn btn-block btn-warning" type="button" alart=""  runat ="server" href="viewtask.aspx">Edit Task</asp:LinkButton></a>
			
			 <a <asp:LinkButton ID="LinkButton6" class="btn btn-block btn-danger" type="button" alart=""  runat ="server" href="list.aspx">Edit Employee</asp:LinkButton></a>
			 

			</div>
		</div>
	  </div>
	
	<footer class="text-center">
		&copy; Copyright 2018, All right reserved
	</footer>
	
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    </div>
    </form>
</body>
</html>
