<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="visitor_kiosk_asp.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<main class="row">
	<section class="col-md-6 col-lg-6">
			<div class="panel panel-views">
				<!-- Pre-Registration Button Goes Here -->
				<!-- Layout COMPLETE. Functionality Complete -->
				<div class="panel-heading">
					<h2>Pre Registration Report</h2>
					<p>Daily Visitor Pre-Registration report</p>
				</div>
				<div class="panel-body">
					<p><a class="btn btn-default" href="/ReportPreRegistration">More &raquo;</a></p>
				</div>
				<!-- End Check-In Button -->
			</div>
		</section>
		<section class="col-md-6 col-lg-6">
			<!-- Check-In Button Goes Here -->
			<!-- Layout COMPLETE. Functionality Complete -->
			<div class="panel panel-views">
				<div class="panel-heading">
					<h2>Check-In Report</h2>
					<p>Daily Visitor Check-In report</p>
				</div>
				<div class="panel-body">
					<p><a class="btn btn-default" href="#">More &raquo;</a></p>
				</div>
			</div>
			<!-- End Check-In Form -->
		</section>
    </main>
</asp:Content>
