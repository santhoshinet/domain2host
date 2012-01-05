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
        [HttpGet]
        public ActionResult DomainChecking(string domainName, string domains)
        {
            var notavailablelist = new List<string>();
            var availablelist = new List<Domaindetails>();
            if (!Utilities.DevelopmentMode)
            {
                if (!string.IsNullOrEmpty(domainName) && !string.IsNullOrEmpty(domains))
                {
                    var du = new DomainUtilities(Utilities.ResellerId, Utilities.Resellerpassword);
                    var dms = domains.Split(',').ToList();
                    string json = du.Checkdomainavailability(domainName, dms);
                    if (!string.IsNullOrEmpty(json))
                    {
                        var ser = new JavaScriptSerializer();
                        foreach (var domain in (Dictionary<String, object>)ser.Deserialize<Object>(json))
                        {
                            foreach (var details in (Dictionary<String, object>)domain.Value)
                            {
                                if (details.Value.ToString().ToLower() == "available")
                                    availablelist.Add(new Domaindetails
                                                          {
                                                              Extension = domain.Key.Substring(domain.Key.IndexOf('.') + 1),
                                                              Name = domain.Key.Substring(0, domain.Key.IndexOf('.'))
                                                          });
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
            }
            else
            {
                availablelist.Add(new Domaindetails { Extension = "com", Name = "santhoshinet" });
                availablelist.Add(new Domaindetails { Extension = "in", Name = "santhoshinet" });
                ViewData["NotAvailableList"] = notavailablelist;
                ViewData["AvailableList"] = availablelist;
                return View();
            }
            Response.Redirect("/index.htm");
            return null;
        }

        [HttpPost]
        public ActionResult AddtoCart()
        {
            if (User.Identity.IsAuthenticated)
            {
                Session.Add("domainnamearr", Request.Form["domainnamearr[]"]);
                return Redirect("/Domain/Domain");
            }
            Session.Add("domainnamearr", Request.Form["domainnamearr[]"]);
            return Redirect("/Account/LogOnorRegister");
        }

        [HttpGet]
        public ActionResult Domain()
        {
            if (User.Identity.IsAuthenticated)
            {
                string domains;
                try
                {
                    domains = Session["domainnamearr"].ToString();
                    var selectedDomains = domains.Split(',').Select(domain => new Domaindetails
                                                                                  {
                                                                                      Extension = domain.Substring(domain.IndexOf(".") + 1),
                                                                                      Name = domain.Substring(0, domain.IndexOf("."))
                                                                                  }).ToList();
                    ViewData["domains"] = selectedDomains;
                }
                catch (Exception)
                {
                    domains = string.Empty;
                }
                if (domains != string.Empty)
                    return View();
                return RedirectToAction("Index", "Home");
            }
            return Redirect("/Login");
        }

        public ActionResult Hosting()
        {
            if (User.Identity.IsAuthenticated)
            {
                string domains;
                try
                {
                    domains = Session["domainnamearr"].ToString();
                    var selectedDomains = domains.Split(',').Select(domain => new Domaindetails
                    {
                        Extension = domain.Substring(domain.IndexOf(".") + 1),
                        Name = domain.Substring(0, domain.IndexOf("."))
                    }).ToList();
                    ViewData["domains"] = selectedDomains;
                }
                catch (Exception)
                {
                    domains = string.Empty;
                }
                if (domains != string.Empty)
                    return View();
                return RedirectToAction("Index", "Home");
            }
            return Redirect("/LogOn");
        }

        public ActionResult HostingPlan()
        {
            if (User.Identity.IsAuthenticated)
            {
                string domains;
                try
                {
                    domains = Session["domainnamearr"].ToString();
                    var selectedDomains = domains.Split(',').Select(domain => new Domaindetails
                    {
                        Extension = domain.Substring(domain.IndexOf(".") + 1),
                        Name = domain.Substring(0, domain.IndexOf("."))
                    }).ToList();
                    ViewData["domains"] = selectedDomains;
                }
                catch (Exception)
                {
                    domains = string.Empty;
                }
                if (domains != string.Empty)
                    return View();
                return RedirectToAction("Index", "Home");
            }
            return Redirect("/LogOn");
        }

        public ActionResult Cart()
        {
            if (User.Identity.IsAuthenticated)
            {
                string domains;
                try
                {
                    domains = Session["domainnamearr"].ToString();
                    var selectedDomains = domains.Split(',').Select(domain => new Domaindetails
                    {
                        Extension = domain.Substring(domain.IndexOf(".") + 1),
                        Name = domain.Substring(0, domain.IndexOf("."))
                    }).ToList();
                    ViewData["domains"] = selectedDomains;
                }
                catch (Exception)
                {
                    domains = string.Empty;
                }
                if (domains != string.Empty)
                    return View();
                return RedirectToAction("Index", "Home");
            }
            return Redirect("/LogOn");
        }
    }
}