<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReportPreRegistration.aspx.cs" Inherits="visitor_kiosk_asp.ReportPreRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<main class="row">
		<section class="col-md-1 col-lg-1"><!--column padding Bootstrap trick --></section>
		<section class="col-md-10 col-lg-10">
			<div class="panel panel-views">
				<div class="panel-heading">
					<h2>Visitor Pre-registration Report</h2>
				</div>
				<div class="panel-body">
				<!-- Pre-Registration Report Form Goes Here -->
				<!-- Layout NOT DONE. Functionality NOT DONE -->
					<div class="row">
						<p>This Choose a date and click submit:</p>
					</div>
					<div class="row">
					<div class="col-md-6">
						<asp:Calendar ID="calDate" runat="server"></asp:Calendar>						
					</div>
					<div class="col-md-6">
						<asp:Button ID="btnSubmit" runat="server" Text="Submit" />						
					</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<asp:Table ID="tblPreRegistraion" runat="server">
						
							</asp:Table>
						</div>
					</div>
				<!-- End Pre-Registration Form-->
				</div>
			</div>
		</section>
		<section class="col-md-1 col-lg-1"><!--column padding Bootstrap trick --></section>
    </main>
</asp:Content>
