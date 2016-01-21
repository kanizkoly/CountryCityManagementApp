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
    public partial class CountryEntryUI : System.Web.UI.Page
    {
        Manager manager = new Manager();

        protected void Page_Load(object sender, EventArgs e)
        {


            LoadAllCountries();


        }

        private void LoadAllCountries()
        {
            List<Country> countries = manager.GetAllCountries();
            LoadCountries(countries);
        }

        private void LoadCountries(List<Country> countries)
        {
            countryGridView.DataSource = countries;
            countryGridView.DataBind();
        }


        protected void saveButton_Click(object sender, EventArgs e)
        {
            Country country = new Country(nameTextBox.Text, aboutTextBox.Text);
            showMessageLable.Text = manager.AddCountry(country);
            LoadAllCountries();
        }

        protected void countryGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            // 
            countryGridView.PageIndex = e.NewPageIndex;
            // load all contries 
            LoadAllCountries();


        }

        protected void cancelButton_Click(object sender, EventArgs e)
        {
           
            nameTextBox.Text= String.Empty;
            aboutTextBox.Text = String.Empty;
        }


        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblSerial = (Label)e.Row.FindControl("lblSerial");
                lblSerial.Text = ((countryGridView.PageIndex * countryGridView.PageSize) + e.Row.RowIndex + 1).ToString();
            }
        }

        protected void homeButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void cityEntryButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("CityEntryUI.aspx");
        }
    }
}
