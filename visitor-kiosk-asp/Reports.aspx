<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="visitor_kiosk_asp.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<main class="row">
	<section class="col-md-6 col-lg-6">
			<div class="panel panel-report-heading panel-views reports">
				<!-- Pre-Registration Button Goes Here -->
				<!-- Layout COMPLETE. Functionality Complete -->
				<a href="/ReportPreRegistration">
					<div class="panel-heading">
						<h3 class="btn-transparent">Pre Registration Report</h3>
					</div>
					<div class="panel-body">
						<p>Daily Visitor Pre-Registration report</p>
					</div>
					<div class="btn-group btn-group-justified">
						<p class="btn btn-report">Select this Report &raquo;</p>
					</div>
				<!-- End Check-In Button -->
				</a>
			</div>

		</section>
		<section class="col-md-6 col-lg-6">
			<!-- Check-In Button Goes Here -->
			<!-- Layout COMPLETE. Functionality Complete -->
			<div class="panel panel-report-heading panel-views reports">
				<a href="/ReportCheckedIn">
					<div class="panel-heading">
						<h3 class="btn-transparent">Check-In Report</h3>
					</div>
					<div class="panel-body"><p>Daily Visitor Check-In report</p></div>
					<div class="btn-group btn-group-justified">
						<p class="btn btn-report">Select this Report &raquo;</p>
					</div>
				</a>
			</div>
			<!-- End Check-In Form -->
		</section>
    </main>
</asp:Content>
