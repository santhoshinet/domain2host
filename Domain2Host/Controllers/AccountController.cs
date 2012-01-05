using System;
using System.Web.Mvc;
using System.Web.Routing;
using Domain2Host.Models;
using ResellerClubAPI;

namespace Domain2Host.Controllers
{
    public class AccountController : Controller
    {
        public IFormsAuthenticationService FormsService { get; set; }

        protected override void Initialize(RequestContext requestContext)
        {
            if (FormsService == null) { FormsService = new FormsAuthenticationService(); }
            base.Initialize(requestContext);
        }

        [HttpGet]
        public ActionResult LogOn()
        {
            return View();
        }

        [HttpPost]
        public ActionResult LogOn(LogOnModel model, string returnUrl)
        {
            if (ModelState.IsValid)
            {
                if (!Utilities.DevelopmentMode)
                {
                    var du = new DomainUtilities(Utilities.ResellerId, Utilities.Resellerpassword);
                    var result = du.LogIn(model.Email, model.Password, DomainUtilities.GetPublicIp());
                    if (result != string.Empty)
                    {
                        FormsService.SignIn(model.Email, model.RememberMe);
                        if (Url.IsLocalUrl(returnUrl))
                        {
                            return Redirect(returnUrl);
                        }
                        else
                        {
                            string selectedDomains;
                            try
                            {
                                selectedDomains = Session["domainnamearr"].ToString();
                            }
                            catch (Exception)
                            {
                                selectedDomains = string.Empty;
                            }
                            if(selectedDomains == string.Empty)
                                return RedirectToAction("Index", "Home");
                            else
                                return Redirect("/Domain/Domain");
                        }
                        /*else
                        {
                            ModelState.AddModelError("", "The user name or password provided is incorrect.");
                        } */
                    }
                    else
                    {
                        ModelState.AddModelError("Email", "The user name or password provided is incorrect.");
                    }
                }
                else
                {
                    FormsService.SignIn(model.Email, model.RememberMe);
                    return RedirectToAction("Index", "Home");
                }
            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        public ActionResult LogOff()
        {
            FormsService.SignOut();
            return RedirectToAction("Index", "Home");
        }

        public ActionResult Register()
        {
            ViewModel.PasswordLength = 6;
            return View();
        }

        [HttpPost]
        public ActionResult Register(RegisterModel model)
        {
            if (ModelState.IsValid)
            {
                var du = new DomainUtilities(Utilities.ResellerId, Utilities.Resellerpassword);
                var result = du.SignUp(model.Email, model.Password, model.Name, model.Company, model.Address1,
                                       model.Address2, model.City, model.State, model.Country, model.Zip, model.PhoneCc,
                                       model.Mobile);
                if(!string.IsNullOrEmpty(result))
                {
                    FormsService.SignIn(model.Email, true/* createPersistentCookie */);
                    string selectedDomains;
                    try
                    {
                        selectedDomains = Session["domainnamearr"].ToString();
                    }
                    catch (Exception)
                    {
                        selectedDomains = string.Empty;
                    }
                    if (selectedDomains == string.Empty)
                        return RedirectToAction("Index", "Home");
                    return Redirect("/Domain/Domain");
                }
                ModelState.AddModelError("Custom", "Unable to process the registration, change username and try again.");
            }
            // If we got this far, something failed, redisplay form
            ViewModel.PasswordLength = 6;
            return View(model);
        }

        public ActionResult LogOnorRegister()
        {
            return View();
        }
    }
}