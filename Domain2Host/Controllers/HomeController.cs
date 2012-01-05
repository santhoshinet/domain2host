using System.Web.Mvc;

namespace Domain2Host.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return Redirect(Url.Content("~/index.htm"));
        }
    }
}