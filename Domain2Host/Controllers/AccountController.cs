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

        // **************************************
        // URL: /Account/LogOn
        // **************************************

        public ActionResult LogOn()
        {
            return View();
        }

        [HttpPost]
        public ActionResult LogOn(LogOnModel model, string returnUrl)
        {
            if (ModelState.IsValid)
            {
                var du = new DomainUtilities(Utilities.ResellerId, Utilities.Resellerpassword);
                var result = du.SearchUser(model.Email);
                FormsService.SignIn(model.Email, model.RememberMe);
                if (Url.IsLocalUrl(returnUrl))
                {
                    return Redirect(returnUrl);
                }
                else
                {
                    return RedirectToAction("Index", "Home");
                }
                /*else
                {
                    ModelState.AddModelError("", "The user name or password provided is incorrect.");
                } */
            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        // **************************************
        // URL: /Account/LogOff
        // **************************************

        public ActionResult LogOff()
        {
            FormsService.SignOut();

            return RedirectToAction("Index", "Home");
        }

        // **************************************
        // URL: /Account/Register
        // **************************************

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
                FormsService.SignIn(model.Email, false /* createPersistentCookie */);
                return RedirectToAction("Index", "Home");
                //    ModelState.AddModelError("", AccountValidation.ErrorCodeToString(createStatus));
            }
            // If we got this far, something failed, redisplay form
            ViewModel.PasswordLength = 6;
            return View(model);
        }

        // **************************************
        // URL: /Account/ChangePassword
        // **************************************

        [Authorize]
        public ActionResult ChangePassword()
        {
            ViewModel.PasswordLength = 6;
            return View();
        }

        [Authorize]
        [HttpPost]
        public ActionResult ChangePassword(ChangePasswordModel model)
        {
            if (ModelState.IsValid)
            {
                return RedirectToAction("ChangePasswordSuccess");
                //    ModelState.AddModelError("", "The current password is incorrect or the new password is invalid.");
            }
            // If we got this far, something failed, redisplay form
            ViewModel.PasswordLength = 6;
            return View(model);
        }

        // **************************************
        // URL: /Account/ChangePasswordSuccess
        // **************************************

        public ActionResult ChangePasswordSuccess()
        {
            return View();
        }
    }
}