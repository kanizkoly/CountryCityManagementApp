using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CountryCityManagementWebApp.Models
{
    public class Country
    {
        public int CountryID { get; set; }
        public string CountryName { get; set; }
        public string CountryAbout { get; set; }

        public Country()
        {

        }

        public Country(string countryName, string countryAbout)
        {
            CountryName = countryName;
            CountryAbout = countryAbout;
        }
    }
}