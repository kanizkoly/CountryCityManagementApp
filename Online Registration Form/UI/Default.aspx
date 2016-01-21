<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="CountryCityManagementWebApp._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
        <style type="text/css">

        </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
   
    <br/>
    
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="countryEntryButton" runat="server" Height="41px" OnClick="countryEntryButton_Click" style="margin-left: 0px" Text="Country Entry" Width="219px" Font-Bold="True" />
    </p>
    <br/>
    <p>
        <asp:Button ID="cityEntryButton" runat="server" Height="41px" OnClick="cityEntryButton_Click" Text="City Entry" Width="219px" Font-Bold="True" />
    </p>
    <br/>
    <p>
        <asp:Button ID="viewCityButton" runat="server" Height="41px" OnClick="viewCityButton_Click" Text="View City" Width="219px" Font-Bold="True" />
    </p>
    <br/>
    <p>
        <asp:Button ID="viewCountyButton" runat="server" Height="41px" OnClick="viewCountyButton_Click" Text="View Country" Width="219px" Font-Bold="True" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    
    <br/>
     <br/>
    <br/> 
    <br/>
    <br/>
     <br/>
    
     
</asp:Content>
