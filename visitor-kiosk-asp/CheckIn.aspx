<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckIn.aspx.cs" Inherits="visitor_kiosk_asp.CheckIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<main class="row">
		<section class="col-md-1 col-lg-1"><!--column padding Bootstrap trick --></section>
		<section class="col-md-10 col-lg-10">
			<div class="panel panel-views">
				<div class="panel-heading"><h3>Visitor Check-In Form</h3></div>
				<div class="panel-body" aria-atomic="True">
				<!-- Check-In Form Goes Here -->
				<!-- Layout COMPLETE. Functionality NOT DONE -->
					<!-- Row 1 Form Visitor Section Header -->
					<div class="row">
						<div class="col-md-12">
							<h3>Enter Vistor Information</h3>
							<hr />
						</div>
					</div>

					<!-- Row 2 Form Visitor Content: First Name Label, First Name TextBox -->
					<div class="row">
						<div class="col-md-2 col-lg-2">
							<asp:Label ID="lblVisitorFName" runat="server" Text="First Name"></asp:Label>
						</div>
						<div class="col-md-4 col-lg-4">
							<asp:TextBox ID="txtVisitorFName" CSSClass="form-control"  runat="server"></asp:TextBox>						
						</div>
						<div class="col-md-2 col-lg-2">
							<asp:Label ID="lblVisitorLName" runat="server" Text="Last Name"></asp:Label>
						</div>
						<div class="col-md-4 col-lg-4">
							<asp:TextBox ID="txtVisitorLName" CSSClass="form-control"  runat="server"></asp:TextBox>
						</div>
					</div>

					<!-- Row 3 Form Visitor Content: Date of Birth -->
					<div class="row">
						<div class="col-md-2 col-lg-2">
							<asp:Label ID="lblDOB" runat="server" Text="Visitor DOB"></asp:Label>
						</div>
						<div class="col-md-4 col-lg-4">
							<div class="input-group date">
								<asp:TextBox ID="txtDOB" type="date" CSSClass="form-control" runat="server"></asp:TextBox>		
								<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
							</div>	
						</div>
						<div class="col-md-2">

						</div>
						<div class="col-md-4">
							<asp:Button ID="btnLookupGuest" CssClass="btn btn-report" Text="Lookup Guest" runat="server" OnClick="btnLookupGuest_Click" />
						</div>
					</div>

					<!-- Row 4 Form Guest Header: Guest Information Section Start -->
					<div class="row">
						<div class="col-md-12 col-lg-12">
							<hr />
							<h3>Enter Guest Information</h3>
							<hr />
						</div>
					</div>

					<!-- Row 5 Form Guest Content: First Name Label, First Name TextBox -->
					<div class="row">
						<div class="col-md-2 col-lg-2">
							<asp:Label ID="lblGuestFName" runat="server" Text="First Name"></asp:Label>
						</div>
						<div class="col-md-4 col-lg-4">
							<asp:TextBox ID="txtGuestFName" CSSClass="form-control" runat="server" Enabled="False"></asp:TextBox>
						</div>
						<div class="col-md-2 col-lg-2">
							<asp:Label ID="lblGuestLName" runat="server" Text="Last Name"></asp:Label>
						</div>
						<div class="col-md-4 col-lg-4">
							<asp:TextBox ID="txtGuestLName" CSSClass="form-control" runat="server" Enabled="False"></asp:TextBox>
						</div>					

					</div>

					<!-- Row 6 Form Guest Content: Last Name Label, Last Name TextBox -->
					<div class="row">
						<div class="col-md-2 col-lg-2">
							<asp:Label ID="lblRoomNum" runat="server" Text="Room #"></asp:Label>
						</div>
						<div class="col-md-4 col-lg-4">
							<asp:TextBox ID="txtRoomNum" CSSClass="form-control" runat="server" Enabled="False"></asp:TextBox>
						</div>
						<div class="col-md-2">

						</div>
						<div class="col-md-4">

						</div>
					</div>

					<!-- Row 7 Form Visit Reason Header: Visit Reason Section Start -->
					<div class="row">
						<div class="col-md-12 col-lg-12">
							<hr />
							<h3>Enter Visitor Information</h3>
							<hr />
						</div>
					</div>

					<!-- Row 8 Form Visit Reason Content: Visit drop down -->
					<div class="row">
						<div class="col-md-2 col-lg-2">
							<asp:Label ID="lblVisitDate" runat="server" Text="Visit Date"></asp:Label>
						</div>
						<div class="col-md-4 col-lg-4">
							<div class="input-group date" aria-atomic="True">
								<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
								<asp:TextBox ID="txtVisitDate" type="date" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>						
							</div>
						</div>
						<div class="col-md-2 col-lg-2">
							<asp:Label ID="lblVisitReason" runat="server" Text="Visit Reason"></asp:Label>
						</div>
						<div class="col-md-4 col-lg-4">
							<asp:DropDownList ID="drpVisitReason" CSSClass="form-control" runat="server" Enabled="False">
								<asp:ListItem Value="0">Out Patient Visit</asp:ListItem>
								<asp:ListItem Value="1">Visiting Patient</asp:ListItem>
								<asp:ListItem Value="2">Physical Therapy</asp:ListItem>
								<asp:ListItem Value="3">Visiting Employee</asp:ListItem>
								<asp:ListItem Value="4">Cafeteria</asp:ListItem>
							</asp:DropDownList>
						</div>
					</div>
					
					<!-- Row 9 Form Submit Content: Submit Pre-Registration, error label -->
					<div class="row">
						<div class="col-md-9"></div>
						<div class="col-md-3">
							<asp:Button ID="btnCheckIn" runat="server" CssClass="btn btn-report" Text="Check-In Now" OnClick="btnCheckIn_Click" />
						</div>
					</div>

					<!-- Row 10 Form Errors as Labels -->
					<div class="row">
						<div class="col-md-3 col-lg-3"><asp:Label ID="lblError1" runat="server" Text=""></asp:Label></div>
						<div class="col-md-3 col-lg-3"><asp:Label ID="lblError2" runat="server" Text=""></asp:Label></div>
						<div class="col-md-3 col-lg-3"><asp:Label ID="lblError3" runat="server" Text=""></asp:Label></div>
						<div class="col-md-3 col-lg-3"><asp:Label ID="lblError4" runat="server" Text=""></asp:Label></div>
					</div>
				<!-- End Check-In Form -->
				</div>
			</div>
		</section>
		<section class="col-md-1 col-lg-1"><!--column padding Bootstrap trick --></section>
    </main>
</asp:Content>
