using System.Web.Mvc;
using System.Web.Routing;

namespace Domain2Host
{
    // Note: For instructions on enabling IIS6 or IIS7 classic mode,
    // visit http://go.microsoft.com/?LinkId=9394801

    public class MvcApplication : System.Web.HttpApplication
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }

        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.MapRoute(
                "domainchecking", // Route name
                "DomainChecking/{domainName}/{domains}", // URL with parameters
                new { controller = "Domain", action = "DomainChecking" } // Parameter defaults
            );
            routes.MapRoute(
                "login", // Route name
                "Login", // URL with parameters
                new { controller = "Account", action = "LogOn" } // Parameter defaults
            );
            routes.MapRoute(
                "logon", // Route name
                "Logon", // URL with parameters
                new { controller = "Account", action = "LogOn" } // Parameter defaults
            );
            routes.MapRoute(
                "register", // Route name
                "Register", // URL with parameters
                new { controller = "Account", action = "Register" } // Parameter defaults
            );
            routes.MapRoute(
                "Default", // Route name
                "{controller}/{action}/{id}", // URL with parameters
                new { controller = "Home", action = "Index", id = UrlParameter.Optional } // Parameter defaults
            );
            routes.IgnoreRoute("{resource}.html/{*pathInfo}");
        }

        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();

            RegisterGlobalFilters(GlobalFilters.Filters);
            RegisterRoutes(RouteTable.Routes);
        }
    }
}