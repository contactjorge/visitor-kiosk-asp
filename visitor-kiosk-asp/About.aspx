<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="visitor_kiosk_asp.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main class="row">
        <section class="col-md-3 col-lg-3"><!--column padding Bootstrap trick --></section>
        <section class="col-md-6 col-lg-6">
			<div class="panel panel-bland">
				<div class="panel-heading">
					<h2><%: Title %>.</h2>
				</div>
				<div class="panel-body">
					<!-- Application Help and Documentation Goes Here -->
					<h3>The application description page.</h3>
					<p>Use this area to provide additional information.</p>
					<!-- End Application Help and Documentation -->
				</div>
			</div>
        </section>
        <section class="col-md-3 col-lg-3"><!--column padding Bootstrap trick --></section>
    </main>
</asp:Content>
