<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="contact_us.aspx.cs" Inherits="Default10" Title="Contact Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<h2 style="margin-left:10px;">Contact us</h2>
    <table style="width: 500px; margin:0px auto;">
        <tr>
            <td style="text-align: center;">
                <asp:Label ID="Label1" runat="server" Style="font-weight: 700; text-align: center"
                    Text="1325 Howard Ave # 312 Burlingame CA 94010 USA"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: center;">
                <asp:Label ID="Label2" runat="server" Style="font-weight: 700" Text="Phone No:(000)10101010"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: center;">
                <asp:Label ID="Label3" runat="server" Style="font-weight: 700" Text="Email:abc@Yahoo.co.in"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
