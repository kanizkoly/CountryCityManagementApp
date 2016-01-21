using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CountryCityManagementWebApp.Models
{
    public class ViewCountry
    {

        public string CountryName { get; set; }
        public string CountryAbout { get; set; }
        public int NoOfCity { get; set; }
        public string NoOfCityDwellers { get; set; }
        public int TotalNoOfCityDwellers { get; set; }

        public ViewCountry(string countryName, string countryAbout, int noOfCity, string noOfCityDwellers)
        {
            CountryName = countryName;
            CountryAbout = countryAbout;
            NoOfCity = noOfCity;
            NoOfCityDwellers = noOfCityDwellers;

        }
        public ViewCountry()
        {

        }
    }
}