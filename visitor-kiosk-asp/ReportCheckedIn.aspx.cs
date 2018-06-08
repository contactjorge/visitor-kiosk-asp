using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using visitor_kiosk_asp.Models;


namespace visitor_kiosk_asp
{
	public partial class ReportRegistered : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnRunReport_Click(object sender, EventArgs e)
		{
			Guest guest = new Guest();
			guest.Id = 1;
			guest.FirstName = "Jesse";
			guest.LastName = "McDowell";
			guest.RoomId = "JAM248";
		}
	}
}