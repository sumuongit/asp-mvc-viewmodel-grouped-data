using System.Web;
using System.Web.Mvc;

namespace Asp_Mvc_Razor_Grouped_Data
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
