<%@ Page Title="Encrypt Xml Data" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="~/xml_encryption_server.aspx.cs" Inherits="xml_encryption" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .td1
        {
            width:160px;
            text-align:right;
        }
        
        .td2
        {
            width:160px;
            text-align:left;
            padding-left:20px;
        }
        
        .td3
        {
            width:160px;
            text-align:left;
        }
    </style>
    <asp:Panel ID="pnlMain" runat="server">
        <div>
            <table border="0" style="border-collapse:collapse; margin:0px auto;">
            <tr>
                <td colspan="3" align="center" style="height:30px;">
                    <b>Credit Card Info</b>
                </td>
            </tr>
            <tr>
                <td class="td1">
                    <b>Card Number :</b>
                </td>
                <td class="td2">
                    <asp:Label ID="lblNumber" runat="server"></asp:Label>
                </td>
                <td class="td3">
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="td1">
                    <b>Name on Card :</b>
                </td>
                <td class="td2">
                    <asp:Label ID="lblName" runat="server"></asp:Label>
                </td>
                <td class="td3">
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="td1">
                    <b>Expiry Date :</b>
                </td>
                <td class="td2">
                    <asp:Label ID="lblDate" runat="server"></asp:Label>
                </td>
                <td class="td3">
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="td1">
                    <b>CVV2/CVC2 Number :</b>
                </td>
                <td class="td2">
                    <asp:Label ID="lblCVC" runat="server"></asp:Label>
                </td>
                <td class="td3">
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="td1">
                    
                </td>
                <td class="td2">
                    <asp:Button ID="btnClear" runat="server" Height="21px" 
                        Style="font-weight: 700" Text="Reset"
                        Width="58px" OnClick="btnClear_Click" />
                </td>
                <td class="td3">
                    
                </td>
            </tr>
        </table>
        </div>
        <hr />
        <div style="text-align:center; margin-top:20px;">
            <asp:GridView ID="GridXMLFile" style="margin:0px auto;" runat="server" AutoGenerateColumns="False" 
                EnableModelValidation="True" 
                onselectedindexchanging="GridXMLFile_SelectedIndexChanging">
                <Columns>
                    <asp:BoundField DataField="fileName" HeaderText="File" />
                    <asp:CommandField HeaderText="View" SelectText="View" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </asp:Panel>
</asp:Content>