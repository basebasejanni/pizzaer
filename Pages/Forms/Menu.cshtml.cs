using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Pizza_Projektet___cafe_luccas.Pages.Forms
{
    public class MenuModel : PageModel
    {
        //properties
        //properties for topping
        public string Topping { get; set; }
        //properties for name
        public string Name { get; set; }

        //properties for spice
        public string Spice { get; set; }
        public void OnGet()
        {
        }
    }
}
