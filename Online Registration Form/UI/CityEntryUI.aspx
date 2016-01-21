<%@ Page Title="CountryEntryUI Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="CityEntryUI.aspx.cs" Inherits="CountryCityManagementWebApp.CityEntryUI" ValidateRequest="false" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 142px;
        }
        .auto-style5 {
            width: 142px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
    </style>
    
    <link href="../Style/StyleSheet.css" rel="stylesheet" />
    <script src="tinymce/tinymce.min.js" type="text/javascript"></script>
<script type="text/javascript">
    tinymce.init({
        selector: ".Editor",
        theme: "modern",
        plugins: ["lists link image charmap print preview hr anchor pagebreak"],
    });
</script>
    
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="City Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="cityNameTextBox" runat="server" Width="205px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cityNameTextBox" ErrorMessage="Please Enter City Name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="About"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="cityAboutTextBox" class="Editor" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="No of Dwellers"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="noOfDwellersTextBox" runat="server" Width="205px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="noOfDwellersTextBox" ErrorMessage="Please Enter No of Dwellers" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Location"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="cityLocationTextBox" runat="server" Width="205px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cityLocationTextBox" ErrorMessage="Please Enter City Location" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label5" runat="server" Text="Weather"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="cityWeatherTextBox" runat="server" Width="204px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter City Weather" ForeColor="#FF3300" ControlToValidate="cityWeatherTextBox"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Country"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="countryDropDownList" runat="server" Height="25px" Width="205px">
                    </asp:DropDownList>
                &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="countryDropDownList" ErrorMessage="Please select country" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="saveButton" runat="server" Text="Save" Width="66px" OnClick="saveButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="cancelButton" runat="server" Text="Cancel" Width="66px" OnClick="cancelButton_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="showMessageLable" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="cityGridView" runat="server" AllowPaging="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" PageSize="3" OnPageIndexChanging="OnPageIndexChanging" OnRowDataBound="GridView1_RowDataBound" Height="185px" Width="922px">
            
             <Columns>
                <asp:TemplateField HeaderText="Serial No">
                    <ItemTemplate>
                       <asp:Label ID="lblSerial" runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="City Name">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Eval("CityName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="No of Dwellers">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Eval("NoOfDwellers") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                  <asp:TemplateField HeaderText="Country Name">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Eval("CountryName") %>'></asp:Label>
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
    
</asp:Content>
