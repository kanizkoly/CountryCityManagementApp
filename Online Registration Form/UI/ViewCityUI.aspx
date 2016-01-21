<%@ Page Title="CountryEntryUI Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="ViewCityUI.aspx.cs" Inherits="CountryCityManagementWebApp.ViewCityUI" ValidateRequest="false" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
   
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 156px;
        }

    </style>
    
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:RadioButton ID="cityRadioButton" runat="server" GroupName="RadioButton" Text="City Name" />
                </td>
                <td>
                    <asp:TextBox ID="searchTextBox" runat="server" Width="194px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:RadioButton ID="countryRadioButton" runat="server" GroupName="RadioButton" Text="Country" />
                </td>
                <td>
                    <asp:DropDownList ID="countryDropDownList" runat="server" Height="25px" Width="199px">
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="searchButton" runat="server" Text="Search" Width="73px" OnClick="searchButton_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="viewCitiesGridView" runat="server" AllowPaging="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" PageSize="3" OnPageIndexChanging="OnPageIndexChanging" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound" Height="185px" Width="922px">
           
             <Columns>
                <asp:TemplateField HeaderText="Serial No">
                    <ItemTemplate>
                        <asp:Label ID="lblSerial" runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="City">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Eval("CityName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="About">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Eval("CityAbout") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                  <asp:TemplateField HeaderText="No Of Dwellers">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Eval("NoOfDwellers") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 
                 
                 <asp:TemplateField HeaderText="Location">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Eval("CityLocation") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 
                 
                 <asp:TemplateField HeaderText="Weather">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Eval("CityWeather") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 
                 
                 <asp:TemplateField HeaderText="Country">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Eval("CountryName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 
                 <asp:TemplateField HeaderText="About">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Eval("CountryAbout") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 
                    
            </Columns>
            
             <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>

        <br />
<br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

        <br/>
        <br/>
    <br/>
    <br/>
    <div>
        
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
    </div>
    
</asp:Content>
