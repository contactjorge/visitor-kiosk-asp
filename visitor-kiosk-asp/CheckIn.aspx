<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckIn.aspx.cs" Inherits="visitor_kiosk_asp.CheckIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<main class="row">
		<section class="col-md-1 col-lg-1"></section>
		<section class="col-md-10 col-lg-10">
			<div class="panel panel-views">
				<div class="panel-heading"><h3>Visitor Check-In</h3></div>
				<div class="panel-body">
					<div class="row">
						<div class="col-md-12">
							<h3>Enter Guest Information</h3>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<asp:Label ID="lblVisitorFName" runat="server" Text="First Name"></asp:Label>
						</div>
						<div class="col-md-7">
							<asp:TextBox ID="txtVisitorFName" runat="server"></asp:TextBox>						
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<asp:Label ID="lblVisitorLName" runat="server" Text="Last Name"></asp:Label>
						</div>
						<div class="col-md-7">
							<asp:TextBox ID="txtVisitorLName" runat="server"></asp:TextBox>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<h3>Guest Information</h3>
						</div>
						<div class="col-md-4">
							<asp:Label ID="lblGuestFName" runat="server" Text="First Name"></asp:Label>
						</div>
						<div class="col-md-7">
							<asp:TextBox ID="txtGuestLName" runat="server"></asp:TextBox>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<asp:Label ID="lblGuestLName" runat="server" Text="Last Name"></asp:Label>
						</div>
						<div class="col-md-7">
							<asp:TextBox ID="txtGuestFName" runat="server"></asp:TextBox>
						</div>					
					</div>
					<div class="row">
						<div class="col-md-12">
							<h3>Visit Information</h3>
						</div>
						<div class="col-md-4">
							<asp:Label ID="lblVisitReason" runat="server" Text="Visit Reason"></asp:Label>
						</div>
						<div class="col-md-7">
							<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<asp:Label ID="lblVisitDate" runat="server" Text="Visit Date"></asp:Label>
						</div>
						<div class="col-md-7">
							<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
						</div>
					</div>
					<div class="row">
						<div class="col-md-9"></div>
						<div class="col-md-3"><a class="btn btn-default" href="#">Check-In Now</a></div>
					</div>
				</div>
			</div>
		</section>
		<section class="col-md-1 col-lg-1"></section>
    </main>
</asp:Content>
