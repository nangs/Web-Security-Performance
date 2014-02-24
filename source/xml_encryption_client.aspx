<%@ Page Title="Encrypt Xml Data" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="xml_encryption_client.aspx.cs" Inherits="xml_encryption" %>

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
                    <asp:TextBox ID="txtNumber" runat="server" Height="18px" Width="145px"></asp:TextBox>
                </td>
                <td class="td3">
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtNumber" ErrorMessage="Enter Card Number"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td class="td1">
                    <b>Name on Card :</b>
                </td>
                <td class="td2">
                    <asp:TextBox ID="txtName" runat="server" Height="17px" Width="145px"></asp:TextBox>
                </td>
                <td class="td3">
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtName" ErrorMessage="Enter Name on Card"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td class="td1">
                    <b>Expiry Date :</b>
                </td>
                <td class="td2">
                    <asp:DropDownList ID="ddlMonth" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlYear" runat="server">
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem>2017</asp:ListItem>
                        <asp:ListItem>2018</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="td3">
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="td1">
                    <b>CVV2/CVC2 Number :</b>
                </td>
                <td class="td2">
                    <asp:TextBox ID="txtCVV" runat="server" Height="17px" Width="56px"></asp:TextBox>
                </td>
                <td class="td3">
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtCVV" ErrorMessage="Enter CVV2/CVC2"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td class="td1">
                    
                </td>
                <td class="td2">
                    <asp:Button ID="btnSubmit" runat="server" Height="21px" 
                        Style="font-weight: 700" Text="Submit"
                        Width="58px" OnClick="btnSubmit_Click" />
                </td>
                <td class="td3">
                    
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>