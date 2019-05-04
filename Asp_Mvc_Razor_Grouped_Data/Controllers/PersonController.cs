using Asp_Mvc_Razor_Grouped_Data.Models;
using Asp_Mvc_Razor_Grouped_Data.ViewModel;
using System.Linq;
using System.Web.Mvc;

namespace Asp_Mvc_Razor_Grouped_Data.Controllers
{
    public class PersonController : Controller
    {
        public ActionResult Index()
        {
            ContactDBEntities db = new ContactDBEntities();
            var personList = (from p in db.People
                              join c in db.Contacts
                              on p.PersonID equals c.PersonID
                              select new PersonContactViewModel
                              {
                                  Person = p,
                                  Contact = c
                              }).ToList();
            return View(personList);
        }
	}
}