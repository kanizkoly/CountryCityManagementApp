<%@ Page Title="CountryEntryUI Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="CountryEntryUI.aspx.cs" Inherits="CountryCityManagementWebApp.CountryEntryUI" ValidateRequest="false" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 123px;
        }
        
      
    .auto-style3 {
        width: 123px;
        height: 26px;
    }
    .auto-style4 {
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
                <tr><td class="auto-style2"></td>
                    <td><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Country Entry</h3>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Country Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="nameTextBox" runat="server" Width="210px" Height="21px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameTextBox" ErrorMessage="Please Enter Contry Name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        About</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="aboutTextBox" class="Editor" runat="server" Width="212px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="saveButton" runat="server" OnClick="saveButton_Click" Text="Save" Width="60px" />
                        &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="cancelButton" runat="server" Text="Cancel" OnClick="cancelButton_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="showMessageLable" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
        <asp:GridView ID="countryGridView" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" AllowPaging="True" PageSize="3" OnPageIndexChanging="countryGridView_PageIndexChanging" OnRowDataBound="GridView1_RowDataBound" Height="185px" Width="922px">
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    
    
</asp:Content>
