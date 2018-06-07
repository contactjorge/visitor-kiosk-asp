<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckIn.aspx.cs" Inherits="visitor_kiosk_asp.CheckIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<main class="row">
		<section class="col-md-1 col-lg-1"><!--column padding Bootstrap trick --></section>
		<section class="col-md-10 col-lg-10">
			<div class="panel panel-views">
				<div class="panel-heading"><h3>Visitor Check-In</h3></div>
				<div class="panel-body">
				<!-- Check-In Form Goes Here -->
				<!-- Layout COMPLETE. Functionality NOT DONE -->
					<!-- Row 1 Form Visitor Section Header -->
					<div class="row">
						<div class="col-md-12">
							<h3>Enter Vistor Information</h3>
						</div>
					</div>

					<!-- Row 2 Form Visitor Content: First Name Label, First Name TextBox -->
					<div class="row">
						<div class="col-md-4">
							<asp:Label ID="lblVisitorFName" runat="server" Text="First Name"></asp:Label>
						</div>
						<div class="col-md-7">
							<asp:TextBox ID="txtVisitorFName" runat="server"></asp:TextBox>						
						</div>
					</div>

					<!-- Row 3 Form Visitor Content: Last Name Label, Last Name TextBox -->
					<div class="row">
						<div class="col-md-4">
							<asp:Label ID="lblVisitorLName" runat="server" Text="Last Name"></asp:Label>
						</div>
						<div class="col-md-7">
							<asp:TextBox ID="txtVisitorLName" runat="server"></asp:TextBox>
						</div>
					</div>

					<!-- Row 4 Form Guest Content: First Name Label, First Name TextBox -->
					<div class="row">
						<div class="col-md-12">
							<h3>Guest Information</h3>
						</div>
						<div class="col-md-4">
							<asp:Label ID="lblGuestFName" runat="server" Text="First Name"></asp:Label>
						</div>
						<div class="col-md-7">
							<asp:TextBox ID="txtGuesFLName" runat="server"></asp:TextBox>
						</div>
					</div>

					<!-- Row 5 Form Gust Content: Last Name Label, Last Name TextBox -->
					<div class="row">
						<div class="col-md-4">
							<asp:Label ID="lblGuestLName" runat="server" Text="Last Name"></asp:Label>
						</div>
						<div class="col-md-7">
							<asp:TextBox ID="txtGuestLName" runat="server"></asp:TextBox>
						</div>					
					</div>

					<!-- Row 6 Form Visit Reason Content: Visit drop down -->
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

					<!-- Row 7 Form Visit Reason Content: Visit Date -->
					<div class="row">
						<div class="col-md-4">
							<asp:Label ID="lblVisitDate" runat="server" Text="Visit Date"></asp:Label>
						</div>
						<div class="col-md-7">
							<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
						</div>
					</div>

					<!-- Row 8 Form Submit Content: Submit Pre-Registration, error label -->
					<div class="row">
						<div class="col-md-9"></div>
						<div class="col-md-3"><a class="btn btn-default" href="#">Check-In Now</a></div>
					</div>
				<!-- End Check-In Form -->
				</div>
			</div>
		</section>
		<section class="col-md-1 col-lg-1"><!--column padding Bootstrap trick --></section>
    </main>
</asp:Content>
