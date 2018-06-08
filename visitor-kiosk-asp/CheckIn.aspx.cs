﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using visitor_kiosk_asp.Models;


namespace visitor_kiosk_asp
{
	public partial class CheckIn : System.Web.UI.Page
	{
		//global variables
		private string _guestFName, _guestLName, _guestRoomNum, _visitorFName, _visitorLName, _visitorDOB, _visitDate, _visitReason;
		//private Guest _guest = new Guest();
		//private Visitor _visitor = new Visitor();
		//private Registration _registration = new Registration();

		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnCheckIn_Click(object sender, EventArgs e)
		{
			//Instantiate new instances of the classes:  Guest, Visitor, Registration
			Guest _guest = new Guest();
			Visitor _visitor = new Visitor();
			Registration _registration = new Registration();

			//Retrieve values from form.s
			_guestFName = txtGuestFName.Text;
			_guestLName = txtGuestLName.Text;
			_guestRoomNum = txtRoomNum.Text;
			_visitorFName = txtVisitorFName.Text;
			_visitorLName = txtVisitorLName.Text;
			_visitorDOB = txtDOB.Text;
			_visitDate = txtVisitDate.Text;
			_visitReason = drpVisitReason.Text;

			//Check the code that was submitted
			lblError1.Text = _visitDate;
			lblError2.Text = _visitorDOB;
			lblError3.Text = _visitorFName;
			lblError4.Text = _visitorLName;
		}

		protected void btnLookupGuest_Click(object sender, EventArgs e)
		{
			List<Registration> registrations = new List<Registration>(); //retrieve all registrations
			List<Visitor> visitors = new List<Visitor>(); //retrieve all visitors
			List<Guest> guests = new List<Guest>(); //retrieve all guests
			Visitor _visitor = new Visitor();
			Guest _guest = new Guest();
			
			
			//lookup guest
			//foreach (Visitor v in visitors)
			//	{
					//if(v.FirstName == txtVisitorFName.Text)
					//{ }
			//	}

			//Retrieve values from form for lookup
			txtGuestFName.Text = _guestFName;
			txtGuestLName.Text = _guestLName;
			txtRoomNum.Text = _guestRoomNum;


			
		}
	}
}