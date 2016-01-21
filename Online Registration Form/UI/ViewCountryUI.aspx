<%@ Page Title="CountryEntryUI Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="ViewCountryUI.aspx.cs" Inherits="CountryCityManagementWebApp.ViewCountryUI" ValidateRequest="false" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
   
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
    
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
   
    <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Country Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="searchTextBox" runat="server" Width="181px" Height="22px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="searchButton" runat="server" Text="Search" Width="94px" OnClick="searchButton_Click" Height="28px" />
                </td>
            </tr>
        </table>
    <div>
    <br/>
        <br />
        <br />
    <br/>
        <br/>
    </div>
        <asp:GridView ID="viewCountryGridView" runat="server" AllowPaging="True" PageSize="3" OnPageIndexChanging="OnPageIndexChanging" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound" Width="922px" Height="185px">
            
            <Columns>
                <asp:TemplateField HeaderText="Serial No">
                    <ItemTemplate>
                       <asp:Label ID="lblSerial" runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Country Name">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Eval("CountryName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Country About">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Eval("CountryAbout") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                  <asp:TemplateField HeaderText="No Of City">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Eval("NoOfCity") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 
                 
                 <asp:TemplateField HeaderText="No Of City Dwellers">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Eval("NoOfCityDwellers") %>'></asp:Label>
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
    <br />
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
     <br/>
    <br/>
    <div>
    </div>
</asp:Content>
