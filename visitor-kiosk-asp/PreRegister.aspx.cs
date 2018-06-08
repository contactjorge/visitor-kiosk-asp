﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using visitor_kiosk_asp.Models;

namespace visitor_kiosk_asp
{
	public partial class PreRegister : System.Web.UI.Page
	{
		private string _guestFName, _guestLName, _guestRoomNum, _visitorFName, _visitorLName, _visitorDOB, _visitDate, _visitReason;
		private Guest _guest = new Guest();
		private Visitor _visitor;
		private Registration _registration;

		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnPreRegister_Click(object sender, EventArgs e)
		{
			_guestFName = txtGuestFName.Text;
			_guestLName = txtGuestLName.Text;
			_guestRoomNum = txtRoomNum.Text;
			_visitorFName = txtVisitorFName.Text;
			_visitorLName = txtVisitorLName.Text;
			_visitorDOB = txtDOB.Text;
			_visitDate = txtVisitDate.Text;
			_visitReason = drpVisitReason.Text;

			lblError1.Text = _visitDate;
			lblError2.Text = _visitorDOB;
			lblError3.Text = _visitorFName;
			lblError4.Text = _visitorLName;

			_guest.LastName = _guestLName;
		}
	}
}