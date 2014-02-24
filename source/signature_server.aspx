<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signature_server.aspx.cs" Inherits="signature_server" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Panel ID="pnlMain" runat="server">
<div style="text-align:center; margin-top:20px;">
            <asp:GridView ID="GridSIGNFile" style="margin:0px auto;" runat="server" AutoGenerateColumns="False" 
                EnableModelValidation="True" 
                onselectedindexchanging="GridSIGNFile_SelectedIndexChanging">
                <Columns>
                    <asp:BoundField DataField="fileName" HeaderText="File" />
                    <asp:CommandField HeaderText="Verify Digital Signature" SelectText="Verify" 
                        ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
        </div>
</asp:Panel>
</asp:Content>

