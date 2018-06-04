<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="visitor_kiosk_asp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Visitor Management System</h1>
        <p class="lead">Welcome to the VMS</p>
        <p><a href="/about" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <main class="row">
        <section class="col-md-4">
			<div class="panel panel-default">
				<h2>Getting started</h2>
				<p>ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model. 
					A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.</p>
				<p><a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a></p>
			</div>
        </section>
        <section class="col-md-4">
			<div class="panel panel-default">
				<h2>Get more libraries</h2>
				<p>NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.</p>
				<p><a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a></p>
			</div>
        </section>
        <section class="col-md-4">
            <div class="panel panel-default">
				<h2>Web Hosting</h2>
				<p>You can easily find a web hosting company that offers the right mix of features and price for your applications.</p>
				<p><a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a></p>
            </div>
        </section>
    </main>

</asp:Content>
