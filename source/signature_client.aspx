<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" ValidateRequest="false" AutoEventWireup="true" CodeFile="signature_client.aspx.cs" Inherits="signature_client" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="pnlMain" runat="server">
    <div style="text-align:center">
        <asp:TextBox ID="txtData" runat="server" TextMode="MultiLine" Height="253px" 
            Width="474px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtData" Display="Dynamic" ErrorMessage="Enter Data"></asp:RequiredFieldValidator>
    </div>
    <div style="text-align:center">
        <asp:Button ID="btnSubmit" runat="server" Text="Submit With Digital Signature" 
            onclick="btnSubmit_Click" />
    </div>
    </asp:Panel>
</asp:Content>

