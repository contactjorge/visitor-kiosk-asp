<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReportCheckedIn.aspx.cs" Inherits="visitor_kiosk_asp.ReportRegistered" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<main class="row">
		<section class="col-md-1 col-lg-1"><!--column padding --></section>
		<section class="col-md-10 col-lg-10">
			<div class="panel panel-views">
				<div class="panel-heading">
					<h2>Visitor Checked-In Report</h2>
				</div>
				<div class="panel-body">
				<!-- Pre-Registration Report Form Goes Here -->
				<!-- Layout NOT DONE. Functionality NOT DONE -->
					<div class="row">
						<p>This Choose a date and click submit:</p>
					</div>
					<div class="row">
					<div class="col-md-6">
						<div class="input-group date">
							<asp:TextBox ID="txtCheckedInDate" CSSClass="form-control" type="date" runat="server"></asp:TextBox>
							<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
						</div>					
					</div>
					<div class="col-md-6">
						<asp:Button ID="btnSubmit" runat="server" Text="Submit" />						
					</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<asp:Table ID="tblCheckedIn" runat="server">
						
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
