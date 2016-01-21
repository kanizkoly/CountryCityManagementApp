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
    public partial class ViewCountryUI : System.Web.UI.Page
    {
        Manager manager = new Manager();
        ViewCountry viewCountry = new ViewCountry();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadAllCountries();
        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            viewCountryGridView.PageIndex = e.NewPageIndex;
            LoadAllCountries();

        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            List<ViewCountry> countries = manager.SearchACountry(searchTextBox.Text);
            LoadCountires(countries);

        }

        private void LoadAllCountries()
        {
            List<ViewCountry> counties = manager.SearchCountry();
            LoadCountires(counties);
        }

        private void LoadCountires(List<ViewCountry> counties)
        {
            viewCountryGridView.DataSource = counties;
            viewCountryGridView.DataBind();
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
                lblSerial.Text = ((viewCountryGridView.PageIndex * viewCountryGridView.PageSize) + e.Row.RowIndex + 1).ToString();
            }
        }

        protected void homeButton_Click1(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

    }
}
