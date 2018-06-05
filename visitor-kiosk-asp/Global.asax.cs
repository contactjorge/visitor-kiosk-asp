using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Http;
using System.Web.UI;

namespace visitor_kiosk_asp
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            AreaRegistration.RegisterAllAreas();
            GlobalConfiguration.Configure(WebApiConfig.Register);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
			ScriptManager.ScriptResourceMapping.AddDefinition("jquery", 
				new ScriptResourceDefinition
				{
					Path = "~/scripts/jquery-3.3.1.min.js",
					DebugPath = "~/scripts/jquery-3.3.1.min.js",
					CdnPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-3.3.1.min.js",
					CdnDebugPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-3.3.1.js"
				});
		}
    }
}