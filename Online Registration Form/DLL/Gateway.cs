using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using CountryCityManagementWebApp.Models;

namespace CountryCityManagementWebApp.DLL
{
    public class Gateway
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["CountryCityDB"].ConnectionString;

        public Country IsExistConCountry(Country aCountry)
        {
            SqlConnection connection = new SqlConnection(connectionString);

            string query = "SELECT * FROM Country WHERE CountryName='" + aCountry.CountryName + "'";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            Country country = null;
            while (reader.Read())
            {

                string countryName = reader["CountryName"].ToString();
                string countryAbout = reader["CountryAbout"].ToString();

                country = new Country();
                country.CountryName = countryName;
                country.CountryAbout = countryAbout;

            }
            reader.Close();
            connection.Close();
            return country;

        }

        public bool AddCountry(Country country)
        {
            SqlConnection connection = new SqlConnection(connectionString);

            string quiry = "INSERT INTO Country VALUES('" + country.CountryName + "','" + country.CountryAbout + "')";
            SqlCommand command = new SqlCommand(quiry, connection);
            connection.Open();
            int rowAffectedCount = command.ExecuteNonQuery();

            if (rowAffectedCount > 0)
            {
                return true;

            }
            return false;

        }

        public List<Country> GetAllCountries()
        {
            SqlConnection connection = new SqlConnection(connectionString);

            string query = "SELECT * FROM Country ORDER BY CountryName ASC";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            List<Country> countries = new List<Country>();
            while (reader.Read())
            {
                int id = Convert.ToInt32(reader["Id"].ToString());
                string countryName = reader["CountryName"].ToString();
                string countryAbout = reader["CountryAbout"].ToString();

                Country country = new Country();
                country.CountryID = id;
                country.CountryName = countryName;
                country.CountryAbout = countryAbout;

                countries.Add(country);
            }
            reader.Close();
            connection.Close();
            return countries;
        }



        public bool AddCity(City city)
        {
            SqlConnection connection = new SqlConnection(connectionString);

            string quiry = "INSERT INTO City VALUES('" + city.CityName + "','" + city.CityAbout + "','" + city.NoOfDwellers + "','" + city.CityLocation + "','" + city.CityWeather + "','" + city.CountryID + "')";
            SqlCommand command = new SqlCommand(quiry, connection);
            connection.Open();
            int rowAffectedCount = command.ExecuteNonQuery();

            if (rowAffectedCount > 0)
            {
                return true;

            }
            return false;
        }

        public City IsExistCity(City aCity)
        {
            SqlConnection connection = new SqlConnection(connectionString);

            string query = "SELECT * FROM City WHERE CityName='" + aCity.CityName + "'";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            City city = null;
            while (reader.Read())
            {

                string cityName = reader["CityName"].ToString();
                string cityAbout = reader["CityAbout"].ToString();
                int noOfDwellers = Convert.ToInt32(reader["NoOfDwellers"].ToString());
                string cityLocation = reader["CityLocation"].ToString();
                string cityWeather = reader["CityWeather"].ToString();

                city = new City(cityName, cityAbout, noOfDwellers, cityLocation, cityWeather);

            }
            reader.Close();
            connection.Close();
            return city;

        }

        public List<City> GetAllCities()
        {
            SqlConnection connection = new SqlConnection(connectionString);

            string query = "SELECT * FROM CityView ORDER BY CityName ASC";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            List<City> cities = new List<City>();
            while (reader.Read())
            {
                //int countryID = Convert.ToInt32(reader["CountryID"].ToString());
                //string cityAbout = reader["CityAbout"].ToString();
                //string cityLocation = reader["CityLocation"].ToString();
                // string cityWeather = reader["CityWeather"].ToString();

                string cityName = reader["CityName"].ToString();
                int noOfDwellers = Convert.ToInt32(reader["NoOfDwellers"].ToString());
                string countryName = reader["CountryName"].ToString();

                City city = new City();
                city.CityName = cityName;
                city.NoOfDwellers = noOfDwellers;
                city.CountryName = countryName;
                cities.Add(city);
            }
            reader.Close();
            connection.Close();
            return cities;
        }


        // search City

