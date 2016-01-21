using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CountryCityManagementWebApp.Models
{
    public class ViewCity
    {
        public string CityName { get; set; }
        public string CityAbout { get; set; }
        public int NoOfDwellers { get; set; }
        public string CityLocation { get; set; }
        public string CityWeather { get; set; }
        public string CountryName { get; set; }
        public string CountryAbout { get; set; }

        public ViewCity()
        {

        }
        public ViewCity(string cityName, string cityAbout, int noOfDwellers, string cityLocation, string cityWeather, string countryName, string countryAbout)
        {
            CityName = cityName;
            CityAbout = cityAbout;
            NoOfDwellers = noOfDwellers;
            CityLocation = cityLocation;
            CityWeather = cityWeather;
            CountryName = countryName;
            CountryAbout = countryAbout;
        }
    }
}