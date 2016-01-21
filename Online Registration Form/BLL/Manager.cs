using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CountryCityManagementWebApp.DLL;
using CountryCityManagementWebApp.Models;

namespace CountryCityManagementWebApp.BLL
{
    public class Manager
    {
        Gateway gateway = new Gateway();

        public string AddCountry(Country country)
        {
            Country aCountry = gateway.IsExistConCountry(country);

            if (aCountry == null)
            {
                gateway.AddCountry(country);
                return "Country added successfully.";
            }

            else if (aCountry != null)
            {
                return "Exist country.";
            }
            else
            {
                return "No data has been Added.";
            }

        }

        public List<Country> GetAllCountries()
        {
            return gateway.GetAllCountries();
        }

        public string AddCity(City city)
        {
            City aCity = gateway.IsExistCity(city);

            if (aCity == null)
            {
                gateway.AddCity(city);
                return "City added successfully.";
            }

            else if (aCity != null)
            {
                return "Exist City.";
            }
            else
            {
                return "No data has been Added.";
            }
        }

        public List<City> GetAllCities()
        {
            return gateway.GetAllCities();
        }


        // view city


        public List<ViewCity> SearchCity()
        {
            return gateway.SearchCity();
        }

        public List<ViewCity> SearchByCity(string aCity)
        {
            return gateway.SearchByCity(aCity);
        }

        public List<ViewCity> SearchByCountry(string aCountry)
        {
            return gateway.SearchByCountry(aCountry);
        }



        // view country

        public List<ViewCountry> SearchCountry()
        {
            return gateway.SearchCountry();
        }

        public List<ViewCountry> SearchACountry(string aCountry)
        {
            return gateway.SearchACountry(aCountry);
        }
    }
}