using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace visitor_kiosk_asp
{
	public partial class CheckIn : System.Web.UI.Page
	{
		private string _guestFName, _guestLName, _guestRoomNum, _visitorFName, _visitorLName, _visitorDOB, _visitDate, _visitReason;

		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnCheckIn_Click(object sender, EventArgs e)
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
		}

		protected void btnLookupGuest_Click(object sender, EventArgs e)
		{
			_guestFName = txtGuestFName.Text;
			_guestLName = txtGuestLName.Text;
			_guestRoomNum = txtRoomNum.Text;

			
		}
	}
}