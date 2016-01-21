using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace CountryCityManagementWebApp
{
    public partial class _Default : System.Web.UI.Page
    {
        

        protected void DropDownListDivision_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownListBirthDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxContactPoliceStation_TextChanged(object sender, EventArgs e)
        {
                    }

        protected void countryEntryButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("CountryEntryUI.aspx");
        }

        protected void cityEntryButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("CityEntryUI.aspx");
        }

        protected void viewCityButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCityUI.aspx");
        }

        protected void viewCountyButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCountryUI.aspx");
        }
                          
    }
}
