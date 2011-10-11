using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using System.Web.Script.Serialization;
using ResellerClubAPI;

namespace Domain2Host.Controllers
{
    public class DomainController : Controller
    {
        //
        // GET: /Domain/
        public ActionResult DomainChecking(string domainName, string domains)
        {
            if (!string.IsNullOrEmpty(domainName) && !string.IsNullOrEmpty(domains))
            {
                var du = new DomainUtilities(Utilities.ResellerId, Utilities.Resellerpassword);
                var dms = domains.Split(',').ToList();
                string json = du.Checkdomainavailability(domainName, dms);
                var notavailablelist = new List<string>();
                var availablelist = new List<Domaindetails>();
                if (!string.IsNullOrEmpty(json))
                {
                    var ser = new JavaScriptSerializer();
                    foreach (var domain in (Dictionary<String, object>)ser.Deserialize<Object>(json))
                    {
                        foreach (var details in (Dictionary<String, object>)domain.Value)
                        {
                            if (details.Value.ToString().ToLower() == "available")
                                availablelist.Add(new Domaindetails() { Extension = domain.Key.Substring(domain.Key.IndexOf('.') + 1), Name = domain.Key.Substring(0, domain.Key.IndexOf('.')) });
                            else
                                notavailablelist.Add(domain.Key);
                            break;
                        }
                    }
                }

                ViewData["NotAvailableList"] = notavailablelist;
                ViewData["AvailableList"] = availablelist;
                return View();
            }
            Response.Redirect("/index.htm");
            return null;
        }

        public ActionResult AddtoCart()
        {
            return null;
        }
    }

    public struct Domaindetails
    {
        public string Name { get; set; }

        public string Extension { get; set; }
    }
}