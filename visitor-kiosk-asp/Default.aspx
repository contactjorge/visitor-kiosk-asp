<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="visitor_kiosk_asp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<!-- Begin Jubotron -->
    <div class="jumbotron">
        <h1>Welcome to the Good Health Hospital visitor kiosk.</h1>
        <p class="lead">Click the <b>Check-in</b> button if you are a pre registered visitor.</p>
		<p>Otherwise, cick the <b>Pre-register</b> button to check in.</p>
        <p><a href="/about" class="btn btn-primary btn-lg">Need Help? &raquo;</a></p>
    </div>
	<!-- End Jumbotron -->
    
	<!-- Begin Main Content Section -->
	<main class="row">
        <section class="col-md-6 col-lg-6" id="checkin-well">
			<!-- Check-In Page Button Goes Here -->
			<div class="panel panel-narrow-heading panel-bland" id="checkin">
				<a href="/CheckIn">
					<div class="panel-heading"><h3 class="btn-transparent">Visitor Check-In</h3></div>
					<div class="panel-body">Press here if you are checking in as a visitor.</div>
					<div class="btn-group btn-group-justified">
						<p class="btn btn-bland">Check-In &raquo;</p>
					</div>
				</a>
			</div>
			<!-- End Check-In Form -->
        </section>
		<section class="col-md-6 col-lg-6" id="register-well">
			<!-- Pre-Registration Button Goes Here -->
			<div class="panel panel-narrow-heading panel-bland" id="register">
				<a href="/PreRegister">
					<div class="panel-heading"><h3 class="btn-transparent">Visitor Pre-registration</h3></div>
					<div class="panel-body">Press here to pre-register a visitor.</div>
					<div class="btn-group btn-group-justified">
						<p class="btn btn-bland">Register &raquo;</p>
					</div>
				</a>
			</div>
			<!-- End Check-In Form -->
		</section>
    </main>
	<!-- End Main Content -->

	<!-- Begin Bottom Content Section -->
	<section class="row">
		<div class="col-md-3 col-lg-3"><!--column padding Bootstrap trick --></div>
		<div class="col-md-6 col-lg-6" id="report-well">
			<!-- Reports Button Goes Here -->
			<div class="panel panel-narrow-heading panel-bland" id="reports">
				<a href="/Reports">
					<div class="panel-heading"><h3>Visitor Reports</h3></div>
					<div class="panel-body"><p>Press here to view all visitor reports.</p></div>
					<div class="btn-group btn-group-justified"><span class="btn btn-bland">Reports &raquo;</span></div>
				</a>
			</div>
			<!-- End Check-In Form -->
		</div>
		<div class="col-md-3 col-lg-3"><!--column padding Bootstrap trick --></div>
	</section>
	<!-- End Bottom Content Section -->

</asp:Content>
