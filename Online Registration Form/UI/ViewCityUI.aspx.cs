using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CountryCityManagementWebApp.BLL;
using CountryCityManagementWebApp.Models;

namespace CountryCityManagementWebApp
{
    public partial class ViewCityUI : System.Web.UI.Page
    {
        private Manager manager = new Manager();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                countryDropDownList.DataSource = manager.GetAllCountries();
                countryDropDownList.DataTextField = "CountryName";
                //countryDropDownList.DataValueField = "CountryID";
                countryDropDownList.DataBind();
                countryDropDownList.Items.Insert(0, new ListItem("---Select Country---"));
            }

            LoadAllCitiesCountries();

        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            viewCitiesGridView.PageIndex = e.NewPageIndex;
            LoadAllCitiesCountries();
        }

        ViewCity viewCities = new ViewCity();
        protected void searchButton_Click(object sender, EventArgs e)
        {
            string countryName = countryDropDownList.SelectedValue;


            if (cityRadioButton.Checked)
            {
                List<ViewCity> citieses = manager.SearchByCity(searchTextBox.Text);
                LoadCities(citieses);
            }

            else if (countryRadioButton.Checked)
            {
                List<ViewCity> countries = manager.SearchByCountry(countryName);
                LoadCities(countries);
            }
            else
            {

            }

        }

        private void LoadAllCitiesCountries()
        {
            List<ViewCity> cities = manager.SearchCity();
            LoadCities(cities);
        }

        private void LoadCities(List<ViewCity> cities)
        {
            viewCitiesGridView.DataSource = cities;
            viewCitiesGridView.DataBind();
        }

        protected void viewCitiesGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void homeButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblSerial = (Label)e.Row.FindControl("lblSerial");
                lblSerial.Text = ((viewCitiesGridView.PageIndex * viewCitiesGridView.PageSize) + e.Row.RowIndex + 1).ToString();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCountryUI.aspx");
        }

        protected void homeButton_Click1(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}
