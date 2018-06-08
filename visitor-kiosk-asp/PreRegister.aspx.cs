using System;
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
		//global variables
		private string _guestFName, _guestLName, _guestRoomNum, _visitorFName, _visitorLName, _visitorDOB, _visitDate, _visitReason;

		protected void Page_Load(object sender, EventArgs e)
		{
			/** var guests = new Guest()
			{
				Id = 1,
				FirstName = "Jesse",
				LastName = "McDowell"
			},
			Registrations**/
		}

		protected void btnPreRegister_Click(object sender, EventArgs e)
		{
			//Instantiate new instances of the classes:  Guest, Visitor, Registration
			Guest _guest = new Guest();
			Visitor _visitor = new Visitor();
			Registration _registration = new Registration();

			//Retrieve values from form.
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

			//Assign value to database?
			//_guest.LastName = _guestLName;
		}
	}
}