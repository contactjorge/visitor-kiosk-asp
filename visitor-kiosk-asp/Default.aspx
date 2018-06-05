<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="visitor_kiosk_asp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Good Health Hospital</h1>
        <h2 class="lead">Welcome to the Good Health Hospital visitor kiosk.</h2>
		<p>If you are pre registered, click the check-in button. Otherwise, cick the Pre-register button to check in.<br/>
        <a href="/about" class="btn btn-primary btn-lg">Need Help? &raquo;</a></p>
    </div>

    <main class="row">
        <section class="col-md-6 col-lg-6" id="checkin-well">
			<div class="panel panel-narrow-heading panel-bland" id="checkin">
				<div class="panel-heading"><h3 class="btn-transparent"><a href="/CheckIn">Visitor Check-In</a></h3></div>
				<div class="panel-body"><a href="/CheckIn">Press here if you are checking in as a visitor.</a></div>
				<div class="btn-group btn-group-justified">
					<a class="btn btn-bland" href="/CheckIn">Check-In &raquo;</a>
				</div>
			</div>
        </section>
		<section class="col-md-6 col-lg-6" id="register-well">
			<div class="panel panel-bland panel-narrow-heading" id="register">
				<div class="panel-heading"><h3 class="btn-transparent"><a href="/PreRegister">Visitor Pre-registration</a></h3></div>
				<div class="panel-body"><a href="/PreRegister">Press here to pre-register a visitor.</a></div>
				<div class="btn-group btn-group-justified">
					<a class="btn btn-bland" href="/PreRegister">Register &raquo;</a>
				</div>
			</div>
        </section>
    </main>
	
	<section class="row">
		<div class="col-md-3 col-lg-3"></div>
		<div class="col-md-6 col-lg-6" id="report-well">
			<div class="panel panel-narrow-heading panel-bland" id="reports">
				<a href="/Reports">
					<div class="panel-heading"><h3>Visitor Reports</h3></div>
					<div class="panel-body"><p>Press here to view all visitor reports.</p></div>
					<div class="btn-group btn-group-justified"><span class="btn btn-bland">Reports &raquo;</span></div>
				</a>
			</div>
		</div>
		<div class="col-md-3 col-lg-3"></div>
	</section>
</asp:Content>
