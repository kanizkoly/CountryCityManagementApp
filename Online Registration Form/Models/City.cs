using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CountryCityManagementWebApp.Models
{
    public class City
    {
        public int ID { get; set; }
        public string CityName { get; set; }
        public string CityAbout { get; set; }
        public int NoOfDwellers { get; set; }
        public string CityLocation { get; set; }
        public string CityWeather { get; set; }
        public int CountryID { get; set; }
        public string CountryName { set; get; }

        public City(string cityName, string cityAbout, int noOfDwellers, string cityLocation, string cityWeather)
        {
            CityName = cityName;
            CityAbout = cityAbout;
            NoOfDwellers = noOfDwellers;
            CityLocation = cityLocation;
            CityWeather = cityWeather;

        }

        public City()
        {

        }
    }
}