        public List<ViewCity> SearchCity()
        {
            SqlConnection connection = new SqlConnection(connectionString);

            string query = "SELECT * FROM ViewCities";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            List<ViewCity> cityList = new List<ViewCity>();
            while (reader.Read())
            {
                string cityName = reader["CityName"].ToString();
                string cityAbout = reader["CityAbout"].ToString();
                int noOfDwellers = Convert.ToInt32(reader["NoOfDwellers"].ToString());
                string cityLocation = reader["CityLocation"].ToString();
                string cityWeather = reader["CityWeather"].ToString();
                string countryName = reader["CountryName"].ToString();
                string countryAbout = reader["CountryAbout"].ToString();

                ViewCity city = new ViewCity(cityName, cityAbout, noOfDwellers, cityLocation, cityWeather, countryName, countryAbout);

                cityList.Add(city);
            }
            reader.Close();
            connection.Close();
            return cityList;
        }
        public List<ViewCity> SearchByCity(string aCity)
        {
            SqlConnection connection = new SqlConnection(connectionString);

            string query = "SELECT * FROM ViewCities WHERE CityName LIKE '%" + aCity + "%'";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            List<ViewCity> cityList = new List<ViewCity>();
            while (reader.Read())
            {
                string cityName = reader["CityName"].ToString();
                string cityAbout = reader["CityAbout"].ToString();
                int noOfDwellers = Convert.ToInt32(reader["NoOfDwellers"].ToString());
                string cityLocation = reader["CityLocation"].ToString();
                string cityWeather = reader["CityWeather"].ToString();
                string countryName = reader["CountryName"].ToString();
                string countryAbout = reader["CountryAbout"].ToString();

                ViewCity city = new ViewCity(cityName, cityAbout, noOfDwellers, cityLocation, cityWeather, countryName, countryAbout);

                cityList.Add(city);
            }
            reader.Close();
            connection.Close();
            return cityList;
        }
        public List<ViewCity> SearchByCountry(string aCountry)
        {
            SqlConnection connection = new SqlConnection(connectionString);

            string query = "SELECT * FROM ViewCities WHERE CountryName LIKE '%" + aCountry + "%'";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            List<ViewCity> countryList = new List<ViewCity>();
            while (reader.Read())
            {
                string cityName = reader["CityName"].ToString();
                string cityAbout = reader["CityAbout"].ToString();
                int noOfDwellers = Convert.ToInt32(reader["NoOfDwellers"].ToString());
                string cityLocation = reader["CityLocation"].ToString();
                string cityWeather = reader["CityWeather"].ToString();
                string countryName = reader["CountryName"].ToString();
                string countryAbout = reader["CountryAbout"].ToString();

                ViewCity city = new ViewCity(cityName, cityAbout, noOfDwellers, cityLocation, cityWeather, countryName, countryAbout);

                countryList.Add(city);
            }
            reader.Close();
            connection.Close();
            return countryList;
        }


        // Search Country 

        public List<ViewCountry> SearchCountry()
        {
            SqlConnection connection = new SqlConnection(connectionString);

            string query = "SELECT * FROM ViewCountry";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            List<ViewCountry> countryList = new List<ViewCountry>();
            while (reader.Read())
            {
                string countryName = reader["CountryName"].ToString();
                string countryAbout = reader["CountryAbout"].ToString();
                int noOfCity = Convert.ToInt32(reader["NoOfCity"].ToString());
                string noOfCityDwellers = reader["NoOfCityDwellers"].ToString();

                ViewCountry country = new ViewCountry(countryName, countryAbout, noOfCity, noOfCityDwellers);

                countryList.Add(country);
            }
            reader.Close();
            connection.Close();
            return countryList;
        }


        public List<ViewCountry> SearchACountry(string aCountry)
        {
            SqlConnection connection = new SqlConnection(connectionString);

            string query = "SELECT * FROM ViewCountry WHERE CountryName LIKE '%" + aCountry + "%'";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            List<ViewCountry> countryList = new List<ViewCountry>();
            while (reader.Read())
            {
                string countryName = reader["CountryName"].ToString();
                string countryAbout = reader["CountryAbout"].ToString();
                int noOfCity = Convert.ToInt32(reader["NoOfCity"].ToString());
                string noOfCityDwellers = reader["NoOfCityDwellers"].ToString();

                ViewCountry country = new ViewCountry(countryName, countryAbout, noOfCity, noOfCityDwellers);
                country.TotalNoOfCityDwellers = Convert.ToInt32(noOfCityDwellers);
                countryList.Add(country);
            }
            reader.Close();
            connection.Close();
            return countryList;
        }
    }
}